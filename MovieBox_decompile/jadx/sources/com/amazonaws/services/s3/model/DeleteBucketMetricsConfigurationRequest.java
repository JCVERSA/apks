package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

public class DeleteBucketMetricsConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    private String f18079id;

    public DeleteBucketMetricsConfigurationRequest() {
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f18079id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f18079id = str;
    }

    public DeleteBucketMetricsConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public DeleteBucketMetricsConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }

    public DeleteBucketMetricsConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f18079id = str2;
    }
}
