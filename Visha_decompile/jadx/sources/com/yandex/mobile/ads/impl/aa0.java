package com.yandex.mobile.ads.impl;

import defpackage.y45;

public abstract class aa0 {

    public static final class a extends aa0 {
        private final w3 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(w3 w3Var) {
            super(0);
            y45.j(w3Var, "adRequestError");
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
            return "Failure(adRequestError=" + this.a + ")";
        }
    }

    public static final class b extends aa0 {
        private final gs0 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(gs0 gs0Var) {
            super(0);
            y45.j(gs0Var, "feedItem");
            this.a = gs0Var;
        }

        public final gs0 a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && y45.e(this.a, ((b) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Success(feedItem=" + this.a + ")";
        }
    }

    private aa0() {
    }

    public aa0(int i) {
        this();
    }
}
