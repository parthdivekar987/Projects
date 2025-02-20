package com.example.calllogs.ModelClass;

public class Contact {

    int users;

    String username,usernumber;

    public Contact(int users, String username, String usernumber) {
        this.users = users;
        this.username = username;
        this.usernumber = usernumber;
}

    public int getUsers() {
        return users;
    }

    public void setUsers(int users) {
        this.users = users;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsernumber() {
        return usernumber;
    }

    public void setUsernumber(String usernumber) {
        this.usernumber = usernumber;
    }
}
