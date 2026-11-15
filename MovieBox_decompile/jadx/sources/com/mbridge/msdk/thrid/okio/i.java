package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public class i extends t {

    private t f37609e;

    public i(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f37609e = tVar;
    }

    public final i a(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f37609e = tVar;
        return this;
    }

    @Override
    public t b() {
        return this.f37609e.b();
    }

    @Override
    public long c() {
        return this.f37609e.c();
    }

    @Override
    public boolean d() {
        return this.f37609e.d();
    }

    @Override
    public void e() throws IOException {
        this.f37609e.e();
    }

    public final t g() {
        return this.f37609e;
    }

    @Override
    public t a(long j10, TimeUnit timeUnit) {
        return this.f37609e.a(j10, timeUnit);
    }

    @Override
    public t a(long j10) {
        return this.f37609e.a(j10);
    }

    @Override
    public t a() {
        return this.f37609e.a();
    }
}
