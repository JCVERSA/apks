package com.amazonaws.metrics;

import com.amazonaws.Request;
import com.amazonaws.Response;

public abstract class RequestMetricCollector {

    public static final RequestMetricCollector f17825a = new RequestMetricCollector() {
        @Override
        public boolean b() {
            return false;
        }

        @Override
        public void a(Request request, Response response) {
        }
    };

    public abstract void a(Request request, Response response);

    public boolean b() {
        return true;
    }
}
