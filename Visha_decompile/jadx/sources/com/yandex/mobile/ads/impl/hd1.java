package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class hd1 {
    private static final Object a = new Object();
    private static volatile iq1 b;

    /* JADX WARN: Code duplicated, block: B:20:0x0038  */
    public static final iq1 a(Context context) {
        iq1 iq1VarA;
        int iIntValue;
        Integer numE;
        y45.j(context, "context");
        iq1 iq1Var = b;
        if (iq1Var != null) {
            return iq1Var;
        }
        synchronized (a) {
            try {
                iq1 iq1Var2 = b;
                if (iq1Var2 == null) {
                    y45.j(context, "context");
                    int i = pw1.l;
                    ju1 ju1VarA = pw1.a.a().a(context);
                    if (ju1VarA == null || (numE = ju1VarA.E()) == null) {
                        iIntValue = 1;
                    } else {
                        if (numE.intValue() == 0) {
                            numE = null;
                        }
                        if (numE != null) {
                            iIntValue = numE.intValue();
                        } else {
                            iIntValue = 1;
                        }
                    }
                    iq1VarA = jq1.a(context, iIntValue);
                    b = iq1VarA;
                    iq1VarA.a();
                } else {
                    iq1VarA = iq1Var2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iq1VarA;
    }
}
