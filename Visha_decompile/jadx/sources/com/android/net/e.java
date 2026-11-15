package com.android.net;

public final class e implements r {
    private int a;
    private int b;
    private final int c;
    private final float d;

    public e() {
        this(2500, 1, 1.0f);
    }

    @Override
    public final int a() {
        return this.a;
    }

    @Override
    public final int b() {
        return this.b;
    }

    public e(int i, int i2, float f) {
        this.a = i;
        this.c = i2;
        this.d = f;
    }

    @Override
    public final void a(u uVar) throws u {
        int i = this.b + 1;
        this.b = i;
        int i2 = this.a;
        this.a = (int) (i2 + (i2 * this.d));
        if (i > this.c) {
            throw uVar;
        }
    }
}
