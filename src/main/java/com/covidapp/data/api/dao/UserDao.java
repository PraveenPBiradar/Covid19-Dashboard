package com.covidapp.data.api.dao;

import com.covidapp.data.api.exception.UserNotFoundException;
import com.covidapp.data.api.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * dao layer for user data and extended by JpaRepository
 */
@Repository
public interface UserDao extends JpaRepository<User, Integer> {
    User findUserByUsernameAndUserpwd(String userName, String password) throws UserNotFoundException;

    @Query(value="SELECT count(*) from User where useremail=:email",nativeQuery=true)
    int countByUseremail(@Param("email") String email);

    @Query(value="SELECT count(*) from User where username=:name",nativeQuery=true)
    int countByUserName(@Param("name") String name);

    @Query(value="SELECT count(*) from User where username=:name and userpwd=:password",nativeQuery=true)
    int validateUserLogin(String name, String password);
}
