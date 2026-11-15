package com.yandex.mobile.ads.impl;

import java.nio.ByteBuffer;

public final class s12 extends sy1 {
    private final ag1 a = new ag1();
    private final zf1 b = new zf1();
    private p52 c;

    @Override
    public final k01 a(n01 n01Var, ByteBuffer byteBuffer) {
        k01.b u12Var;
        p52 p52Var = this.c;
        if (p52Var == null || n01Var.j != p52Var.c()) {
            p52 p52Var2 = new p52(n01Var.f);
            this.c = p52Var2;
            p52Var2.a(n01Var.f - n01Var.j);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.a.a(iLimit, bArrArray);
        this.b.a(iLimit, bArrArray);
        this.b.d(39);
        long jB = (((long) this.b.b(1)) << 32) | ((long) this.b.b(32));
        this.b.d(20);
        int iB = this.b.b(12);
        int iB2 = this.b.b(8);
        this.a.f(14);
        if (iB2 == 0) {
            u12Var = new u12();
        } else if (iB2 == 255) {
            u12Var = gl1.a(this.a, iB, jB);
        } else if (iB2 == 4) {
            u12Var = v12.a(this.a);
        } else if (iB2 != 5) {
            u12Var = iB2 != 6 ? null : g52.a(this.a, jB, this.c);
        } else {
            u12Var = t12.a(this.a, jB, this.c);
        }
        return u12Var == null ? new k01(new k01.b[0]) : new k01(u12Var);
    }
}
