package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.y45;
import kotlin.jvm.internal.Lambda;

public final class ip0 {
    private final String a = "Yandex Mobile Adsintegrated incorrectly";

    public static final class a extends Lambda implements e74 {
        public static final a b = new a();

        public a() {
            super(1);
        }

        public static String a(bp0 bp0Var) {
            y45.j(bp0Var, "cause");
            return "\t·\t" + bp0Var.getMessage();
        }

        @Override
        public final Object invoke(Object obj) {
            return a((bp0) obj);
        }
    }

    public final String a(i11.a.b bVar) {
        y45.j(bVar, "result");
        return defpackage.i81.y0(bVar.a(), "\n", this.a + "\n", null, 0, null, a.b, 28, null);
    }
}
