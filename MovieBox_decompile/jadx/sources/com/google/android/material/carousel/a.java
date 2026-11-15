package com.google.android.material.carousel;

final class a {

    final int f27777a;

    float f27778b;

    int f27779c;

    int f27780d;

    float f27781e;

    float f27782f;

    final int f27783g;

    final float f27784h;

    a(int i10, float f10, float f11, float f12, int i11, float f13, int i12, float f14, int i13, float f15) {
        this.f27777a = i10;
        this.f27778b = d1.a.a(f10, f11, f12);
        this.f27779c = i11;
        this.f27781e = f13;
        this.f27780d = i12;
        this.f27782f = f14;
        this.f27783g = i13;
        d(f15, f11, f12, f14);
        this.f27784h = b(f14);
    }

    private float a(float f10, int i10, float f11, int i11, int i12) {
        if (i10 <= 0) {
            f11 = 0.0f;
        }
        float f12 = i11 / 2.0f;
        return (f10 - ((i10 + f12) * f11)) / (i12 + f12);
    }

    private float b(float f10) {
        if (g()) {
            return Math.abs(f10 - this.f27782f) * this.f27777a;
        }
        return Float.MAX_VALUE;
    }

    static a c(float f10, float f11, float f12, float f13, int[] iArr, float f14, int[] iArr2, float f15, int[] iArr3) {
        a aVar = null;
        int i10 = 1;
        for (int i11 : iArr3) {
            int length = iArr2.length;
            int i12 = 0;
            while (i12 < length) {
                int i13 = iArr2[i12];
                int length2 = iArr.length;
                int i14 = 0;
                while (i14 < length2) {
                    int i15 = i14;
                    int i16 = length2;
                    int i17 = i12;
                    int i18 = length;
                    a aVar2 = new a(i10, f11, f12, f13, iArr[i14], f14, i13, f15, i11, f10);
                    if (aVar == null || aVar2.f27784h < aVar.f27784h) {
                        if (aVar2.f27784h == 0.0f) {
                            return aVar2;
                        }
                        aVar = aVar2;
                    }
                    i10++;
                    i14 = i15 + 1;
                    length2 = i16;
                    i12 = i17;
                    length = i18;
                }
                i12++;
            }
        }
        return aVar;
    }

    private void d(float f10, float f11, float f12, float f13) {
        float f14 = f10 - f();
        int i10 = this.f27779c;
        if (i10 > 0 && f14 > 0.0f) {
            float f15 = this.f27778b;
            this.f27778b = f15 + Math.min(f14 / i10, f12 - f15);
        } else if (i10 > 0 && f14 < 0.0f) {
            float f16 = this.f27778b;
            this.f27778b = f16 + Math.max(f14 / i10, f11 - f16);
        }
        int i11 = this.f27779c;
        float f17 = i11 > 0 ? this.f27778b : 0.0f;
        this.f27778b = f17;
        float fA = a(f10, i11, f17, this.f27780d, this.f27783g);
        this.f27782f = fA;
        float f18 = (this.f27778b + fA) / 2.0f;
        this.f27781e = f18;
        int i12 = this.f27780d;
        if (i12 <= 0 || fA == f13) {
            return;
        }
        float f19 = (f13 - fA) * this.f27783g;
        float fMin = Math.min(Math.abs(f19), f18 * 0.1f * i12);
        if (f19 > 0.0f) {
            this.f27781e -= fMin / this.f27780d;
            this.f27782f += fMin / this.f27783g;
        } else {
            this.f27781e += fMin / this.f27780d;
            this.f27782f -= fMin / this.f27783g;
        }
    }

    private float f() {
        return (this.f27782f * this.f27783g) + (this.f27781e * this.f27780d) + (this.f27778b * this.f27779c);
    }

    private boolean g() {
        int i10 = this.f27783g;
        if (i10 <= 0 || this.f27779c <= 0 || this.f27780d <= 0) {
            return i10 <= 0 || this.f27779c <= 0 || this.f27782f > this.f27778b;
        }
        float f10 = this.f27782f;
        float f11 = this.f27781e;
        return f10 > f11 && f11 > this.f27778b;
    }

    int e() {
        return this.f27779c + this.f27780d + this.f27783g;
    }

    public String toString() {
        return "Arrangement [priority=" + this.f27777a + ", smallCount=" + this.f27779c + ", smallSize=" + this.f27778b + ", mediumCount=" + this.f27780d + ", mediumSize=" + this.f27781e + ", largeCount=" + this.f27783g + ", largeSize=" + this.f27782f + ", cost=" + this.f27784h + "]";
    }
}
