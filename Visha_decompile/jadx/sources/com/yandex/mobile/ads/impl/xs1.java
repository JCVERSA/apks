package com.yandex.mobile.ads.impl;

import defpackage.ue3;
import defpackage.y45;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

public final class xs1 extends RuntimeException {
    private final IOException b;
    private IOException c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xs1(IOException iOException) {
        super(iOException);
        y45.j(iOException, "firstConnectException");
        this.b = iOException;
        this.c = iOException;
    }

    public final void a(IOException iOException) throws IllegalAccessException, InvocationTargetException {
        y45.j(iOException, "e");
        ue3.a(this.b, iOException);
        this.c = iOException;
    }

    public final IOException b() {
        return this.c;
    }

    public final IOException a() {
        return this.b;
    }
}
