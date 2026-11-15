package com.amazonaws.services.s3.model.metrics;

import java.io.Serializable;

public class MetricsConfiguration implements Serializable {
    private MetricsFilter filter;

    private String f18231id;

    public MetricsFilter getFilter() {
        return this.filter;
    }

    public String getId() {
        return this.f18231id;
    }

    public void setFilter(MetricsFilter metricsFilter) {
        this.filter = metricsFilter;
    }

    public void setId(String str) {
        this.f18231id = str;
    }

    public MetricsConfiguration withFilter(MetricsFilter metricsFilter) {
        setFilter(metricsFilter);
        return this;
    }

    public MetricsConfiguration withId(String str) {
        setId(str);
        return this;
    }
}
