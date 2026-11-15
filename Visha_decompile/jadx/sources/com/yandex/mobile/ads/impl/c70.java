package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.io.File;

public final class c70 {
    private final r10 a;
    private final ny1 b;

    public c70() {
        this(new r10(), new ny1());
    }

    public final my1 a(Context context) {
        y45.j(context, "context");
        this.a.getClass();
        File fileA = r10.a(context, "mobileads-video-cache");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        or0 or0Var = new or0(j01.a.a(context, 41943040L, (ju1VarA == null || ju1VarA.B() == 0) ? 52428800L : ju1VarA.B()));
        k60 k60Var = new k60(context);
        this.b.getClass();
        y45.j(fileA, "cacheDir");
        y45.j(or0Var, "cacheEvictor");
        y45.j(k60Var, "databaseProvider");
        return new my1(fileA, or0Var, k60Var);
    }

    public c70(r10 r10Var, ny1 ny1Var) {
        y45.j(r10Var, "diskCacheProvider");
        y45.j(ny1Var, "simpleCacheFactory");
        this.a = r10Var;
        this.b = ny1Var;
    }
}
