package com.facebook.ads.redexgen.core;

import java.util.concurrent.Executor;

public final class C1356Xd {
    public static C1356Xd A02;
    public final C1136Om A00;
    public final C1358Xf A01;

    public C1356Xd(C1635dL c1635dL, Executor executor, TE te) {
        this.A01 = new C1358Xf(c1635dL);
        this.A00 = new C1136Om(executor, te, c1635dL);
    }

    private void A00() {
        this.A01.A03(this.A00);
    }

    public static void A01(C1635dL c1635dL, Executor executor, TE te) {
        if (!U7.A1X(c1635dL)) {
            return;
        }
        if (A02 == null) {
            A02 = new C1356Xd(c1635dL, executor, te);
            A02.A00();
        } else {
            A02.A02(te);
        }
    }

    private void A02(TE te) {
        this.A00.A07(te);
    }
}
