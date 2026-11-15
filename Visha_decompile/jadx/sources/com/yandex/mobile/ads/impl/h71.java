package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

public final class h71 {
    private static final Object b = new Object();
    private static volatile h71 c;
    public static final int d = 0;
    private final Map<View, z81> a;

    public static final class a {
        public static h71 a() {
            h71 h71Var;
            h71 h71Var2 = h71.c;
            if (h71Var2 != null) {
                return h71Var2;
            }
            synchronized (h71.b) {
                h71Var = h71.c;
                if (h71Var == null) {
                    h71Var = new h71(new WeakHashMap());
                    h71.c = h71Var;
                }
            }
            return h71Var;
        }
    }

    public h71(Map<View, z81> map) {
        y45.j(map, "nativeAdViews");
        this.a = map;
    }

    public final z81 a(View view) {
        z81 z81Var;
        y45.j(view, "view");
        synchronized (b) {
            z81Var = this.a.get(view);
        }
        return z81Var;
    }

    public final void a(View view, z81 z81Var) {
        y45.j(view, "view");
        y45.j(z81Var, "nativeGenericBinder");
        synchronized (b) {
            this.a.put(view, z81Var);
            zfb zfbVar = zfb.a;
        }
    }

    public final boolean a(z81 z81Var) {
        boolean z;
        y45.j(z81Var, "nativeGenericBinder");
        synchronized (b) {
            Iterator<Map.Entry<View, z81>> it = this.a.entrySet().iterator();
            z = false;
            while (it.hasNext()) {
                if (it.next().getValue() == z81Var) {
                    it.remove();
                    z = true;
                }
            }
        }
        return z;
    }
}
