/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

/**
 *
 * @author alexlin
 */
public class Ranking {

    private String username;
    private long number;

    public Ranking(String username, long number) {
        this.username = username;
        this.number = number;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public long getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 89 * hash + (int) (this.number ^ (this.number >>> 32));
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Ranking other = (Ranking) obj;
        if (this.number != other.number) {
            return false;
        }
        return true;
    }
    
    

    @Override
    public String toString() {
        return "Ranking{" + "username=" + username + ", number=" + number + '}';
    }
    
}
