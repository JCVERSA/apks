package com.facebook.ads.redexgen.core;

public class C2108lV implements InterfaceC0942Gw {
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final GL A06;

    public C2108lV(GL gl, long j, long j2, long j3, long j4, long j5, long j6) {
        this.A06 = gl;
        this.A03 = j;
        this.A05 = j2;
        this.A02 = j3;
        this.A04 = j4;
        this.A01 = j5;
        this.A00 = j6;
    }

    public final long A05(long j) {
        return this.A06.AJf(j);
    }

    @Override
    public final long A7l() {
        return this.A03;
    }

    @Override
    public final C0941Gv A8t(long j) {
        return new C0941Gv(new C0943Gx(j, GK.A05(this.A06.AJf(j), this.A05, this.A02, this.A04, this.A01, this.A00)));
    }

    @Override
    public final boolean AAa() {
        return true;
    }
}
