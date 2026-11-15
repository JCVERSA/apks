package com.yandex.mobile.ads.impl;

import android.net.Uri;
import defpackage.y45;

public final class d6 {
    private final e4 a;
    private final bo0 b;
    private final a5 c;
    private final p5 d;

    public d6(p9 p9Var, e4 e4Var, bo0 bo0Var) {
        y45.j(p9Var, "adStateDataController");
        y45.j(e4Var, "adGroupIndexProvider");
        y45.j(bo0Var, "instreamSourceUrlProvider");
        this.a = e4Var;
        this.b = bo0Var;
        this.c = p9Var.a();
        this.d = p9Var.c();
    }

    public final void a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        xn0 xn0VarG = go0Var.g();
        v4 v4Var = new v4(this.a.a(xn0VarG.a()), go0Var.b().a() - 1);
        this.c.a(v4Var, go0Var);
        com.google.android.exoplayer2.source.ads.a aVarA = this.d.a();
        if (aVarA.g(v4Var.a(), v4Var.b())) {
            return;
        }
        com.google.android.exoplayer2.source.ads.a aVarJ = aVarA.j(v4Var.a(), go0Var.b().b());
        y45.i(aVarJ, "withAdCount(...)");
        this.b.getClass();
        y45.j(xn0VarG, "mediaFile");
        y45.j(go0Var, "videoAd");
        com.google.android.exoplayer2.source.ads.a aVarM = aVarJ.m(v4Var.a(), v4Var.b(), Uri.parse(xn0VarG.getUrl()));
        y45.i(aVarM, "withAdUri(...)");
        this.d.a(aVarM);
    }
}
