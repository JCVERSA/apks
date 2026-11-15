package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;

public final class RetryPolicy {

    private final RetryCondition f17960a;

    private final BackoffStrategy f17961b;

    private final int f17962c;

    private final boolean f17963d;

    public interface BackoffStrategy {

        public static final BackoffStrategy f17964a = new BackoffStrategy() {
            @Override
            public long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10) {
                return 0L;
            }
        };

        long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10);
    }

    public interface RetryCondition {

        public static final RetryCondition f17965a = new RetryCondition() {
            @Override
            public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10) {
                return false;
            }
        };

        boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10);
    }

    public RetryPolicy(RetryCondition retryCondition, BackoffStrategy backoffStrategy, int i10, boolean z10) {
        retryCondition = retryCondition == null ? PredefinedRetryPolicies.f17955d : retryCondition;
        backoffStrategy = backoffStrategy == null ? PredefinedRetryPolicies.f17956e : backoffStrategy;
        if (i10 < 0) {
            throw new IllegalArgumentException("Please provide a non-negative value for maxErrorRetry.");
        }
        this.f17960a = retryCondition;
        this.f17961b = backoffStrategy;
        this.f17962c = i10;
        this.f17963d = z10;
    }

    public BackoffStrategy a() {
        return this.f17961b;
    }

    public int b() {
        return this.f17962c;
    }

    public RetryCondition c() {
        return this.f17960a;
    }

    public boolean d() {
        return this.f17963d;
    }
}
