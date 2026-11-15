package com.facebook.ads.redexgen.core;

public class RunnableC1463aY implements Runnable {
    public final C1020Jx A00;

    public RunnableC1463aY(C1020Jx c1020Jx) {
        this.A00 = c1020Jx;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A02 = true;
            if (((AbstractC1469ae) this.A00).A06.A0E() != null) {
                ((AbstractC1469ae) this.A00).A06.A0E().AFE(true);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
