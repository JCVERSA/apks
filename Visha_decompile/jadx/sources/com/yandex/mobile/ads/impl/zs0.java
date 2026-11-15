package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;

public final class zs0 {
    public static ArrayList a(Context context) {
        y45.j(context, "context");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new dr0(context, new at0()));
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA != null && !ju1VarA.e0()) {
            arrayList.add(ye0.a(context));
            arrayList.add(vf0.a(context));
        }
        return arrayList;
    }
}
