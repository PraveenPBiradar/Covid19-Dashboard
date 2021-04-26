package com.covidapp.data.api.service;

import com.covidapp.data.api.model.StateData;
import com.covidapp.data.api.model.SummaryData;
import org.springframework.stereotype.Service;

/**
 * service layer for covid data
 */
@Service
public interface CovidService {

    public SummaryData getTheTotalCovidData();

    public StateData getTotalCovidDataStateWise(String state);

    public StateData[] getAllStateData();
}
