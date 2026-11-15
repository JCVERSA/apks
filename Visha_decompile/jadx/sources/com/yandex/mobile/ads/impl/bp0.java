package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class bp0 extends RuntimeException {
    private final String b;
    private final String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bp0(String str, String str2) {
        super(str);
        y45.j(str, "message");
        y45.j(str2, "displayMessage");
        this.b = str;
        this.c = str2;
    }

    public final String a() {
        return this.c;
    }

    @Override
    public final String getMessage() {
        return this.b;
    }
}
