package com.facebook.ads.redexgen.core;

public class RunnableC1629dF implements Runnable {
    public final C0873Ef A00;

    public RunnableC1629dF(C0873Ef c0873Ef) {
        this.A00 = c0873Ef;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0B() != 0) {
                this.A00.A05.scrollBy(this.A00.A01, 0);
                this.A00.A04.postDelayed(this, 16L);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
