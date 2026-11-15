package com.facebook.ads.redexgen.core;

import java.util.ArrayList;

public class RunnableC1163Pn implements Runnable {
    public final C06856j A00;
    public final ArrayList A01;

    public RunnableC1163Pn(C06856j c06856j, ArrayList arrayList) {
        this.A00 = c06856j;
        this.A01 = arrayList;
    }

    @Override
    public final void run() {
        for (C1172Pw c1172Pw : this.A01) {
            this.A00.A0e(c1172Pw.A04, c1172Pw.A00, c1172Pw.A01, c1172Pw.A02, c1172Pw.A03);
        }
        this.A01.clear();
        this.A00.A05.remove(this.A01);
    }
}
