package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class yg implements View.OnClickListener {
    private final ff1 a;
    private final String b;
    private final String c;
    private final mg2 d;

    public yg(ff1 ff1Var, String str, String str2, mg2 mg2Var) {
        y45.j(ff1Var, "adClickHandler");
        y45.j(str, "url");
        y45.j(str2, "assetName");
        y45.j(mg2Var, "videoTracker");
        this.a = ff1Var;
        this.b = str;
        this.c = str2;
        this.d = mg2Var;
    }

    @Override
    public final void onClick(View view) {
        y45.j(view, "v");
        this.d.a(this.c);
        this.a.a(this.b);
    }
}
