/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import controller.SheetMusicList;
import entities.Sheetmusic;
import entities.User;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import tools.Ranking;

/**
 *
 * @author alexlin
 */
@Stateless
public class SessionBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    @PersistenceUnit
    EntityManagerFactory emf;

    public static User u = new User();

    public boolean insertSheetMusic(Sheetmusic sm) throws IOException {
        boolean status = false;
        
        EntityManager em = emf.createEntityManager();
        em.persist(sm);
        em.close();
        status = true;
        return status;
    }

    public List<Sheetmusic> selectAllSheetMusic() {
        return emf.createEntityManager().createNamedQuery("Sheetmusic.findAll").getResultList();
    }

    public List<Sheetmusic> selectUserSheets(User u) {
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT s FROM Sheetmusic s WHERE s.owner.username = :username");
        query.setParameter("username", u.getUsername());
        List<Sheetmusic> userSheets = (List<Sheetmusic>) query.getResultList();
        return userSheets;
    }
    
    public List<Sheetmusic> selectFavInstrumentSheets(User u){
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT s FROM Sheetmusic s WHERE s.instrument = :instrument");
        query.setParameter("instrument", u.getFavourite());
        List<Sheetmusic> favInstSheets = (List<Sheetmusic>) query.getResultList();
        return favInstSheets;
    }
    
    public Sheetmusic getSheetByID(String id){
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT s FROM Sheetmusic s WHERE s.idsheetmusic = :id");
        query.setParameter("id", Integer.parseInt(id));
        Sheetmusic sm = (Sheetmusic) query.getResultList().stream().findFirst().orElse(null);
        return sm;
    }
    
    public boolean updateSheet(String id, String instrument, String difficulty, String printed){
        EntityManager em = emf.createEntityManager();
        Query update = em.createQuery("UPDATE Sheetmusic s SET s.instrument = :instrument, "
                + "s.printed = :printed, "
                + "s.difficulty = :difficulty "
                + "WHERE s.idsheetmusic = :id");
        update.setParameter("id", Integer.parseInt(id));
        update.setParameter("instrument", instrument);
        if (printed.equals("1")) {
            update.setParameter("printed", true);
        } else {
            update.setParameter("printed", false);
        }
        update.setParameter("difficulty", difficulty);
        update.executeUpdate();
        return true;
    }
    
    public List<Ranking> getRanking(){
        EntityManager em = emf.createEntityManager();
        Query query = em.createNativeQuery("SELECT owner, COUNT(owner) as number FROM sheetmusic GROUP BY owner", "Ranking");
        //Query query = em.createQuery("SELECT s FROM Sheetmusic s");
        List<Ranking> ranking = query.getResultList();
//        List<String> usernames = new ArrayList<>();
//        List<Ranking> ranking = new ArrayList<>();
        
//        for(int i = 0; i < sheetList.size(); i++){
//            usernames.add(sheetList.get(i).getOwner().getUsername());
//        }
//        sheetList.forEach(System.out::println);
//        
//        
//        ranking.forEach(System.out::println);
        return ranking;
    }
    
    public String getFavInstrument(User u){
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT u FROM User u WHERE u.username = :username AND u.password = :password ");
        query.setParameter("username", u.getUsername());
        query.setParameter("password", u.getPassword());
        User user = (User) query.getResultList().stream().findFirst().orElse(null);
        String favInstrument = user.getFavourite();
        return favInstrument;
    }
    
    public boolean deleteSheetById(String id){
        EntityManager em = emf.createEntityManager();
        Query delete = em.createQuery("DELETE FROM Sheetmusic s WHERE s.idsheetmusic = :id");
        delete.setParameter("id", Integer.parseInt(id));
        delete.executeUpdate();
        return true;
    }

    public boolean checkLogin(String username, String password) {
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT u FROM User u WHERE u.username = :username AND u.password = :password");
        query.setParameter("username", username);
        query.setParameter("password", password);
        
        List<User> users = emf.createEntityManager().createNamedQuery("User.findAll").getResultList();
        boolean statusLogin = false;
        u.setUsername(username);
        u.setPassword(password);
        for (User user : users) {
            if (u.getUsername().equals(user.getUsername()) && u.getPassword().equals(user.getPassword())) {
                statusLogin = true;
            }
        }
        return statusLogin;
    }

    public boolean checkIfLogged() {
        boolean status = false;
        if (u.getUsername().isEmpty() && u.getPassword().isEmpty()) {
            status = true;
        }
        return status;
    }

    public boolean checkUsername(String username) {
        boolean check = false;
        List<User> users = emf.createEntityManager().createNamedQuery("User.findAll").getResultList();
        for (User user : users) {
            if (username.equals(user.getUsername())) {
                check = true;
            }
        }
        return check;
    }

    public boolean insertUser(User u) throws IOException {
        boolean status = false;
        EntityManager em = emf.createEntityManager();
        // Comprobamos si existe ya un cocinero
        User user = em.find(User.class, u.getUsername());
        if (user != null) {
            em.close();
            //throw new RestaurantException("Ya existe un cocinero con ese nombre");
        } else {
            em.persist(u);
            status = true;
            em.close();
        }

        return status;
    }

}
