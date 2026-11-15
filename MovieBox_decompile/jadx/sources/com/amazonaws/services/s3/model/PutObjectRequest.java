package com.amazonaws.services.s3.model;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;

public class PutObjectRequest extends AbstractPutObjectRequest implements Serializable {
    private boolean isRequesterPays;

    public PutObjectRequest(String str, String str2, File file) {
        super(str, str2, file);
    }

    public boolean isRequesterPays() {
        return this.isRequesterPays;
    }

    public void setRequesterPays(boolean z10) {
        this.isRequesterPays = z10;
    }

    public PutObjectRequest withRequesterPays(boolean z10) {
        setRequesterPays(z10);
        return this;
    }

    public PutObjectRequest(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    @Override
    public PutObjectRequest withAccessControlList(AccessControlList accessControlList) {
        return (PutObjectRequest) super.withAccessControlList(accessControlList);
    }

    @Override
    public PutObjectRequest withBucketName(String str) {
        return (PutObjectRequest) super.withBucketName(str);
    }

    @Override
    public PutObjectRequest withCannedAcl(CannedAccessControlList cannedAccessControlList) {
        return (PutObjectRequest) super.withCannedAcl(cannedAccessControlList);
    }

    @Override
    public PutObjectRequest withFile(File file) {
        return (PutObjectRequest) super.withFile(file);
    }

    @Override
    public PutObjectRequest withGeneralProgressListener(com.amazonaws.event.ProgressListener progressListener) {
        return (PutObjectRequest) super.withGeneralProgressListener(progressListener);
    }

    @Override
    public PutObjectRequest withInputStream(InputStream inputStream) {
        return (PutObjectRequest) super.withInputStream(inputStream);
    }

    @Override
    public PutObjectRequest withKey(String str) {
        return (PutObjectRequest) super.withKey(str);
    }

    @Override
    public PutObjectRequest withMetadata(ObjectMetadata objectMetadata) {
        return (PutObjectRequest) super.withMetadata(objectMetadata);
    }

    @Override
    @Deprecated
    public PutObjectRequest withProgressListener(ProgressListener progressListener) {
        return (PutObjectRequest) super.withProgressListener(progressListener);
    }

    @Override
    public PutObjectRequest withRedirectLocation(String str) {
        return (PutObjectRequest) super.withRedirectLocation(str);
    }

    @Override
    public PutObjectRequest withSSEAwsKeyManagementParams(SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        return (PutObjectRequest) super.withSSEAwsKeyManagementParams(sSEAwsKeyManagementParams);
    }

    @Override
    public PutObjectRequest withSSECustomerKey(SSECustomerKey sSECustomerKey) {
        return (PutObjectRequest) super.withSSECustomerKey(sSECustomerKey);
    }

    @Override
    public PutObjectRequest withTagging(ObjectTagging objectTagging) {
        super.setTagging(objectTagging);
        return this;
    }

    public PutObjectRequest(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata) {
        super(str, str2, inputStream, objectMetadata);
    }

    @Override
    public PutObjectRequest withStorageClass(String str) {
        return (PutObjectRequest) super.withStorageClass(str);
    }

    @Override
    public PutObjectRequest mo199clone() {
        return (PutObjectRequest) copyPutObjectBaseTo((PutObjectRequest) super.mo199clone());
    }

    @Override
    public PutObjectRequest withStorageClass(StorageClass storageClass) {
        return (PutObjectRequest) super.withStorageClass(storageClass);
    }
}
