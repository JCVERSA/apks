package com.android.billingclient.api;

public final class x {

    private final String f18586a;

    public static class a {

        private String f18587a;

        a(l1 l1Var) {
        }

        public x a() {
            if (this.f18587a != null) {
                return new x(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        public a b(String str) {
            this.f18587a = str;
            return this;
        }
    }

    x(a aVar, m1 m1Var) {
        this.f18586a = aVar.f18587a;
    }

    public static a a() {
        return new a(null);
    }

    public final String b() {
        return this.f18586a;
    }
}
