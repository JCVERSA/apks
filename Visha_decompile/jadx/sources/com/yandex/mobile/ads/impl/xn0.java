package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class xn0 implements rc2 {
    private final ht a;
    private final String b;
    private final int c;
    private final int d;
    private final String e;
    private final Integer f;
    private final String g;

    public xn0(ht htVar, String str, int i, int i2, String str2, Integer num, String str3) {
        y45.j(htVar, "adBreakPosition");
        y45.j(str, "url");
        this.a = htVar;
        this.b = str;
        this.c = i;
        this.d = i2;
        this.e = str2;
        this.f = num;
        this.g = str3;
    }

    public final ht a() {
        return this.a;
    }

    public final int getAdHeight() {
        return this.d;
    }

    public final int getAdWidth() {
        return this.c;
    }

    public final String getApiFramework() {
        return this.g;
    }

    public final Integer getBitrate() {
        return this.f;
    }

    public final String getMediaType() {
        return this.e;
    }

    @Override
    public final String getUrl() {
        return this.b;
    }
}
