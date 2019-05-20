/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.SessionBean;
import entities.Sheetmusic;
import entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tools.Ranking;

/**
 *
 * @author alexlin
 */
public class SheetMusicList extends HttpServlet {

    @EJB
    SessionBean sbEjb;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String option = request.getParameter("list");
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user");
        switch (option) {
            case "All Sheets":
                List<Sheetmusic> sheets = sbEjb.selectAllSheetMusic();
                request.setAttribute("sheets", sheets);
                request.getRequestDispatcher("/ListSheetMusic.jsp").forward(request, response);
                break;
            case "Your Sheets":
                List<Sheetmusic> userSheets = sbEjb.selectUserSheets(u);
                request.setAttribute("userSheets", userSheets);
                request.getRequestDispatcher("/UserSheetList.jsp").forward(request, response);
                break;
            case "Instrument Sheets":
                List<Sheetmusic> instrumentSheets = sbEjb.selectFavInstrumentSheets(u);
                request.setAttribute("instrumentSheets", instrumentSheets);
                request.getRequestDispatcher("/InstrumentSheets.jsp").forward(request, response);
                break;
            case "Modify Sheets":
                List<Sheetmusic> userSheetsModify = sbEjb.selectUserSheets(u);
                request.setAttribute("userSheetsModify", userSheetsModify);
                request.getRequestDispatcher("/ModifySheets.jsp").forward(request, response);
                break;
            case "Ranking":
                List<Ranking> ranking = sbEjb.getRanking();
                request.setAttribute("ranking", ranking);
                request.getRequestDispatcher("/Ranking.jsp").forward(request, response);
                break;
            case "Delete Sheets":
                List<Sheetmusic> userSheetsDelete = sbEjb.selectUserSheets(u);
                request.setAttribute("userSheetsDelete", userSheetsDelete);
                request.getRequestDispatcher("/DeletePage.jsp").forward(request, response);
                break;
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
