package com.facebook.ads.redexgen.core;

public class RunnableC1559c6 implements Runnable {
    public final C06374n A00;

    public RunnableC1559c6(C06374n c06374n) {
        this.A00 = c06374n;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A07 = true;
            this.A00.A0M.AFE(true);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
