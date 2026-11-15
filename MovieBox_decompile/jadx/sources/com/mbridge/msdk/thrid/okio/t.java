package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

public class t {

    public static final t f37643d = new a();

    private boolean f37644a;

    private long f37645b;

    private long f37646c;

    static class a extends t {
        a() {
        }

        @Override
        public t a(long j10) {
            return this;
        }

        @Override
        public void e() throws IOException {
        }

        @Override
        public t a(long j10, TimeUnit timeUnit) {
            return this;
        }
    }

    public t a(long j10, TimeUnit timeUnit) {
        if (j10 >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f37646c = timeUnit.toNanos(j10);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j10);
    }

    public t b() {
        this.f37646c = 0L;
        return this;
    }

    public long c() {
        if (this.f37644a) {
            return this.f37645b;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean d() {
        return this.f37644a;
    }

    public void e() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f37644a && this.f37645b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public long f() {
        return this.f37646c;
    }

    public t a(long j10) {
        this.f37644a = true;
        this.f37645b = j10;
        return this;
    }

    public t a() {
        this.f37644a = false;
        return this;
    }
}
