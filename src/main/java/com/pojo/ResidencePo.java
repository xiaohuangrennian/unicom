package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResidencePo {
    private String province;
    private String city;
    private String region;
    private String street;
    private String name;
    private String wkt;
    private int year;
}
