package com.facebook.ads.redexgen.core;

public class RunnableC2353pn implements Runnable {
    public final int A00;
    public final C2352pm A01;
    public final Exception A02;

    public RunnableC2353pn(C2352pm c2352pm, int i, Exception exc) {
        this.A01 = c2352pm;
        this.A00 = i;
        this.A02 = exc;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            try {
                if (this.A01.A01) {
                    if (!A8.A07 || !this.A01.A08()) {
                        this.A01.A05(this.A01.A05.AC6());
                        this.A01.A04.postDelayed(this.A01.A0A, this.A00);
                    } else {
                        this.A01.A0C();
                    }
                }
            } catch (Exception ex) {
                ex.initCause(this.A02);
                throw ex;
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
