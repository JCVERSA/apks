package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import defpackage.y45;

public final class g42 {
    private du a;

    /* JADX WARN: Code duplicated, block: B:7:0x002f  */
    public final f42 a(Context context, bv1 bv1Var, o3 o3Var, o8<?> o8Var, t8 t8Var) {
        boolean z;
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(t8Var, "receiver");
        du duVar = this.a;
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        if (ju1VarA != null) {
            z = ju1VarA.s();
        }
        if (duVar != null && z) {
            return new lv(duVar, t8Var, new Handler(Looper.getMainLooper()));
        }
        t1 t1Var = new t1(bv1Var);
        int i2 = p50.e;
        return new zy(context, t1Var, o8Var, t8Var, bv1Var, p50.a.a(context), o3Var);
    }

    public final void a(com.yandex.mobile.ads.nativeads.c cVar) {
        this.a = cVar;
    }
}
