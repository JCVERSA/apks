package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class kg0 {
    private final pw1 a;
    private final mt0 b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public kg0() {
        this(pw1.a.a(), new mt0());
        int i = pw1.l;
    }

    public final List<String> a(Context context) {
        String strD;
        y45.j(context, "context");
        ju1 ju1VarA = this.a.a(context);
        if (ju1VarA == null || (strD = ju1VarA.d()) == null) {
            return defpackage.y71.k();
        }
        this.b.getClass();
        List<String> listB = mt0.b(context);
        if (listB == null) {
            listB = ju1VarA.x();
        }
        return defpackage.i81.J0(defpackage.x71.e(strD), listB);
    }

    public kg0(pw1 pw1Var, mt0 mt0Var) {
        y45.j(pw1Var, "sdkSettings");
        y45.j(mt0Var, "manifestAnalyzer");
        this.a = pw1Var;
        this.b = mt0Var;
    }
}
