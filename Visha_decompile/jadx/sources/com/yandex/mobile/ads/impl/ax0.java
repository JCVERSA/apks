package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ax0 {
    private final zw0 a;
    private final Context b;

    public ax0(Context context, zw0 zw0Var) {
        y45.j(context, "context");
        y45.j(zw0Var, "mediaSourcePathProvider");
        this.a = zw0Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.b = applicationContext;
    }

    public final gm1 a(rc2 rc2Var) {
        y45.j(rc2Var, "videoAdPlaybackInfo");
        oz.a aVar = new oz.a(this.b, new cv1(dt1.a()).a(this.b));
        int i = d70.e;
        wm.a aVarA = new wm.a().a(d70.a.a().a(this.b)).a(aVar);
        y45.i(aVarA, "setUpstreamDataSourceFactory(...)");
        gm1.a aVar2 = new gm1.a(aVarA, new xz());
        this.a.getClass();
        y45.j(rc2Var, "videoAdPlaybackInfo");
        gm1 gm1VarA = aVar2.a(jw0.a(rc2Var.getUrl()));
        y45.i(gm1VarA, "createMediaSource(...)");
        return gm1VarA;
    }
}
