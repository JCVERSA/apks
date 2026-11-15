package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ob1 {
    private final rg2 a;
    private final xe2 b;
    private final o3 c;
    private final o8<?> d;
    private final ue2 e;
    private final jb1 f;
    private final sj0 g;
    private final yx1 h;

    public ob1(rg2 rg2Var, xe2 xe2Var, o3 o3Var, o8 o8Var, ue2 ue2Var, db1 db1Var, sj0 sj0Var, yx1 yx1Var) {
        y45.j(rg2Var, "videoViewAdapter");
        y45.j(xe2Var, "videoOptions");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(ue2Var, "videoImpressionListener");
        y45.j(db1Var, "nativeVideoPlaybackEventListener");
        y45.j(sj0Var, "imageProvider");
        this.a = rg2Var;
        this.b = xe2Var;
        this.c = o3Var;
        this.d = o8Var;
        this.e = ue2Var;
        this.f = db1Var;
        this.g = sj0Var;
        this.h = yx1Var;
    }

    public final nb1 a(Context context, sa1 sa1Var, lb2 lb2Var, ng2 ng2Var) {
        y45.j(context, "context");
        y45.j(sa1Var, "videoAdPlayer");
        y45.j(lb2Var, "video");
        y45.j(ng2Var, "videoTracker");
        return new nb1(context, this.d, this.c, sa1Var, lb2Var, this.b, this.a, new uc2(this.c, this.d), ng2Var, this.e, this.f, this.g, this.h);
    }
}
