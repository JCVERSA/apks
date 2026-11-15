package com.yandex.mobile.ads.impl;

public final class m00 implements nr1 {
    private int a;
    private int b;
    private final int c;
    private final float d;

    public m00() {
        this(1.0f, 2500, 1);
    }

    @Override
    public final int a() {
        return this.a;
    }

    @Override
    public final int b() {
        return this.b;
    }

    public m00(float f, int i, int i2) {
        this.a = i;
        this.c = i2;
        this.d = f;
    }

    @Override
    public final void a(si2 si2Var) throws si2 {
        int i = this.b + 1;
        this.b = i;
        int i2 = this.a;
        this.a = i2 + ((int) (i2 * this.d));
        if (i > this.c) {
            throw si2Var;
        }
    }
}
