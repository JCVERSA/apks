package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.transform.Unmarshaller;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class ResponseHeaderHandlerChain<T> extends S3XmlResponseHandler<T> {

    private final List f18042f;

    public ResponseHeaderHandlerChain(Unmarshaller unmarshaller, HeaderHandler... headerHandlerArr) {
        super(unmarshaller);
        this.f18042f = Arrays.asList(headerHandlerArr);
    }

    @Override
    public AmazonWebServiceResponse a(HttpResponse httpResponse) {
        AmazonWebServiceResponse amazonWebServiceResponseA = super.a(httpResponse);
        Object objB = amazonWebServiceResponseA.b();
        if (objB != null) {
            Iterator it = this.f18042f.iterator();
            while (it.hasNext()) {
                ((HeaderHandler) it.next()).a(objB, httpResponse);
            }
        }
        return amazonWebServiceResponseA;
    }
}
