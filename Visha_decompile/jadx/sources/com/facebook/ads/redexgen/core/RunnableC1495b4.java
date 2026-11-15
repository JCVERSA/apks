package com.facebook.ads.redexgen.core;

public class RunnableC1495b4 implements Runnable {
    public final JU A00;

    public RunnableC1495b4(JU ju) {
        this.A00 = ju;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0Q) {
                this.A00.A0N();
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
