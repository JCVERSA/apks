package com.facebook.ads.redexgen.core;

public class RunnableC1516bP implements Runnable {
    public final C0989Is A00;

    public RunnableC1516bP(C0989Is c0989Is) {
        this.A00 = c0989Is;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0D) {
                this.A00.A0L();
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
