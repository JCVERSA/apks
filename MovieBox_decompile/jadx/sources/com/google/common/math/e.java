package com.google.common.math;

import com.google.common.base.m;

public abstract class e {

    public static final class b {

        private final double f30069a;

        private final double f30070b;

        public e a(double d10) {
            m.d(!Double.isNaN(d10));
            return com.google.common.math.c.c(d10) ? new d(d10, this.f30070b - (this.f30069a * d10)) : new C0389e(this.f30069a);
        }

        private b(double d10, double d11) {
            this.f30069a = d10;
            this.f30070b = d11;
        }
    }

    private static final class c extends e {

        static final c f30071a = new c();

        private c() {
        }

        public String toString() {
            return "NaN";
        }
    }

    private static final class d extends e {

        final double f30072a;

        final double f30073b;

        e f30074c = null;

        d(double d10, double d11) {
            this.f30072a = d10;
            this.f30073b = d11;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.f30072a), Double.valueOf(this.f30073b));
        }
    }

    private static final class C0389e extends e {

        final double f30075a;

        e f30076b = null;

        C0389e(double d10) {
            this.f30075a = d10;
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.f30075a));
        }
    }

    public static e a() {
        return c.f30071a;
    }

    public static e b(double d10) {
        m.d(com.google.common.math.c.c(d10));
        return new d(0.0d, d10);
    }

    public static b c(double d10, double d11) {
        m.d(com.google.common.math.c.c(d10) && com.google.common.math.c.c(d11));
        return new b(d10, d11);
    }

    public static e d(double d10) {
        m.d(com.google.common.math.c.c(d10));
        return new C0389e(d10);
    }
}
