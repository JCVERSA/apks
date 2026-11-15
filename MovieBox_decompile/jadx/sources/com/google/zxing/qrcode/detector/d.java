package com.google.zxing.qrcode.detector;

import com.google.zxing.k;

public final class d extends k {

    private final float f32197c;

    private final int f32198d;

    d(float f10, float f11, float f12) {
        this(f10, f11, f12, 1);
    }

    boolean f(float f10, float f11, float f12) {
        if (Math.abs(f11 - d()) > f10 || Math.abs(f12 - c()) > f10) {
            return false;
        }
        float fAbs = Math.abs(f10 - this.f32197c);
        return fAbs <= 1.0f || fAbs <= this.f32197c;
    }

    d g(float f10, float f11, float f12) {
        int i10 = this.f32198d;
        int i11 = i10 + 1;
        float fC = (i10 * c()) + f11;
        float f13 = i11;
        return new d(fC / f13, ((this.f32198d * d()) + f10) / f13, ((this.f32198d * this.f32197c) + f12) / f13, i11);
    }

    public int h() {
        return this.f32198d;
    }

    public float i() {
        return this.f32197c;
    }

    private d(float f10, float f11, float f12, int i10) {
        super(f10, f11);
        this.f32197c = f12;
        this.f32198d = i10;
    }
}
