package com.yandex.mobile.ads.impl;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.y45;

public final class zi2<T> implements qk.a<T> {
    private final dq1<T> a;

    public static final class a {
        private a() {
        }

        public static sb2 b(si2 si2Var) {
            if (si2Var instanceof g50) {
                return sb2.a.a((g50) si2Var);
            }
            if (si2Var instanceof cg1) {
                return sb2.a.a();
            }
            xc1 xc1Var = si2Var.b;
            if (xc1Var == null) {
                return sb2.a.a(si2Var.getMessage());
            }
            int i = xc1Var.a;
            if (i >= 500) {
                return sb2.a.b();
            }
            String str = "Network Error.  Code: " + i + Consts.DOT;
            byte[] bArr = xc1Var.b;
            y45.i(bArr, "data");
            String str2 = str + " Data: \n" + new String(bArr, defpackage.qv0.b);
            sp0.c(new Object[0]);
            return sb2.a.b(str2);
        }

        public a(int i) {
            this();
        }
    }

    public zi2(dq1<T> dq1Var) {
        this.a = dq1Var;
    }

    @Override
    public final void a(si2 si2Var) {
        y45.j(si2Var, "error");
        if (this.a != null) {
            this.a.a(a.b(si2Var));
        }
    }

    @Override
    public final void a(T t) {
        y45.j(t, "response");
        dq1<T> dq1Var = this.a;
        if (dq1Var != null) {
            dq1Var.a(t);
        }
    }
}
