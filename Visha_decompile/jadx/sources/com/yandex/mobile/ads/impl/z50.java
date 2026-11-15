package com.yandex.mobile.ads.impl;

import java.nio.ByteBuffer;
import java.util.Arrays;

public final class z50 extends sy1 {
    @Override
    public final k01 a(n01 n01Var, ByteBuffer byteBuffer) {
        ag1 ag1Var = new ag1(byteBuffer.limit(), byteBuffer.array());
        String strQ = ag1Var.q();
        strQ.getClass();
        String strQ2 = ag1Var.q();
        strQ2.getClass();
        return new k01(new y50(strQ, strQ2, ag1Var.p(), ag1Var.p(), Arrays.copyOfRange(ag1Var.c(), ag1Var.d(), ag1Var.e())));
    }
}
