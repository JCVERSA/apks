package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class pk2 {
    private final o3 a;
    private final ia2 b;
    private final nd2 c;
    private final ec2 d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public pk2(Context context, o3 o3Var, ia2 ia2Var, nd2 nd2Var) {
        this(context, o3Var, ia2Var, nd2Var, ec2.a.a(context));
        int i = ec2.d;
    }

    public final void a(Context context, mb2 mb2Var, dq1<List<mb2>> dq1Var) {
        y45.j(context, "context");
        y45.j(mb2Var, "wrapperAd");
        y45.j(dq1Var, "listener");
        this.d.a(context, this.a, this.b, mb2Var, this.c, new qk2(context, mb2Var, dq1Var, new rk2(context, mb2Var)));
    }

    public pk2(Context context, o3 o3Var, ia2 ia2Var, nd2 nd2Var, ec2 ec2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(nd2Var, "reportParametersProvider");
        y45.j(ec2Var, "videoAdLoadNetwork");
        this.a = o3Var;
        this.b = ia2Var;
        this.c = nd2Var;
        this.d = ec2Var;
    }
}
