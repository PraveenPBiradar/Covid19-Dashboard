package com.covidapp.data.api.exception;

/**
 * UserNotFoundException thrown when the user not available in database(invalid credentils)
 */
public class UserNotFoundException extends RuntimeException {

    public UserNotFoundException(String msg) {
        super(msg);
    }
}
