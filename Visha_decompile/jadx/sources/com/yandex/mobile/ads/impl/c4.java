package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class c4 {
    private final Context a;
    private final gt b;
    private final jm0 c;
    private final sj0 d;
    private final cn0 e;
    private final pc2<go0> f;

    public c4(Context context, gt gtVar, jm0 jm0Var, yk1 yk1Var, cn0 cn0Var, i4 i4Var) {
        y45.j(context, "context");
        y45.j(gtVar, "adBreak");
        y45.j(jm0Var, "adPlayerController");
        y45.j(yk1Var, "imageProvider");
        y45.j(cn0Var, "adViewsHolderManager");
        y45.j(i4Var, "playbackEventsListener");
        this.a = context;
        this.b = gtVar;
        this.c = jm0Var;
        this.d = yk1Var;
        this.e = cn0Var;
        this.f = i4Var;
    }

    public final b4 a() {
        return new b4(new m4(this.a, this.b, this.c, this.d, this.e, this.f).a(this.b.f()));
    }
}
