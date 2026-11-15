package com.amazonaws.util;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.internal.SdkFilterInputStream;
import java.io.InputStream;

public class ServiceClientHolderInputStream extends SdkFilterInputStream {

    private AmazonWebServiceClient f18386a;

    public ServiceClientHolderInputStream(InputStream inputStream, AmazonWebServiceClient amazonWebServiceClient) {
        super(inputStream);
        this.f18386a = amazonWebServiceClient;
    }
}
