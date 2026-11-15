package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;

public final class vt0<T> {
    private final wt0 a;

    public vt0(Context context, en2 en2Var, et etVar) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(etVar, "instreamAd");
        this.a = new wt0(context, en2Var, etVar);
    }

    public final ut0<T> a(pt0<T> pt0Var, String str) {
        y45.j(pt0Var, "manualAdBreakFactory");
        ArrayList arrayListA = this.a.a(str);
        ArrayDeque arrayDeque = new ArrayDeque();
        Iterator it = arrayListA.iterator();
        while (it.hasNext()) {
            arrayDeque.add(pt0Var.a((qt0) it.next()));
        }
        return new ut0<>(arrayDeque);
    }
}
