package com.covidapp.data.api.exception;

/**
 * InvalidStateException thrown at the time of irrelevant state passed
 */
public class InvalidStateException extends RuntimeException {

    public InvalidStateException(String msg) {
        super(msg);
    }
}
