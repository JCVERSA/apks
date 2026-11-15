package com.google.zxing.pdf417.decoder;

final class d {

    private final int f32142a;

    private final int f32143b;

    private final int f32144c;

    private final int f32145d;

    private int f32146e = -1;

    d(int i10, int i11, int i12, int i13) {
        this.f32142a = i10;
        this.f32143b = i11;
        this.f32144c = i12;
        this.f32145d = i13;
    }

    int a() {
        return this.f32144c;
    }

    int b() {
        return this.f32143b;
    }

    int c() {
        return this.f32146e;
    }

    int d() {
        return this.f32142a;
    }

    int e() {
        return this.f32145d;
    }

    int f() {
        return this.f32143b - this.f32142a;
    }

    boolean g() {
        return h(this.f32146e);
    }

    boolean h(int i10) {
        return i10 != -1 && this.f32144c == (i10 % 3) * 3;
    }

    void i(int i10) {
        this.f32146e = i10;
    }

    void j() {
        this.f32146e = ((this.f32145d / 30) * 3) + (this.f32144c / 3);
    }

    public String toString() {
        return this.f32146e + "|" + this.f32145d;
    }
}
