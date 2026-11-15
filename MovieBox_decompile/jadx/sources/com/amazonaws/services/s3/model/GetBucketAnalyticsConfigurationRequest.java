package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

public class GetBucketAnalyticsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    private String f18083id;

    public GetBucketAnalyticsConfigurationRequest() {
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f18083id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f18083id = str;
    }

    public GetBucketAnalyticsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public GetBucketAnalyticsConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }

    public GetBucketAnalyticsConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f18083id = str2;
    }
}
