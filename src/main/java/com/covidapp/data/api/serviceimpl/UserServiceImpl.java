package com.covidapp.data.api.serviceimpl;

import com.covidapp.data.api.dao.UserDao;
import com.covidapp.data.api.model.User;
import com.covidapp.data.api.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * serviceimpl layer for user data
 */
@Repository
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User save(User user) {
        return userDao.save(user);
    }

    @Override
    public User findUserByUsernameAndUserpwd(String userName, String password) {
        return userDao.findUserByUsernameAndUserpwd(userName, password);
    }

    @Override
    public int validateEmail(String email) {
        return userDao.countByUseremail(email);
    }

    @Override
    public int validateUserName(String name) {
        return userDao.countByUserName(name);
    }

    @Override
    public int validateUserLogin(String name, String password) {
        return userDao.validateUserLogin(name,password);
    }
}
