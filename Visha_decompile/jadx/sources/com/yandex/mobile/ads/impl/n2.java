package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.ye9;
import java.util.Set;

public final class n2 {
    private static final Set<mq1> b = ye9.j(mq1.c, mq1.e, mq1.d);
    private static final Object c = new Object();
    private static volatile n2 d;
    public static final int e = 0;
    private final l2 a;

    public static final class a {
        private a() {
        }

        public static n2 a(Context context) {
            n2 n2Var;
            int i = n2.e;
            int i2 = m2.d;
            l2 l2VarC = m2.a.a(context).c();
            y45.j(context, "context");
            y45.j(l2VarC, "adBlockerStateStorage");
            n2 n2Var2 = n2.d;
            if (n2Var2 != null) {
                return n2Var2;
            }
            synchronized (n2.c) {
                n2Var = n2.d;
                if (n2Var == null) {
                    n2Var = new n2(l2VarC, 0);
                    n2.d = n2Var;
                }
            }
            return n2Var;
        }

        public a(int i) {
            this();
        }
    }

    private n2(l2 l2Var) {
        this.a = l2Var;
    }

    public final void a(mq1 mq1Var, Integer num) {
        y45.j(mq1Var, "requestType");
        if (b.contains(mq1Var)) {
            if (num == null || num.intValue() >= 500) {
                this.a.c();
            } else {
                this.a.a();
            }
        }
    }

    public n2(l2 l2Var, int i) {
        this(l2Var);
    }

    public final void a(Boolean bool, g2 g2Var) {
        y45.j(g2Var, "requestPolicy");
        if (bool != null) {
            l2.a(this.a, bool, g2Var, Long.valueOf(System.currentTimeMillis()), null, 8);
        }
    }
}
