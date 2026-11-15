package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Random;

public class PredefinedRetryPolicies {

    public static final RetryPolicy f17952a = new RetryPolicy(RetryPolicy.RetryCondition.f17965a, RetryPolicy.BackoffStrategy.f17964a, 0, false);

    public static final RetryPolicy.RetryCondition f17955d = new SDKDefaultRetryCondition();

    public static final RetryPolicy.BackoffStrategy f17956e = new SDKDefaultBackoffStrategy(100, 20000);

    public static final RetryPolicy f17953b = a();

    public static final RetryPolicy f17954c = b();

    private static final class SDKDefaultBackoffStrategy implements RetryPolicy.BackoffStrategy {

        private final Random f17957b;

        private final int f17958c;

        private final int f17959d;

        @Override
        public final long a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10) {
            if (i10 <= 0) {
                return 0L;
            }
            return this.f17957b.nextInt(Math.min(this.f17959d, (1 << i10) * this.f17958c));
        }

        private SDKDefaultBackoffStrategy(int i10, int i11) {
            this.f17957b = new Random();
            this.f17958c = i10;
            this.f17959d = i11;
        }
    }

    public static class SDKDefaultRetryCondition implements RetryPolicy.RetryCondition {
        @Override
        public boolean a(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i10) {
            if ((amazonClientException.getCause() instanceof IOException) && !(amazonClientException.getCause() instanceof InterruptedIOException)) {
                return true;
            }
            if (!(amazonClientException instanceof AmazonServiceException)) {
                return false;
            }
            AmazonServiceException amazonServiceException = (AmazonServiceException) amazonClientException;
            int statusCode = amazonServiceException.getStatusCode();
            return statusCode == 500 || statusCode == 503 || statusCode == 502 || statusCode == 504 || RetryUtils.c(amazonServiceException) || RetryUtils.a(amazonServiceException);
        }
    }

    public static RetryPolicy a() {
        return new RetryPolicy(f17955d, f17956e, 3, true);
    }

    public static RetryPolicy b() {
        return new RetryPolicy(f17955d, f17956e, 10, true);
    }
}
