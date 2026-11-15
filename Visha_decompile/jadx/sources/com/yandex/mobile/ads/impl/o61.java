package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class o61 implements cd1<y61> {
    private final hq1<y61> a;
    private final aj2<y61> b;

    public o61(hq1 hq1Var) {
        this(hq1Var, new z61(hq1Var));
    }

    @Override
    public final xi2 a(Context context, o3 o3Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        return wc1.a(o3Var, this.b);
    }

    public o61(hq1<y61> hq1Var, aj2<y61> aj2Var) {
        y45.j(hq1Var, "requestPolicy");
        y45.j(aj2Var, "responseBodyParser");
        this.a = hq1Var;
        this.b = aj2Var;
    }
}
