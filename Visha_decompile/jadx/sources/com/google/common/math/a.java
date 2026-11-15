package com.google.common.math;

import defpackage.tx2;
import defpackage.xd8;

public abstract class a {

    public static final class b {
        public final double a;
        public final double b;

        public a a(double d) {
            xd8.d(!Double.isNaN(d));
            return tx2.c(d) ? new d(d, this.b - (this.a * d)) : new e(this.a);
        }

        public b(double d, double d2) {
            this.a = d;
            this.b = d2;
        }
    }

    public static final class c extends a {
        public static final c a = new c();

        public String toString() {
            return "NaN";
        }
    }

    public static final class d extends a {
        public final double a;
        public final double b;
        public a c = null;

        public d(double d, double d2) {
            this.a = d;
            this.b = d2;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.a), Double.valueOf(this.b));
        }
    }

    public static final class e extends a {
        public final double a;
        public a b = null;

        public e(double d) {
            this.a = d;
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.a));
        }
    }

    public static a a() {
        return c.a;
    }

    public static a b(double d2) {
        xd8.d(tx2.c(d2));
        return new d(0.0d, d2);
    }

    public static b c(double d2, double d3) {
        xd8.d(tx2.c(d2) && tx2.c(d3));
        return new b(d2, d3);
    }

    public static a d(double d2) {
        xd8.d(tx2.c(d2));
        return new e(d2);
    }
}
