package com.amazonaws.metrics;

import java.util.concurrent.TimeUnit;

class ByteThroughputHelper extends ByteThroughputProvider {
    ByteThroughputHelper(ThroughputMetricType throughputMetricType) {
        super(throughputMetricType);
    }

    @Override
    public void d(int i10, long j10) {
        super.d(i10, j10);
    }

    void f() {
        if (a() > 0) {
            AwsSdkMetrics.getServiceMetricCollector().a(this);
            e();
        }
    }

    long g() {
        if (TimeUnit.NANOSECONDS.toSeconds(b()) > 10) {
            f();
        }
        return System.nanoTime();
    }
}
