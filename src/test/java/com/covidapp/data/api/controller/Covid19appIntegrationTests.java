package com.covidapp.data.api.controller;

import com.covidapp.data.api.Covid19appApplication;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT,
        classes = Covid19appApplication.class)
@AutoConfigureMockMvc
@TestPropertySource(locations = "classpath:application.properties")
public class Covid19appIntegrationTests {

    @Autowired
    private MockMvc mockMvc;

    @Test
    void findUserByUserNameAndPassword() throws Exception {
        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.get("/coviddata/getUser/{user}/{pwd}", "testuser", "testpassword"))
                .andReturn();
        System.out.println(mvcResult.getResponse());
    }

    @Test
    void getTotalCovidDataIndia() throws Exception {
        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.get("/coviddata/getTotalCovidData"))
                .andReturn();
        System.out.println(mvcResult.getResponse().getContentAsString());
    }

    @Test
    void getTotalCovidDataStateWise() throws Exception {
        MvcResult mvcResult = mockMvc.perform(MockMvcRequestBuilders.get("/coviddata/getTotalCovidDataStateWise/{state}", "karnataka"))
                .andReturn();
        System.out.println(mvcResult.getResponse().getContentAsString());
    }
}
