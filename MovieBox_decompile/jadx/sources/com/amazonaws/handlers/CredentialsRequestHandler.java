package com.amazonaws.handlers;

import com.amazonaws.auth.AWSCredentials;

public abstract class CredentialsRequestHandler extends RequestHandler2 {

    protected AWSCredentials f17760a;

    public void e(AWSCredentials aWSCredentials) {
        this.f17760a = aWSCredentials;
    }
}
