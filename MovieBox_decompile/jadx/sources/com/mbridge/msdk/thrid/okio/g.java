package com.mbridge.msdk.thrid.okio;

import java.io.IOException;

public abstract class g implements r {

    private final r f37607a;

    public g(r rVar) {
        if (rVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f37607a = rVar;
    }

    @Override
    public void a(c cVar, long j10) throws IOException {
        this.f37607a.a(cVar, j10);
    }

    @Override
    public t b() {
        return this.f37607a.b();
    }

    @Override
    public void close() throws IOException {
        this.f37607a.close();
    }

    @Override
    public void flush() throws IOException {
        this.f37607a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f37607a.toString() + ")";
    }
}
