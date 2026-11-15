package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

public class DeleteBucketInventoryConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    private String f18078id;

    public DeleteBucketInventoryConfigurationRequest() {
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getId() {
        return this.f18078id;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setId(String str) {
        this.f18078id = str;
    }

    public DeleteBucketInventoryConfigurationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public DeleteBucketInventoryConfigurationRequest withId(String str) {
        setId(str);
        return this;
    }

    public DeleteBucketInventoryConfigurationRequest(String str, String str2) {
        this.bucketName = str;
        this.f18078id = str2;
    }
}
