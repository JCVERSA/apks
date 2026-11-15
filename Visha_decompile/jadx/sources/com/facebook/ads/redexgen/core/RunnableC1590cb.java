package com.facebook.ads.redexgen.core;

public class RunnableC1590cb implements Runnable {
    public final C06153r A00;

    public RunnableC1590cb(C06153r c06153r) {
        this.A00 = c06153r;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            ((G2) this.A00).A09.A4b(((G2) this.A00).A0A.A7o());
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
