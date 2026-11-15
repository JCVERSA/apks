package com.amazonaws.util;

import com.amazonaws.metrics.MetricType;

@Deprecated
public class AWSRequestMetrics {

    protected final TimingInfo f18361a;

    public enum Field implements MetricType {
        AWSErrorCode,
        AWSRequestID,
        BytesProcessed,
        ClientExecuteTime,
        CredentialsRequestTime,
        Exception,
        HttpRequestTime,
        RedirectLocation,
        RequestMarshallTime,
        RequestSigningTime,
        ResponseProcessingTime,
        RequestCount,
        RetryCount,
        HttpClientRetryCount,
        HttpClientSendRequestTime,
        HttpClientReceiveResponseTime,
        RetryPauseTime,
        ServiceEndpoint,
        ServiceName,
        StatusCode
    }

    public AWSRequestMetrics() {
        this.f18361a = TimingInfo.m();
    }

    public final TimingInfo c() {
        return this.f18361a;
    }

    protected AWSRequestMetrics(TimingInfo timingInfo) {
        this.f18361a = timingInfo;
    }

    public void e() {
    }

    public void b(MetricType metricType) {
    }

    public void d(MetricType metricType) {
    }

    public void g(MetricType metricType) {
    }

    public void a(MetricType metricType, Object obj) {
    }

    public void f(MetricType metricType, long j10) {
    }
}
