package com.covidapp.data.api.dao;

import com.covidapp.data.api.model.StateData;
import com.covidapp.data.api.model.SummaryData;

/**
 * dao layer for covid data and is implmented by CovidDataProviderDaoImpl
 */
public interface CovidDataProviderDao {

    public StateData getStateData(String state);

    public SummaryData getTheTotalCovidData();

    public StateData[] getAllStateData();
}
