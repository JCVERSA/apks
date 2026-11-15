package com.facebook.ads.redexgen.core;

public class RunnableC1691eG implements Runnable {
    public final C1694eJ A00;

    public RunnableC1691eG(C1694eJ c1694eJ) {
        this.A00 = c1694eJ;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0A();
            this.A00.A01.removeCallbacks(this);
            this.A00.A01.postDelayed(this, 250L);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
