package com.amazonaws.auth;

import com.amazonaws.Request;

public class NoOpSigner implements Signer {
    @Override
    public void b(Request request, AWSCredentials aWSCredentials) {
    }
}
