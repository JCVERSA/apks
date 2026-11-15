package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class rk2 {
    private final wk2 a;
    private final xd2 b;
    private final mk2 c;

    public rk2(Context context, mb2 mb2Var) {
        this(context, mb2Var, new wk2(mb2Var), new xd2(), new mk2(context, mb2Var));
    }

    public final List<mb2> a(List<mb2> list) {
        y45.j(list, "videoAds");
        uk2 uk2VarA = this.a.a();
        if (uk2VarA == null) {
            return list;
        }
        if (!uk2VarA.a()) {
            this.b.getClass();
            list = xd2.a(list).a();
        }
        if (!uk2VarA.b()) {
            list = defpackage.i81.U0(list, 1);
        }
        return this.c.a(list);
    }

    public rk2(Context context, mb2 mb2Var, wk2 wk2Var, xd2 xd2Var, mk2 mk2Var) {
        y45.j(context, "context");
        y45.j(mb2Var, "wrapperAd");
        y45.j(wk2Var, "wrapperConfigurationProvider");
        y45.j(xd2Var, "wrappersProviderFactory");
        y45.j(mk2Var, "wrappedVideoAdCreator");
        this.a = wk2Var;
        this.b = xd2Var;
        this.c = mk2Var;
    }
}
