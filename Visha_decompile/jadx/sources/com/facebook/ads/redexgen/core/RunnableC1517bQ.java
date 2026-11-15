package com.facebook.ads.redexgen.core;

public class RunnableC1517bQ implements Runnable {
    public final C0989Is A00;

    public RunnableC1517bQ(C0989Is c0989Is) {
        this.A00 = c0989Is;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0C = true;
            this.A00.A0c.A0E().AFE(true);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
