package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ProgressBar;
import defpackage.y45;

public final class zl0 {
    private final co0 a;

    public zl0(co0 co0Var) {
        y45.j(co0Var, "instreamVastAdPlayer");
        this.a = co0Var;
    }

    public final ln0 a(ob2 ob2Var, ln0 ln0Var) {
        y45.j(ob2Var, "uiElements");
        y45.j(ln0Var, "initialControlsState");
        boolean z = this.a.getVolume() == 0.0f;
        View viewN = ob2Var.n();
        Float fValueOf = null;
        Boolean boolValueOf = viewN != null ? Boolean.valueOf(viewN.isEnabled()) : null;
        ProgressBar progressBarJ = ob2Var.j();
        if (progressBarJ != null) {
            int progress = progressBarJ.getProgress();
            int max = progressBarJ.getMax();
            if (max != 0) {
                fValueOf = Float.valueOf(progress / max);
            }
        }
        ln0.a aVar = new ln0.a();
        aVar.b(z);
        if (boolValueOf != null) {
            aVar.a(boolValueOf.booleanValue());
        }
        if (fValueOf != null) {
            aVar.b(fValueOf.floatValue());
        }
        aVar.a(ln0Var.a());
        return new ln0(aVar);
    }
}
