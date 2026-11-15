package com.facebook.ads.redexgen.core;

public class C1509bI extends AbstractRunnableC1322Vt {
    public final C1609cu A00;

    public C1509bI(C1609cu c1609cu) {
        this.A00 = c1609cu;
    }

    @Override
    public final void A07() {
        for (C1243Sq c1243Sq : C1242Sp.A02()) {
            C1242Sp.A0A(this.A00, c1243Sq.A02(), c1243Sq.A00(), c1243Sq.A01(), false);
        }
        C1242Sp.A02().clear();
    }
}
