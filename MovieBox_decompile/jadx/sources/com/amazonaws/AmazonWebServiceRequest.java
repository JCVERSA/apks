package com.amazonaws;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.metrics.RequestMetricCollector;

public abstract class AmazonWebServiceRequest implements Cloneable {
    private AmazonWebServiceRequest cloneSource;
    private AWSCredentials credentials;
    private ProgressListener generalProgressListener;
    private final RequestClientOptions requestClientOptions = new RequestClientOptions();

    @Deprecated
    private RequestMetricCollector requestMetricCollector;

    private void a(AmazonWebServiceRequest amazonWebServiceRequest) {
        this.cloneSource = amazonWebServiceRequest;
    }

    protected final <T extends AmazonWebServiceRequest> T copyBaseTo(T t10) {
        t10.setGeneralProgressListener(this.generalProgressListener);
        t10.setRequestMetricCollector(this.requestMetricCollector);
        return t10;
    }

    public AmazonWebServiceRequest getCloneRoot() {
        AmazonWebServiceRequest cloneSource = this.cloneSource;
        if (cloneSource != null) {
            while (cloneSource.getCloneSource() != null) {
                cloneSource = cloneSource.getCloneSource();
            }
        }
        return cloneSource;
    }

    public AmazonWebServiceRequest getCloneSource() {
        return this.cloneSource;
    }

    public ProgressListener getGeneralProgressListener() {
        return this.generalProgressListener;
    }

    public RequestClientOptions getRequestClientOptions() {
        return this.requestClientOptions;
    }

    public AWSCredentials getRequestCredentials() {
        return this.credentials;
    }

    @Deprecated
    public RequestMetricCollector getRequestMetricCollector() {
        return this.requestMetricCollector;
    }

    public void setGeneralProgressListener(ProgressListener progressListener) {
        this.generalProgressListener = progressListener;
    }

    public void setRequestCredentials(AWSCredentials aWSCredentials) {
        this.credentials = aWSCredentials;
    }

    @Deprecated
    public void setRequestMetricCollector(RequestMetricCollector requestMetricCollector) {
        this.requestMetricCollector = requestMetricCollector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AmazonWebServiceRequest> T withGeneralProgressListener(ProgressListener progressListener) {
        setGeneralProgressListener(progressListener);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public <T extends AmazonWebServiceRequest> T withRequestMetricCollector(RequestMetricCollector requestMetricCollector) {
        setRequestMetricCollector(requestMetricCollector);
        return this;
    }

    @Override
    public AmazonWebServiceRequest mo199clone() {
        try {
            AmazonWebServiceRequest amazonWebServiceRequest = (AmazonWebServiceRequest) super.clone();
            amazonWebServiceRequest.a(this);
            return amazonWebServiceRequest;
        } catch (CloneNotSupportedException e10) {
            throw new IllegalStateException("Got a CloneNotSupportedException from Object.clone() even though we're Cloneable!", e10);
        }
    }
}
