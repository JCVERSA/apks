package com.amazonaws.services.s3.model.analytics;

import java.io.Serializable;

public class AnalyticsConfiguration implements Serializable {
    private AnalyticsFilter filter;

    private String f18229id;
    private StorageClassAnalysis storageClassAnalysis;

    public AnalyticsFilter getFilter() {
        return this.filter;
    }

    public String getId() {
        return this.f18229id;
    }

    public StorageClassAnalysis getStorageClassAnalysis() {
        return this.storageClassAnalysis;
    }

    public void setFilter(AnalyticsFilter analyticsFilter) {
        this.filter = analyticsFilter;
    }

    public void setId(String str) {
        this.f18229id = str;
    }

    public void setStorageClassAnalysis(StorageClassAnalysis storageClassAnalysis) {
        this.storageClassAnalysis = storageClassAnalysis;
    }

    public AnalyticsConfiguration withFilter(AnalyticsFilter analyticsFilter) {
        setFilter(analyticsFilter);
        return this;
    }

    public AnalyticsConfiguration withId(String str) {
        setId(str);
        return this;
    }

    public AnalyticsConfiguration withStorageClassAnalysis(StorageClassAnalysis storageClassAnalysis) {
        setStorageClassAnalysis(storageClassAnalysis);
        return this;
    }
}
