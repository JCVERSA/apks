package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.services.s3.model.AmazonS3Exception;

public class CompleteMultipartUploadRetryCondition implements RetryPolicy.RetryCondition {

    private final int f18003b;

    public CompleteMultipartUploadRetryCondition() {
        this(3);
    }

    @Override
    public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10) {
        return (amazonClientException instanceof AmazonS3Exception) && b((AmazonS3Exception) amazonClientException) && i10 < this.f18003b;
    }

    boolean b(AmazonS3Exception amazonS3Exception) {
        return (amazonS3Exception == null || amazonS3Exception.getErrorCode() == null || amazonS3Exception.getErrorMessage() == null || !amazonS3Exception.getErrorCode().contains("InternalError") || !amazonS3Exception.getErrorMessage().contains("Please try again.")) ? false : true;
    }

    CompleteMultipartUploadRetryCondition(int i10) {
        this.f18003b = i10;
    }
}
