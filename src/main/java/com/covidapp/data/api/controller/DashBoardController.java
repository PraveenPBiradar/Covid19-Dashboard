package com.covidapp.data.api.controller;

import com.covidapp.data.api.model.StateData;
import com.covidapp.data.api.model.SummaryData;
import com.covidapp.data.api.model.User;
import com.covidapp.data.api.service.CovidService;
import com.covidapp.data.api.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * RestController for checking all the endpoints which results data such as coviddata(India & statewise), save and get the user objects.
 */
@RestController
@RequestMapping("/coviddata")
public class DashBoardController {

    @Autowired
    private CovidService covidService;

    @Autowired
    private UserService userService;

    /**
     * The getTotalCovidData endpoint return the total covid data for India region in the form of total cases,active cases,discharged and deaths
     */
    @GetMapping("/getTotalCovidData")
    public SummaryData getTotalCovidData() {
        return covidService.getTheTotalCovidData();
    }

    /**
     * The getTotalCovidDataStateWise endpoint return the total covid data for respective state in the form of total cases,active cases,discharged and deaths
     */
    @GetMapping("/getTotalCovidDataStateWise/{state}")
    public StateData getTotalCovidDataStateWise(@PathVariable String state) {
        return covidService.getTotalCovidDataStateWise(state);
    }

    /**
     * The getUser endpoint returns the details of the user based on the parameters passed as part of request body(username and password)
     */
    @GetMapping("/getUser/{name}/{pwd}")
    public User getUser(@PathVariable String name, @PathVariable String pwd) {
        return userService.findUserByUsernameAndUserpwd(name, pwd);
    }

    /**
     * The saveUser endpoint returns save the details of the user to database,the user object is passed part of request body
     */
    @PostMapping("/saveUser")
    public User saveUser(@RequestBody User user) {
        return userService.save(user);
    }
}
