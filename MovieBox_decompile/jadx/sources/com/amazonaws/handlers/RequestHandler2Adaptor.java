package com.amazonaws.handlers;

import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.util.AWSRequestMetrics;

final class RequestHandler2Adaptor extends RequestHandler2 {
    RequestHandler2Adaptor(RequestHandler requestHandler) {
        if (requestHandler == null) {
            throw new IllegalArgumentException();
        }
    }

    @Override
    public void b(Request request, Response response, Exception exc) {
        throw null;
    }

    @Override
    public void c(Request request, Response response) {
        AWSRequestMetrics aWSRequestMetricsB = request == null ? null : request.b();
        if (response != null) {
            response.a();
        }
        if (aWSRequestMetricsB == null) {
            throw null;
        }
        aWSRequestMetricsB.c();
        throw null;
    }

    @Override
    public void d(Request request) {
        throw null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RequestHandler2Adaptor)) {
            return false;
        }
        ((RequestHandler2Adaptor) obj).getClass();
        throw null;
    }

    public int hashCode() {
        throw null;
    }
}
