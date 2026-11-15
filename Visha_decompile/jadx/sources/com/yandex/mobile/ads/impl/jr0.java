package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class jr0<V extends ViewGroup> {
    private final List<fr0<V>> a;

    public jr0(List<fr0<V>> list) {
        y45.j(list, "layoutDesigns");
        this.a = list;
    }

    public final fr0<V> a(Context context) {
        Object next;
        y45.j(context, "context");
        Iterator<T> it = this.a.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((fr0) next).b().a(context)) {
                return (fr0) next;
            }
        }
        next = null;
        return (fr0) next;
    }
}
