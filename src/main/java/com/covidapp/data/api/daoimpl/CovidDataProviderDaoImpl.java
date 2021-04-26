package com.covidapp.data.api.daoimpl;

import com.covidapp.data.api.constants.UrlClass;
import com.covidapp.data.api.dao.CovidDataProviderDao;
import com.covidapp.data.api.exception.InvalidStateException;
import com.covidapp.data.api.exception.RestApiNotFoundException;
import com.covidapp.data.api.model.CovidApiData;
import com.covidapp.data.api.model.StateData;
import com.covidapp.data.api.model.SummaryData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;

/**
 * dao implementation layer for covid data, this makes a REST API call by making use of RestTemplate to external endpoints inorder to get the covid data
 * @throws RestApiNotFoundException in case the reponse is timed out or the API is not available
 */
@Repository
public class CovidDataProviderDaoImpl implements CovidDataProviderDao {

    @Autowired
    private RestTemplate restTemplate;

    public StateData getStateData(String state) {
        System.out.println(state);
        try {
            CovidApiData covidApiData = restTemplate.getForObject(UrlClass.COVID_API_INDIA_URI, CovidApiData.class);
            return Arrays.stream(covidApiData.getData().getRegional())
                    .filter(e -> e.getLoc().equalsIgnoreCase(state))
                    .findAny()
                    .orElse(new StateData());
        } catch (Exception e) {
            throw new InvalidStateException("Invalid State");
        }
    }

    public SummaryData getTheTotalCovidData() {
        try {
            CovidApiData covidApiData = restTemplate.getForObject(UrlClass.COVID_API_INDIA_URI, CovidApiData.class);
            SummaryData summaryData = covidApiData.getData().getSummary();
            return summaryData;
        } catch (Exception e) {
            throw new RestApiNotFoundException("Rest API not reachable currently");
        }
    }

    public StateData[] getAllStateData() {
        try {
            CovidApiData covidApiData = restTemplate.getForObject(UrlClass.COVID_API_INDIA_URI, CovidApiData.class);
            StateData[] stateData = covidApiData.getData().getRegional();
            return stateData;
        } catch (Exception e) {
            throw new RestApiNotFoundException("Rest API not reachable currently");
        }
    }
}
