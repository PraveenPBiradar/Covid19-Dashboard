package com.covidapp.data.api.service;

import com.covidapp.data.api.model.User;
import org.springframework.stereotype.Service;

/**
 * service layer for user data
 */
@Service
public interface UserService {

    public User save(User user);

    public User findUserByUsernameAndUserpwd(String userName, String password);

    int validateEmail(String email);

    int validateUserName(String name);

    int validateUserLogin(String name, String password);
}
