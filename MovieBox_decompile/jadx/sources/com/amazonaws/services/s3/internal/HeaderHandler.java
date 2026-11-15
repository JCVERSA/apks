package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;

public interface HeaderHandler<T> {
    void a(Object obj, HttpResponse httpResponse);
}
