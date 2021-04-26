package com.covidapp.data.api.exception;

/**
 * RestApiNotFoundException thrown at the time API not available or response is timed out
 */
public class RestApiNotFoundException extends RuntimeException {

    public RestApiNotFoundException(String msg) {
        super(msg);
    }
}
