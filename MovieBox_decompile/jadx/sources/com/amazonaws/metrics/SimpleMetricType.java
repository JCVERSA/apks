package com.amazonaws.metrics;

public abstract class SimpleMetricType implements MetricType {
    public final boolean equals(Object obj) {
        if (obj instanceof MetricType) {
            return name().equals(((MetricType) obj).name());
        }
        return false;
    }

    public final int hashCode() {
        return name().hashCode();
    }

    @Override
    public abstract String name();

    public final String toString() {
        return name();
    }
}
