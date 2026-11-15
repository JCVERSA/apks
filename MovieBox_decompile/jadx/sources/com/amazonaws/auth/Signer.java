package com.amazonaws.auth;

import com.amazonaws.Request;

public interface Signer {
    void b(Request request, AWSCredentials aWSCredentials);
}
