package com.covidapp.data.api.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * SummaryData model class is used to create summary object of total country's data
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SummaryData {

    private int total;
    private int confirmedCasesIndian;
    private int confirmedCasesForeign;
    private int discharged;
    private int deaths;
    private int confirmedButLocationUnidentified;

}
