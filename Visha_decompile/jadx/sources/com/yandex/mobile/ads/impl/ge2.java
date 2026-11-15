package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.ImageView;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;

public final class ge2 implements ap {
    private final yb1 a;
    private final uu b;

    public ge2(yb1 yb1Var, uu uuVar) {
        y45.j(yb1Var, "nativeVideoView");
        this.a = yb1Var;
        this.b = uuVar;
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public final void a(vr0 vr0Var, cp cpVar) {
        y45.j(vr0Var, AuthInfo.Component.CODE_LINK);
        y45.j(cpVar, "clickListenerCreator");
        Context context = this.a.getContext();
        fe2 fe2Var = new fe2(vr0Var, cpVar, this.b);
        y45.g(context);
        to toVar = new to(context, fe2Var);
        yb1 yb1Var = this.a;
        yb1Var.setOnTouchListener(toVar);
        yb1Var.setOnClickListener(toVar);
        ImageView imageViewA = this.a.b().a();
        if (imageViewA != null) {
            imageViewA.setOnTouchListener(toVar);
            imageViewA.setOnClickListener(toVar);
        }
    }
}
