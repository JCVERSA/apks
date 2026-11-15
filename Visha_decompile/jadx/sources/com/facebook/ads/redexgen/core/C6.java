package com.facebook.ads.redexgen.core;

public final class C6 implements InterfaceC1749fD {
    @Override
    public final long A5e() {
        return System.nanoTime();
    }

    @Override
    public final void AJK(Object obj, long j) throws InterruptedException {
        obj.wait(j);
    }
}
