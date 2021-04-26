package com.covidapp.data.api.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * CountryData model class is used to return complete country data and also statewise data
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CountryData {

    private SummaryData summary;
    private StateData[] regional;
}
