package com.covidapp.data.api.controller;

import com.covidapp.data.api.exception.InvalidStateException;
import com.covidapp.data.api.exception.UserNotFoundException;
import com.covidapp.data.api.model.StateData;
import com.covidapp.data.api.model.User;
import com.covidapp.data.api.service.CovidService;
import com.covidapp.data.api.service.UserService;
import org.mockito.Mock;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import static org.mockito.Mockito.when;
import static org.mockito.MockitoAnnotations.initMocks;

public class Covid19JunitTests {

    @Mock
    private UserService userService;

    @Mock
    private CovidService covidService;

    private final String validTestUserName = "validuser";
    private final String invalidTestUserName = "invaliduser";
    private final String nullUserName = null;
    private final String INVALID_USER_NAME = "Bad Credentials";
    private final String validTestUserPassword = "validpassword";
    private final String validState = "validstate";
    private final String inValidState = "invalidstate";
    private final String INVALID_STATE_NAME = "No Such State Available";
    private final String nullState = null;
    private final int confCasesInd = 100;
    private final int confCasesFor = 100;
    private final int discharged = 100;
    private final int deaths = 100;

    @BeforeMethod
    public void setup() {
        initMocks(this);
        when(userService.findUserByUsernameAndUserpwd(validTestUserName, validTestUserPassword)).thenReturn(User.builder().username(validTestUserName).userpwd(validTestUserPassword).build());
        when(userService.findUserByUsernameAndUserpwd(invalidTestUserName, validTestUserPassword)).thenThrow(new UserNotFoundException(INVALID_USER_NAME));
        when(userService.findUserByUsernameAndUserpwd(nullUserName, validTestUserPassword)).thenThrow(new UserNotFoundException(INVALID_USER_NAME));
        when(covidService.getTotalCovidDataStateWise(validState)).thenReturn(StateData.builder().loc(validState).confirmedCasesIndian(confCasesInd).confirmedCasesForeign(confCasesFor).discharged(discharged).deaths(deaths).build());
        when(covidService.getTotalCovidDataStateWise(inValidState)).thenThrow(new InvalidStateException(INVALID_STATE_NAME));
        when(covidService.getTotalCovidDataStateWise(nullState)).thenThrow(new InvalidStateException(INVALID_STATE_NAME));
    }

    @Test(expectedExceptions = UserNotFoundException.class,
            expectedExceptionsMessageRegExp = INVALID_USER_NAME)
    public void testInvalidUser() {
        userService.findUserByUsernameAndUserpwd(invalidTestUserName, validTestUserPassword);
    }

    @Test(expectedExceptions = UserNotFoundException.class, expectedExceptionsMessageRegExp = INVALID_USER_NAME)
    public void testNullUser() {
        userService.findUserByUsernameAndUserpwd(nullUserName, validTestUserPassword);
    }

    @Test
    public void testValidUser() {
        userService.findUserByUsernameAndUserpwd(validTestUserName, validTestUserPassword);
    }

    @Test
    public void testValidState() {
        covidService.getTotalCovidDataStateWise(validState);
    }

    @Test(expectedExceptions = InvalidStateException.class, expectedExceptionsMessageRegExp = INVALID_STATE_NAME)
    public void testInValidState() {
        covidService.getTotalCovidDataStateWise(inValidState);
    }

    @Test(expectedExceptions = InvalidStateException.class, expectedExceptionsMessageRegExp = INVALID_STATE_NAME)
    public void testNullState() {
        covidService.getTotalCovidDataStateWise(nullState);
    }
}
