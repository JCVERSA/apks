package com.yandex.mobile.ads.impl;

import defpackage.y45;

public interface yu1 {

    public static final class a implements yu1 {
        private final si2 a;
        private final kr b;

        public a(si2 si2Var, kr krVar) {
            y45.j(si2Var, "error");
            y45.j(krVar, "configurationSource");
            this.a = si2Var;
            this.b = krVar;
        }

        public final kr a() {
            return this.b;
        }

        public final si2 b() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && this.b == aVar.b;
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Failure(error=" + this.a + ", configurationSource=" + this.b + ")";
        }
    }

    public static final class b implements yu1 {
        private final ju1 a;
        private final kr b;

        public b(ju1 ju1Var, kr krVar) {
            y45.j(ju1Var, "sdkConfiguration");
            y45.j(krVar, "configurationSource");
            this.a = ju1Var;
            this.b = krVar;
        }

        public final kr a() {
            return this.b;
        }

        public final ju1 b() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.a, bVar.a) && this.b == bVar.b;
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Success(sdkConfiguration=" + this.a + ", configurationSource=" + this.b + ")";
        }
    }
}
