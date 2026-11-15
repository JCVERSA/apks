package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;

public final class xg2 implements ap {
    private final View a;

    public xg2(View view) {
        y45.j(view, "view");
        this.a = view;
    }

    @Override
    public final void a(vr0 vr0Var, cp cpVar) {
        y45.j(vr0Var, AuthInfo.Component.CODE_LINK);
        y45.j(cpVar, "clickListenerCreator");
        Context context = this.a.getContext();
        View.OnClickListener onClickListenerA = cpVar.a(vr0Var);
        y45.g(context);
        to toVar = new to(context, onClickListenerA);
        int i = y51.e;
        e71 e71Var = new e71(context, onClickListenerA, toVar, y51.a.a());
        this.a.setOnTouchListener(e71Var);
        this.a.setOnClickListener(e71Var);
    }
}
