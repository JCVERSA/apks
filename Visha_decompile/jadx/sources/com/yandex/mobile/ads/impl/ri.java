package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.avi.AviExtractor;

final class ri implements oi {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    private ri(int i, int i2, int i3, int i4, int i5) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
    }

    public static ri a(ag1 ag1Var) {
        int iK = ag1Var.k();
        ag1Var.f(12);
        ag1Var.k();
        int iK2 = ag1Var.k();
        int iK3 = ag1Var.k();
        ag1Var.f(4);
        int iK4 = ag1Var.k();
        int iK5 = ag1Var.k();
        ag1Var.f(8);
        return new ri(iK, iK2, iK3, iK4, iK5);
    }

    @Override
    public final int getType() {
        return AviExtractor.FOURCC_strh;
    }
}
