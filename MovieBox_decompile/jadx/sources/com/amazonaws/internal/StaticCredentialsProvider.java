package com.amazonaws.internal;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;

public class StaticCredentialsProvider implements AWSCredentialsProvider {

    private final AWSCredentials f17796a;

    public StaticCredentialsProvider(AWSCredentials aWSCredentials) {
        this.f17796a = aWSCredentials;
    }

    @Override
    public AWSCredentials a() {
        return this.f17796a;
    }
}
