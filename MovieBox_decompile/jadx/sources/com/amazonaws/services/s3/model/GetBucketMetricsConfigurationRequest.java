package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

public class GetBucketMetricsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    private String f18085id;

    public GetBucketMetricsConfigurationRequest() {
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f18085id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f18085id = str;
    }

    public GetBucketMetricsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public GetBucketMetricsConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }

    public GetBucketMetricsConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f18085id = str2;
    }
}
