package com.amazonaws.metrics;

public abstract class ByteThroughputProvider {

    private long f17820a;

    private int f17821b;

    private final ThroughputMetricType f17822c;

    protected ByteThroughputProvider(ThroughputMetricType throughputMetricType) {
        this.f17822c = throughputMetricType;
    }

    public int a() {
        return this.f17821b;
    }

    public long b() {
        return this.f17820a;
    }

    public String c() {
        return super.toString();
    }

    protected void d(int i10, long j10) {
        this.f17821b += i10;
        this.f17820a += System.nanoTime() - j10;
    }

    protected void e() {
        this.f17821b = 0;
        this.f17820a = 0L;
    }

    public String toString() {
        return String.format("providerId=%s, throughputType=%s, byteCount=%d, duration=%d", c(), this.f17822c, Integer.valueOf(this.f17821b), Long.valueOf(this.f17820a));
    }
}
