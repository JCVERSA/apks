package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public final class xv1 {
    private final Context a;
    private final i11 b;

    public xv1(Context context, i11 i11Var) {
        y45.j(context, "context");
        y45.j(i11Var, "integrationChecker");
        this.a = context;
        this.b = i11Var;
    }

    public final yx a() {
        i11 i11Var = this.b;
        Context context = this.a;
        i11Var.getClass();
        i11.a aVarA = i11.a(context);
        if (y45.e(aVarA, i11.a.C0318a.a)) {
            return new yx(true, defpackage.y71.k());
        }
        if (!(aVarA instanceof i11.a.b)) {
            throw new NoWhenBranchMatchedException();
        }
        List<bp0> listA = ((i11.a.b) aVarA).a();
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((bp0) it.next()).getMessage());
        }
        return new yx(false, arrayList);
    }
}
