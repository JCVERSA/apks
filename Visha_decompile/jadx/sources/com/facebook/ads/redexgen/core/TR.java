package com.facebook.ads.redexgen.core;

import java.util.concurrent.Callable;

public class TR implements Callable<Boolean> {
    public final W4 A00;
    public final String A01;

    public TR(W4 w4, String str) {
        this.A00 = w4;
        this.A01 = str;
    }

    @Override
    public final Boolean call() throws Exception {
        this.A00.A05();
        synchronized (TT.A04) {
            TT.A04.put(this.A01, 2);
        }
        return true;
    }
}
