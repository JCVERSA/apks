package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class qa2 {
    private final bb2 a;

    public qa2(Context context, db2 db2Var, bb2 bb2Var) {
        y45.j(context, "context");
        y45.j(db2Var, "verificationResourcesLoaderProvider");
        this.a = bb2Var;
    }

    public final void a(List<mb2> list, cb2 cb2Var) {
        y45.j(list, "videoAds");
        y45.j(cb2Var, "listener");
        if (this.a != null && (!(list instanceof Collection) || !list.isEmpty())) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (!((mb2) it.next()).d().isEmpty()) {
                    this.a.a(cb2Var);
                    return;
                }
            }
        }
        cb2Var.a();
    }
}
