package com.facebook.ads.redexgen.core;

import java.util.ArrayList;

public class RunnableC1164Po implements Runnable {
    public final C06856j A00;
    public final ArrayList A01;

    public RunnableC1164Po(C06856j c06856j, ArrayList arrayList) {
        this.A00 = c06856j;
        this.A01 = arrayList;
    }

    @Override
    public final void run() {
        for (C1171Pv change : this.A01) {
            this.A00.A0c(change);
        }
        this.A01.clear();
        this.A00.A03.remove(this.A01);
    }
}
