package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class qa1 extends FrameLayout {
    private final hp1 a;
    private final aw0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public qa1(Context context, hp1 hp1Var, aw0 aw0Var) {
        super(context);
        y45.j(context, "context");
        y45.j(hp1Var, "replayActionView");
        this.a = hp1Var;
        this.b = aw0Var;
        addView(hp1Var);
        if (aw0Var == 0 || !(aw0Var instanceof View)) {
            return;
        }
        addView((View) aw0Var);
    }

    public final aw0 a() {
        return this.b;
    }

    public final hp1 b() {
        return this.a;
    }
}
