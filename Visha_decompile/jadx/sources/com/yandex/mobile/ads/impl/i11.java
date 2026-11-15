package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class i11 {

    public interface a {

        public static final class C0318a implements a {
            public static final C0318a a = new C0318a();

            private C0318a() {
            }
        }

        public static final class b implements a {
            private final List<bp0> a;

            public b(List<bp0> list) {
                y45.j(list, "causes");
                this.a = list;
            }

            public final List<bp0> a() {
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
                return "IncorrectIntegration(causes=" + this.a + ")";
            }
        }
    }

    public static a a(Context context) {
        y45.j(context, "context");
        a11 a11Var = new a11();
        i1 i1Var = new i1();
        Cif cif = new Cif();
        bp0 e = null;
        try {
            a11Var.a(h11.a.b);
            e = null;
        } catch (bp0 e2) {
            e = e2;
        }
        try {
            i1Var.a(context);
            e = null;
        } catch (bp0 e3) {
            e = e3;
        }
        try {
            ug1.a(context);
            e = null;
        } catch (bp0 e4) {
            e = e4;
        }
        try {
            cif.a();
        } catch (bp0 e5) {
            e = e5;
        }
        List listP = defpackage.y71.p(e, e, e, e);
        return !listP.isEmpty() ? new a.b(listP) : a.C0318a.a;
    }
}
