package com.facebook.ads.redexgen.core;

import java.io.Closeable;
import java.io.IOException;

public final class C1352Wz implements Closeable {
    public C1351Wy A00;
    public boolean A01;
    public final C1350Wx A02;
    public final Runnable A03;

    public C1352Wz(long j, Runnable runnable) {
        this.A02 = new C1350Wx(j);
        this.A02.A02();
        this.A03 = runnable;
        this.A01 = false;
    }

    private final synchronized void A03() {
        if (this.A00 == null && !this.A01) {
            this.A00 = new C1351Wy(this);
        }
    }

    public final C1350Wx A04() {
        return this.A02;
    }

    public final synchronized void A05() {
        if (this.A01) {
            return;
        }
        if (this.A00 == null) {
            this.A00 = new C1351Wy(this);
        }
        this.A00.A00();
    }

    public final synchronized void A06() {
        if (this.A02.A05() && !this.A01) {
            A03();
        }
    }

    @Override
    public final void close() throws IOException {
        C1351Wy executing;
        synchronized (this) {
            this.A01 = true;
            executing = this.A00;
        }
        if (executing != null) {
            executing.close();
        }
    }
}
