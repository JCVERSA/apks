package com.amazonaws.metrics;

public abstract class MetricCollector {

    public static final MetricCollector f17823a = new MetricCollector() {
        @Override
        public RequestMetricCollector a() {
            return RequestMetricCollector.f17825a;
        }

        @Override
        public ServiceMetricCollector b() {
            return ServiceMetricCollector.f17826a;
        }

        @Override
        public boolean c() {
            return false;
        }

        @Override
        public boolean d() {
            return true;
        }
    };

    public abstract RequestMetricCollector a();

    public abstract ServiceMetricCollector b();

    public abstract boolean c();

    public abstract boolean d();
}
