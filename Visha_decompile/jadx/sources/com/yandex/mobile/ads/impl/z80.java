package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.ky5;
import defpackage.y45;
import java.util.Map;

public final class z80 extends ak<String> {
    private final ka0 K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z80(Context context, o3 o3Var, String str, String str2, ck ckVar, ck ckVar2, ka0 ka0Var, sx1 sx1Var, cd1 cd1Var, d8 d8Var) {
        super(context, o3Var, str, str2, cd1Var, ckVar, ckVar2, d8Var, sx1Var, 1536);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(str, "url");
        y45.j(str2, "query");
        y45.j(ckVar, "requestListener");
        y45.j(ckVar2, "listener");
        y45.j(sx1Var, "sessionStorage");
        y45.j(cd1Var, "networkResponseParserCreator");
        y45.j(d8Var, "adRequestReporter");
        this.K = ka0Var;
    }

    @Override
    public final Map<String, String> e() {
        Map<String, String> mapE = super.e();
        Map mapE2 = ky5.e();
        if (this.K != null) {
            mapE2.put(vh0.M.a(), this.K.a());
        }
        mapE2.putAll(mapE);
        return ky5.d(mapE2);
    }
}
