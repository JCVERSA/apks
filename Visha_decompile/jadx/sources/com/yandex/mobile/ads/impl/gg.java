package com.yandex.mobile.ads.impl;

public final class gg {
    private final float a;

    public gg(float f) {
        this.a = f == 0.0f ? 1.7777778f : f;
    }

    public final int a(int i) {
        return Math.round(i / this.a);
    }

    public final int b(int i) {
        return Math.round(i * this.a);
    }
}
