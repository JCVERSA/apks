package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.Signer;
import com.amazonaws.http.ExecutionContext;
import java.net.URI;
import java.util.List;

public class S3ExecutionContext extends ExecutionContext {

    private Signer f18045f;

    public S3ExecutionContext(List list, boolean z10, AmazonWebServiceClient amazonWebServiceClient) {
        super(list, z10, amazonWebServiceClient);
    }

    @Override
    public Signer e(URI uri) {
        return this.f18045f;
    }

    @Override
    public void g(Signer signer) {
        this.f18045f = signer;
    }
}
