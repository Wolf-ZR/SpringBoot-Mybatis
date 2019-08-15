package rui.zhang.home.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rui.zhang.home.dao.UserDao;
import rui.zhang.home.model.User;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserDao userDao;
    public List<User> queryUserByName(String name){
        return userDao.selectUserByName(name);
    }
    public int insertUser(User user){
       return userDao.insertUser(user);
    }

}
