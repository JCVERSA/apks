package com.google.zxing.qrcode.detector;

import com.google.zxing.k;

public final class a extends k {

    private final float f32185c;

    a(float f10, float f11, float f12) {
        super(f10, f11);
        this.f32185c = f12;
    }

    boolean f(float f10, float f11, float f12) {
        if (Math.abs(f11 - d()) > f10 || Math.abs(f12 - c()) > f10) {
            return false;
        }
        float fAbs = Math.abs(f10 - this.f32185c);
        return fAbs <= 1.0f || fAbs <= this.f32185c;
    }

    a g(float f10, float f11, float f12) {
        return new a((c() + f11) / 2.0f, (d() + f10) / 2.0f, (this.f32185c + f12) / 2.0f);
    }
}
