package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.Signer;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSRequestMetricsFullSupport;
import java.net.URI;
import java.util.List;

public class ExecutionContext {

    private final AWSRequestMetrics f17767a;

    private final List f17768b;

    private String f17769c;

    private final AmazonWebServiceClient f17770d;

    private AWSCredentials f17771e;

    public ExecutionContext() {
        this(null, false, null);
    }

    public AWSRequestMetrics a() {
        return this.f17767a;
    }

    public String b() {
        return this.f17769c;
    }

    public AWSCredentials c() {
        return this.f17771e;
    }

    public List d() {
        return this.f17768b;
    }

    public Signer e(URI uri) {
        AmazonWebServiceClient amazonWebServiceClient = this.f17770d;
        if (amazonWebServiceClient == null) {
            return null;
        }
        return amazonWebServiceClient.p(uri);
    }

    public void f(AWSCredentials aWSCredentials) {
        this.f17771e = aWSCredentials;
    }

    public ExecutionContext(List list, boolean z10, AmazonWebServiceClient amazonWebServiceClient) {
        this.f17768b = list;
        this.f17767a = z10 ? new AWSRequestMetricsFullSupport() : new AWSRequestMetrics();
        this.f17770d = amazonWebServiceClient;
    }

    public void g(Signer signer) {
    }
}
