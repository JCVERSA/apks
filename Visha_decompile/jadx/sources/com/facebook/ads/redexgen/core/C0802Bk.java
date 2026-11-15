package com.facebook.ads.redexgen.core;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

public class C0802Bk implements InterfaceC1715ee {
    public final C05651r A00;
    public final CountDownLatch A01;
    public final AtomicReference A02;
    public final AtomicReference A03;

    public C0802Bk(C05651r c05651r, AtomicReference atomicReference, AtomicReference atomicReference2, CountDownLatch countDownLatch) {
        this.A00 = c05651r;
        this.A03 = atomicReference;
        this.A02 = atomicReference2;
        this.A01 = countDownLatch;
    }

    @Override
    public final void ACo(InterfaceC1713ec interfaceC1713ec) {
        C05651r.A06(interfaceC1713ec.A6v(), this.A03, this.A02);
        this.A01.countDown();
    }

    @Override
    public final void ADC(Exception exc) {
        this.A02.set(exc);
        this.A01.countDown();
    }
}
