package com.covidapp.data.api.serviceimpl;

import com.covidapp.data.api.dao.CovidDataProviderDao;
import com.covidapp.data.api.model.StateData;
import com.covidapp.data.api.model.SummaryData;
import com.covidapp.data.api.service.CovidService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * serviceimpl layer for covid data
 */
@Repository
public class CovidServiceImpl implements CovidService {

    @Autowired
    private CovidDataProviderDao covidDataProvider;

    public SummaryData getTheTotalCovidData() {
        return covidDataProvider.getTheTotalCovidData();
    }

    public StateData getTotalCovidDataStateWise(String state) {
        return covidDataProvider.getStateData(state);
    }

    public StateData[] getAllStateData() {
        return covidDataProvider.getAllStateData();
    }
}
