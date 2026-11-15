package com.mbridge.msdk.thrid.okio;

import java.io.IOException;

public abstract class h implements s {

    private final s f37608a;

    public h(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f37608a = sVar;
    }

    @Override
    public t b() {
        return this.f37608a.b();
    }

    @Override
    public void close() throws IOException {
        this.f37608a.close();
    }

    public final s d() {
        return this.f37608a;
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f37608a.toString() + ")";
    }
}
