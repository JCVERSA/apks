package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class zq<T extends View> implements zd<T> {
    private final List<zd<T>> a;

    /* JADX WARN: Multi-variable type inference failed */
    public zq(List<? extends zd<T>> list) {
        y45.j(list, "animators");
        this.a = list;
    }

    @Override
    public final void a(T t) {
        y45.j(t, "view");
        Iterator<zd<T>> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(t);
        }
    }

    @Override
    public final void cancel() {
        Iterator<zd<T>> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }
}
