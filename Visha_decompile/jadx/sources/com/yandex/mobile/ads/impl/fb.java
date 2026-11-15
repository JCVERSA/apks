package com.yandex.mobile.ads.impl;

import androidx.media3.common.util.Util;
import defpackage.y45;

public final class fb {
    private final pl a;
    private final o5 b;
    private final oe2 c;
    private final tj1 d;
    private boolean e;

    public fb(pl plVar, o5 o5Var, oe2 oe2Var, tj1 tj1Var) {
        y45.j(plVar, "bindingControllerHolder");
        y45.j(o5Var, "adPlaybackStateController");
        y45.j(oe2Var, "videoDurationHolder");
        y45.j(tj1Var, "positionProviderHolder");
        this.a = plVar;
        this.b = o5Var;
        this.c = oe2Var;
        this.d = tj1Var;
    }

    public final boolean a() {
        return this.e;
    }

    public final void b() {
        ll llVarA = this.a.a();
        if (llVarA != null) {
            oi1 oi1VarB = this.d.b();
            if (oi1VarB == null) {
                sp0.b(new Object[0]);
                return;
            }
            this.e = true;
            int adGroupIndexForPositionUs = this.b.a().getAdGroupIndexForPositionUs(Util.msToUs(oi1VarB.a()), Util.msToUs(this.c.a()));
            if (adGroupIndexForPositionUs == -1) {
                llVarA.a();
            } else if (adGroupIndexForPositionUs == this.b.a().adGroupCount) {
                this.a.c();
            } else {
                llVarA.a();
            }
        }
    }
}
