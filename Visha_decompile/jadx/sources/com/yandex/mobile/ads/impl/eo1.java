package com.yandex.mobile.ads.impl;

import defpackage.y45;
import okio.BufferedSource;

public final class eo1 extends zq1 {
    private final String a;
    private final long b;
    private final BufferedSource c;

    public eo1(String str, long j, BufferedSource bufferedSource) {
        y45.j(bufferedSource, "source");
        this.a = str;
        this.b = j;
        this.c = bufferedSource;
    }

    @Override
    public final long a() {
        return this.b;
    }

    @Override
    public final cx0 b() {
        String str = this.a;
        if (str != null) {
            int i = cx0.d;
            y45.j(str, "<this>");
            try {
                return cx0.a.a(str);
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }

    @Override
    public final BufferedSource c() {
        return this.c;
    }
}
