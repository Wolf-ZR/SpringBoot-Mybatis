package rui.zhang.home.dao;

import org.junit.Test;
import rui.zhang.home.model.User;

import java.util.ArrayList;
import java.util.List;

public class UserDaoTest {
    UserDao userDao=new UserDao();
    @Test
    public void insertUsers(){
        List<User> users=new ArrayList<>();
        users.add(new User(1,"张瑞","123456"));
        users.add(new User(1,"张瑞","123456"));
        users.add(new User(1,"张瑞","123456"));
        users.add(new User(1,"张瑞","123456"));
        users.add(new User(1,"张瑞","123456"));
        userDao.insertBlogMany(users);
    }
    @Test
    public void insertUser(){

       userDao.insertUser(new User(1,"张瑞","123456"));

    }
    @Test
    public void selectUserByname(){
        List<User> users=userDao.selectUserByName("张瑞");
        System.out.println(users);
    }
    @Test
    public void deleteUserByName(){
        int i=userDao.deleteUser("张瑞");
        System.out.println(i);
    }
}
