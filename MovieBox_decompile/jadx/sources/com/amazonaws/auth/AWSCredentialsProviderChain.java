package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.LinkedList;
import java.util.List;

public abstract class AWSCredentialsProviderChain implements AWSCredentialsProvider {

    private static final Log f17713d = LogFactory.b(AWSCredentialsProviderChain.class);

    private List f17714a = new LinkedList();

    private boolean f17715b = true;

    private AWSCredentialsProvider f17716c;

    public AWSCredentialsProviderChain(AWSCredentialsProvider... aWSCredentialsProviderArr) {
        if (aWSCredentialsProviderArr == null || aWSCredentialsProviderArr.length == 0) {
            throw new IllegalArgumentException("No credential providers specified");
        }
        for (AWSCredentialsProvider aWSCredentialsProvider : aWSCredentialsProviderArr) {
            this.f17714a.add(aWSCredentialsProvider);
        }
    }

    @Override
    public AWSCredentials a() {
        AWSCredentialsProvider aWSCredentialsProvider;
        if (this.f17715b && (aWSCredentialsProvider = this.f17716c) != null) {
            return aWSCredentialsProvider.a();
        }
        for (AWSCredentialsProvider aWSCredentialsProvider2 : this.f17714a) {
            try {
                AWSCredentials aWSCredentialsA = aWSCredentialsProvider2.a();
                if (aWSCredentialsA.b() != null && aWSCredentialsA.c() != null) {
                    f17713d.a("Loading credentials from " + aWSCredentialsProvider2.toString());
                    this.f17716c = aWSCredentialsProvider2;
                    return aWSCredentialsA;
                }
            } catch (Exception e10) {
                f17713d.a("Unable to load credentials from " + aWSCredentialsProvider2.toString() + ": " + e10.getMessage());
            }
        }
        throw new AmazonClientException("Unable to load AWS credentials from any provider in the chain");
    }
}
