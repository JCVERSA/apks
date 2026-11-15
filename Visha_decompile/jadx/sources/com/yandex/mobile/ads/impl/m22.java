package com.yandex.mobile.ads.impl;

import defpackage.y45;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class m22 extends xd {
    public static final int h = 0;

    public static final class a {
        private a() {
        }

        public static m22 a(String str) {
            y45.j(str, "packageName");
            try {
                Class<?> cls = Class.forName(str + ".OpenSSLSocketImpl");
                y45.h(cls, "null cannot be cast to non-null type java.lang.Class<in javax.net.ssl.SSLSocket>");
                Class<?> cls2 = Class.forName(str + ".OpenSSLSocketFactoryImpl");
                y45.h(cls2, "null cannot be cast to non-null type java.lang.Class<in javax.net.ssl.SSLSocketFactory>");
                Class<?> cls3 = Class.forName(str + ".SSLParametersImpl");
                y45.g(cls3);
                return new m22(cls, cls2, cls3);
            } catch (Exception e) {
                int i = rh1.c;
                rh1.a.a().getClass();
                rh1.a(5, "unable to load android socket classes", e);
                return null;
            }
        }

        public a(int i) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m22(Class<? super SSLSocket> cls, Class<? super SSLSocketFactory> cls2, Class<?> cls3) {
        super(cls);
        y45.j(cls, "sslSocketClass");
        y45.j(cls2, "sslSocketFactoryClass");
        y45.j(cls3, "paramClass");
    }
}
