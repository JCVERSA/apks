package com.facebook.ads.redexgen.core;

public class P7 implements Runnable {
    public final PH A00;

    public P7(PH ph) {
        this.A00 = ph;
    }

    @Override
    public final void run() {
        this.A00.setScrollState(0);
        this.A00.A0f();
    }
}
