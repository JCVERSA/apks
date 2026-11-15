package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class kb1 implements rc2 {
    private final String a;
    private final int b;
    private final int c;

    public kb1(String str, int i, int i2) {
        y45.j(str, "url");
        this.a = str;
        this.b = i;
        this.c = i2;
    }

    public final int getAdHeight() {
        return this.c;
    }

    public final int getAdWidth() {
        return this.b;
    }

    @Override
    public final String getUrl() {
        return this.a;
    }
}
