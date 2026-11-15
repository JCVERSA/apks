package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;

public final class ky0 extends ly0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ky0(o3 o3Var) {
        super(o3Var);
        y45.j(o3Var, "adConfiguration");
    }

    @Override
    public final Map<String, Object> a(Context context) {
        y45.j(context, "context");
        Map<String, Object> mapC = kotlin.collections.a.C(super.a(context));
        gz1 gz1VarR = a().r();
        if (gz1VarR != null) {
            mapC.put("width", Integer.valueOf(gz1VarR.c(context)));
            mapC.put("height", Integer.valueOf(gz1VarR.a(context)));
        }
        return mapC;
    }
}
