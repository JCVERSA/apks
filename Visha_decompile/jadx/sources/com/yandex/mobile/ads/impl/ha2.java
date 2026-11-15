package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class ha2 {
    private final p2 a;
    private final Map<String, String> b;

    public static final class a {
        private final p2 a;
        private Map<String, String> b;

        public a(p2 p2Var) {
            y45.j(p2Var, "adBreak");
            this.a = p2Var;
            ce2.a(p2Var);
        }

        public final p2 a() {
            return this.a;
        }

        public final Map<String, String> b() {
            return this.b;
        }

        public final a c() {
            this.b = null;
            return this;
        }
    }

    private ha2(a aVar) {
        this.a = aVar.a();
        this.b = aVar.b();
    }

    public final p2 a() {
        return this.a;
    }

    public final Map<String, String> b() {
        return this.b;
    }

    public ha2(a aVar, int i) {
        this(aVar);
    }
}
