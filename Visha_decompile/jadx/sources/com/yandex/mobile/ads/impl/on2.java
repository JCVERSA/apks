package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class on2 implements fb2 {
    private final ve1 a;

    public on2(ve1 ve1Var) {
        y45.j(ve1Var, "omSdkUsageValidator");
        this.a = ve1Var;
    }

    @Override
    public final nn2 a(Context context, ad2 ad2Var, od2 od2Var, List list) {
        y45.j(context, "context");
        y45.j(ad2Var, "videoAdPosition");
        y45.j(list, "verifications");
        if (this.a.a(context)) {
            return new nn2(context, ad2Var, od2Var, list, new kg2(context), new we1(), new en2(context).c());
        }
        return null;
    }
}
