package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.avi.AviExtractor;

final class x22 implements oi {
    public final String a;

    private x22(String str) {
        this.a = str;
    }

    public static x22 a(ag1 ag1Var) {
        return new x22(ag1Var.a(ag1Var.a(), lo.c));
    }

    @Override
    public final int getType() {
        return AviExtractor.FOURCC_strn;
    }
}
