package com.airbnb.lottie;

import android.graphics.Bitmap;

public class l0 {

    private final int f17146a;

    private final int f17147b;

    private final String f17148c;

    private final String f17149d;

    private final String f17150e;

    private Bitmap f17151f;

    public l0(int i10, int i11, String str, String str2, String str3) {
        this.f17146a = i10;
        this.f17147b = i11;
        this.f17148c = str;
        this.f17149d = str2;
        this.f17150e = str3;
    }

    public l0 a(float f10) {
        l0 l0Var = new l0((int) (this.f17146a * f10), (int) (this.f17147b * f10), this.f17148c, this.f17149d, this.f17150e);
        Bitmap bitmap = this.f17151f;
        if (bitmap != null) {
            l0Var.g(Bitmap.createScaledBitmap(bitmap, l0Var.f17146a, l0Var.f17147b, true));
        }
        return l0Var;
    }

    public Bitmap b() {
        return this.f17151f;
    }

    public String c() {
        return this.f17149d;
    }

    public int d() {
        return this.f17147b;
    }

    public String e() {
        return this.f17148c;
    }

    public int f() {
        return this.f17146a;
    }

    public void g(Bitmap bitmap) {
        this.f17151f = bitmap;
    }
}
