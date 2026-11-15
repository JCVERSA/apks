package com.facebook.ads.redexgen.core;

import java.util.concurrent.Executor;

public class C2114lb implements InterfaceExecutorC0893Ez {
    public final C3X A00;
    public final Executor A01;

    public C2114lb(Executor executor, C3X c3x) {
        this.A01 = executor;
        this.A00 = c3x;
    }

    @Override
    public final void AGr() {
        this.A00.A31(this.A01);
    }

    @Override
    public final void execute(Runnable runnable) {
        this.A01.execute(runnable);
    }
}
