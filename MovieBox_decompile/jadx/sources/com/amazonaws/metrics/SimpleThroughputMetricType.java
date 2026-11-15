package com.amazonaws.metrics;

public class SimpleThroughputMetricType extends SimpleServiceMetricType implements ThroughputMetricType {

    private final ServiceMetricType f17829c;

    public SimpleThroughputMetricType(String str, String str2, String str3) {
        super(str, str2);
        this.f17829c = new SimpleServiceMetricType(str3, str2);
    }
}
