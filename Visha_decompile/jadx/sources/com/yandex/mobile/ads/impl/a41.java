package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class a41 implements View.OnClickListener {
    private final co0 a;
    private final f6 b;
    private final ln0 c;
    private final z31 d;

    public a41(co0 co0Var, f6 f6Var, ln0 ln0Var, z31 z31Var) {
        y45.j(co0Var, "instreamVastAdPlayer");
        y45.j(f6Var, "adPlayerVolumeConfigurator");
        y45.j(ln0Var, "instreamControlsState");
        this.a = co0Var;
        this.b = f6Var;
        this.c = ln0Var;
        this.d = z31Var;
    }

    @Override
    public final void onClick(View view) {
        y45.j(view, "volumeControl");
        boolean z = !(this.a.getVolume() == 0.0f);
        this.b.a(this.c.a(), z);
        z31 z31Var = this.d;
        if (z31Var != null) {
            z31Var.setMuted(z);
        }
    }
}
