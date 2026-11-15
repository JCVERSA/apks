package com.facebook.ads.redexgen.core;

public class RunnableC1191Qp implements Runnable {
    public final C1192Qq A00;

    public RunnableC1191Qp(C1192Qq c1192Qq) {
        this.A00 = c1192Qq;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A05 = 0L;
            this.A00.A06 = false;
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
