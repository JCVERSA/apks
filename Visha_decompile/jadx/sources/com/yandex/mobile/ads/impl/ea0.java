package com.yandex.mobile.ads.impl;

import defpackage.y45;

public abstract class ea0 {

    public static final class a extends ea0 {
        private final w3 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(w3 w3Var) {
            super(0);
            y45.j(w3Var, "adFetchRequestError");
            this.a = w3Var;
        }

        public final w3 a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && y45.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Failed(adFetchRequestError=" + this.a + ")";
        }
    }

    public static final class b extends ea0 {
        public static final b a = new b();

        private b() {
            super(0);
        }
    }

    public static final class c extends ea0 {
        public static final c a = new c();

        private c() {
            super(0);
        }
    }

    public static final class d extends ea0 {
        public static final d a = new d();

        private d() {
            super(0);
        }
    }

    private ea0() {
    }

    public ea0(int i) {
        this();
    }
}
