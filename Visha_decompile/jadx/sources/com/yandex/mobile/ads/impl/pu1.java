package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class pu1 {
    private static final Object b = new Object();
    private static volatile pu1 c;
    public static final int d = 0;
    private final HashMap a;

    public static final class a {
        public static pu1 a() {
            pu1 pu1Var;
            pu1 pu1Var2 = pu1.c;
            if (pu1Var2 != null) {
                return pu1Var2;
            }
            synchronized (pu1.b) {
                pu1Var = pu1.c;
                if (pu1Var == null) {
                    pu1Var = new pu1(0);
                    pu1.c = pu1Var;
                }
            }
            return pu1Var;
        }
    }

    private pu1() {
        this.a = new HashMap();
    }

    public final void a(Context context, ju1 ju1Var) {
        HashSet hashSet;
        y45.j(context, "context");
        y45.j(ju1Var, "sdkConfiguration");
        synchronized (b) {
            hashSet = new HashSet(this.a.keySet());
            int i = pw1.l;
            pw1.a.a().a(context, ju1Var);
            zfb zfbVar = zfb.a;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((zu1) it.next()).a(context, ju1Var);
        }
    }

    public pu1(int i) {
        this();
    }

    public final void a(lu1 lu1Var) {
        y45.j(lu1Var, "listener");
        synchronized (b) {
            try {
                if (!this.a.containsKey(lu1Var)) {
                    this.a.put(lu1Var, null);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
