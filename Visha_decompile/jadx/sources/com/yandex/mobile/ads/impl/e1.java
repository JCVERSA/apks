package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.res.Configuration;
import defpackage.y45;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

public final class e1 {
    private final ConcurrentHashMap.KeySetView<l1, Boolean> a;
    private final ConcurrentHashMap.KeySetView<f1, Boolean> b;
    private int c;

    public e1(Context context) {
        y45.j(context, "context");
        this.a = ConcurrentHashMap.newKeySet();
        this.b = ConcurrentHashMap.newKeySet();
        this.c = a(context);
    }

    public final void a(f1 f1Var) {
        y45.j(f1Var, "focusListener");
        this.b.add(f1Var);
    }

    public final void b() {
        Iterator<f1> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    private static int a(Context context) {
        return context.getResources().getConfiguration().orientation;
    }

    public final void b(f1 f1Var) {
        y45.j(f1Var, "focusListener");
        this.b.remove(f1Var);
    }

    public final void a(Configuration configuration) {
        y45.j(configuration, "config");
        int i = configuration.orientation;
        if (i != this.c) {
            Iterator<l1> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.c = i;
        }
    }

    public final void a() {
        Iterator<f1> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }
}
