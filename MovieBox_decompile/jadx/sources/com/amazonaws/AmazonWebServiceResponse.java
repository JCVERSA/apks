package com.amazonaws;

public class AmazonWebServiceResponse<T> {

    private Object f17663a;

    private ResponseMetadata f17664b;

    public String a() {
        ResponseMetadata responseMetadata = this.f17664b;
        if (responseMetadata == null) {
            return null;
        }
        return responseMetadata.a();
    }

    public Object b() {
        return this.f17663a;
    }

    public void c(ResponseMetadata responseMetadata) {
        this.f17664b = responseMetadata;
    }

    public void d(Object obj) {
        this.f17663a = obj;
    }
}
