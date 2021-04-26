package com.covidapp.data.api.controller;

import com.covidapp.data.api.exception.RestApiNotFoundException;
import com.covidapp.data.api.model.StateData;
import com.covidapp.data.api.model.SummaryData;
import com.covidapp.data.api.model.User;
import com.covidapp.data.api.service.CovidService;
import com.covidapp.data.api.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

import com.covidapp.data.api.exception.UserNotFoundException;

/**
 * Controller for all the major endpoints in order to fetch the data from the REST API call and return respective web pages and AJAX responses
 */
@Controller
public class HomeController {

    @Autowired
    private CovidService covidService;

    @Autowired
    private UserService userService;

    /**
     * After successful login of the user the /home method is used to display the dashboard, it makes calls to respective REST endpoints and adds to data to model inorder to fetch them in jsp's
     *
     * @throws UserNotFoundException    exception in case User not found in Database and return error page
     * @throws RestApiNotFoundException exception in case Of No response fetched from the REST API calls and returns Rest API not reachable/No state found
     */
    @RequestMapping(value = "/home", method = {RequestMethod.GET, RequestMethod.POST})
    public String home(Model model, HttpServletRequest request, HttpServletResponse response) {
        String userName = request.getParameter("name");
        String password = request.getParameter("pwd");
        SummaryData summaryData = covidService.getTheTotalCovidData();
        StateData[] allStateData = covidService.getAllStateData();
        User user = userService.findUserByUsernameAndUserpwd(userName, password);
        if (user != null) {
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("userName", userName);
            httpSession.setAttribute("email", user.getUseremail());
        } else {
            return "redirect:/loginError";
        }
        model.addAttribute("totalconfirmed", summaryData.getConfirmedCasesIndian());
        model.addAttribute("totalcasesindia", summaryData.getTotal());
        model.addAttribute("totaldeaths", summaryData.getDeaths());
        model.addAttribute("totaldischarged", summaryData.getDischarged());
        model.addAttribute("allStateData", allStateData);
        return "dashboard";
    }

    /**
     * This method is used for registering new User with his details such as name,password and email
     * If User saved successfully to Database returns the response in the form of successful registration.
     */
    @RequestMapping(value = "/userreg", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    String userReg(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Model model) {
        String email = httpServletRequest.getParameter("email");
        String name = httpServletRequest.getParameter("uname");
        String pwd = httpServletRequest.getParameter("password");
        User user = User.builder().username(name).useremail(email).userpwd(pwd).build();
        User savedUser = userService.save(user);
        if (savedUser != null) {
            return "Success";
        } else {
            return "Failed";
        }
    }

    /**
     * The login method is the first method loaded when application is started and when user makes a request to "/" or "/login" endpoint
     * return login page as response.
     */
    @RequestMapping(value = {"/", "/login"})
    public String login(Model model) {
        return "login";
    }

    /**
     * The login error method is loaded when user login fails due to bad credentials
     * return error page as response with invalid credentials message.
     */
    @RequestMapping("/loginError")
    public String loginError(Model model) {
        model.addAttribute("errormsg", "Invalid Username and Password !!! Try Again");
        return "error";
    }

    /**
     * The getCovidDataForIndia method is loaded as part of AJAX request
     * It loads all the data required inorder to display the graph (pie chart and bar graph) within dashboard page
     */
    @RequestMapping(value = "/getCovidDataForIndia", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    List<Integer> getCovidDataForIndia(Model model, HttpServletRequest request, HttpServletResponse response) {
        List<Integer> list = new ArrayList<>();
        SummaryData summaryData = covidService.getTheTotalCovidData();
        list.add(summaryData.getConfirmedCasesIndian());
        list.add(summaryData.getTotal());
        list.add(summaryData.getDeaths());
        list.add(summaryData.getDischarged());
        return list;
    }

    /**
     * The validateEmail method is loaded as part of AJAX request
     * It is used to validate whether the email id entered is unique or not
     */
    @RequestMapping(value = "/validateEmail/{email}", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    int validateEmail(@PathVariable String email, Model model) {
        int result = userService.validateEmail(email);
        return result;
    }

    /**
     * The validateUserName method is loaded as part of AJAX request
     * It is used to validate whether the user name entered is unique or not
     */
    @RequestMapping(value = "/validateUsername/{name}", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    int validateUserName(@PathVariable String name, Model model) {
        int result = userService.validateUserName(name);
        return result;
    }

    /**
     * The validateUserLogin method is loaded as part of AJAX request
     * It is used to validate whether the user name  and passwords entered is present in database or not
     */
    @RequestMapping(value = "/validateUserLogin/{name}/{password}", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    int validateUserName(@PathVariable String name, @PathVariable String password, Model model) {
        int result = userService.validateUserLogin(name, password);
        return result;
    }

    @RequestMapping(value = "/index",method = {RequestMethod.GET, RequestMethod.POST})
    public String index(HttpServletRequest httpServletRequest,HttpServletResponse httpServletResponse) {
        System.out.println("hitting index");
        return "index1";
    }
}
