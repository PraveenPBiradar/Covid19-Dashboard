package com.covidapp.data.api.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * StateData model class is used to create complete state's data object in the form of below params
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class StateData {

    private String loc;
    private int confirmedCasesIndian;
    private int confirmedCasesForeign;
    private int discharged;
    private int deaths;
    private int totalConfirmed;

}
