package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class ul0 {
    private static final Object b = new Object();
    private static volatile ul0 c;
    public static final int d = 0;
    private final WeakHashMap<View, ft> a;

    public static final class a {
        public static ul0 a() {
            if (ul0.c == null) {
                synchronized (ul0.b) {
                    try {
                        if (ul0.c == null) {
                            ul0.c = new ul0(0);
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            ul0 ul0Var = ul0.c;
            if (ul0Var != null) {
                return ul0Var;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    private ul0() {
        this.a = new WeakHashMap<>();
    }

    public final ft a(View view) {
        ft ftVar;
        y45.j(view, "view");
        synchronized (b) {
            ftVar = this.a.get(view);
        }
        return ftVar;
    }

    public ul0(int i) {
        this();
    }

    public final void a(View view, ft ftVar) {
        y45.j(view, "view");
        y45.j(ftVar, "instreamAdBinder");
        synchronized (b) {
            this.a.put(view, ftVar);
        }
    }

    public final boolean a(ft ftVar) {
        boolean z;
        y45.j(ftVar, "instreamAdBinder");
        synchronized (b) {
            Set<Map.Entry<View, ft>> setEntrySet = this.a.entrySet();
            y45.i(setEntrySet, "<get-entries>(...)");
            Iterator<Map.Entry<View, ft>> it = setEntrySet.iterator();
            z = false;
            while (it.hasNext()) {
                if (ftVar == it.next().getValue()) {
                    it.remove();
                    z = true;
                }
            }
        }
        return z;
    }
}
