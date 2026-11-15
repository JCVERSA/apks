package com.amazonaws.http;

public interface HttpResponseHandler<T> {
    Object a(HttpResponse httpResponse);

    boolean b();
}
