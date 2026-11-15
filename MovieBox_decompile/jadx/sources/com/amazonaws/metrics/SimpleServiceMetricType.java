package com.amazonaws.metrics;

public class SimpleServiceMetricType extends SimpleMetricType implements ServiceMetricType {

    private final String f17827a;

    private final String f17828b;

    public SimpleServiceMetricType(String str, String str2) {
        this.f17827a = str;
        this.f17828b = str2;
    }

    @Override
    public String name() {
        return this.f17827a;
    }
}
