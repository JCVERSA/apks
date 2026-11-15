package com.facebook.ads.redexgen.core;

import java.io.File;
import java.util.concurrent.Callable;

public class L4 implements Callable<Void> {
    public final File A00;
    public final AbstractC1989jN A01;

    public L4(AbstractC1989jN abstractC1989jN, File file) {
        this.A01 = abstractC1989jN;
        this.A00 = file;
    }

    @Override
    public final Void call() throws Exception {
        this.A01.A06(this.A00);
        return null;
    }
}
