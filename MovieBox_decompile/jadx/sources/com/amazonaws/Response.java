package com.amazonaws;

import com.amazonaws.http.HttpResponse;

public final class Response<T> {

    private final Object f17700a;

    private final HttpResponse f17701b;

    public Response(Object obj, HttpResponse httpResponse) {
        this.f17700a = obj;
        this.f17701b = httpResponse;
    }

    public Object a() {
        return this.f17700a;
    }
}
