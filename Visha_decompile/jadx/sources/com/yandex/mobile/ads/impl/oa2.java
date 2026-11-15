package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.e74;
import defpackage.j1a;
import defpackage.y45;
import java.util.Map;
import java.util.Random;
import kotlin.jvm.internal.Lambda;

final class oa2 extends Lambda implements e74 {
    final pa2 b;
    final ia2 c;
    final o3 d;
    final Context e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oa2(pa2 pa2Var, ia2 ia2Var, o3 o3Var, Context context) {
        super(1);
        this.b = pa2Var;
        this.c = ia2Var;
        this.d = o3Var;
        this.e = context;
    }

    @Override
    public final Object invoke(Object obj) {
        in1 in1Var = (in1) obj;
        y45.j(in1Var, "queryParams");
        pa2 pa2Var = this.b;
        ia2 ia2Var = this.c;
        o3 o3Var = this.d;
        Context context = this.e;
        in1Var.a("charset", "UTF-8");
        pa2Var.a.getClass();
        in1Var.a("rnd", String.valueOf(new Random().nextInt(89999999) + 10000000));
        Map<String, String> mapA = ia2Var.a();
        if (mapA != null) {
            for (Map.Entry<String, String> entry : mapA.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (!j1a.o0(key)) {
                    in1Var.a(key, value);
                }
            }
        }
        o50 o50VarK = o3Var.k();
        pa2Var.c.getClass();
        y45.j(context, "context");
        if (!kx1.a(context)) {
            in1Var.a("uuid", o50VarK.g());
            in1Var.a("mauid", o50VarK.e());
        }
        pa2Var.b.getClass();
        hq.a(context, in1Var);
        new q50(context, o3Var).a(context, in1Var);
        return in1Var;
    }
}
