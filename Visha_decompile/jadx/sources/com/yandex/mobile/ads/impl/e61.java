package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class e61 extends Exception {
    private final String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e61(String str) {
        super(str);
        y45.j(str, "detailMessage");
        this.b = str;
    }

    public final String a() {
        return this.b;
    }
}
