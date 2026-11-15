package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.avi.AviExtractor;

final class qi implements oi {
    public final int a;
    public final int b;
    public final int c;

    private qi(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public static qi a(ag1 ag1Var) {
        int iK = ag1Var.k();
        ag1Var.f(8);
        int iK2 = ag1Var.k();
        int iK3 = ag1Var.k();
        ag1Var.f(4);
        ag1Var.k();
        ag1Var.f(12);
        return new qi(iK, iK2, iK3);
    }

    @Override
    public final int getType() {
        return AviExtractor.FOURCC_avih;
    }
}
