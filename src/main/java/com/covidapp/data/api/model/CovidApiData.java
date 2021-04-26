package com.covidapp.data.api.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.ZonedDateTime;

/**
 * CovidApiData model class is used to create a country data object along with latest date and time
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CovidApiData {

    private boolean success;
    private CountryData data;
    private ZonedDateTime lastRefreshed;
    private ZonedDateTime lastOriginUpdate;
}
