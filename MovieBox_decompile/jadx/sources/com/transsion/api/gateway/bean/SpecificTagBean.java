package com.transsion.api.gateway.bean;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashMap;
import nl.a;

public class SpecificTagBean {

    @a(name = "tags")
    public HashMap<String, Object> tags;

    @a(name = AppMeasurementSdk.ConditionalUserProperty.VALUE)
    public int value;
}
