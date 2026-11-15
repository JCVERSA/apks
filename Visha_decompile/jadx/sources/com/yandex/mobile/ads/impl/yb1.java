package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.TextureView;
import android.widget.FrameLayout;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class yb1 extends FrameLayout {
    private final af2 a;
    private final TextureView b;
    private final qa1 c;
    private gb1 d;
    private su0 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yb1(Context context, af2 af2Var, TextureView textureView, qa1 qa1Var) {
        super(context);
        y45.j(context, "context");
        y45.j(af2Var, "placeholderView");
        y45.j(textureView, "textureView");
        y45.j(qa1Var, "actionViewsContainer");
        this.a = af2Var;
        this.b = textureView;
        this.c = qa1Var;
        this.e = new ry1();
    }

    public final qa1 a() {
        return this.c;
    }

    public final af2 b() {
        return this.a;
    }

    public final TextureView c() {
        return this.b;
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        gb1 gb1Var = this.d;
        if (gb1Var != null) {
            gb1Var.b();
        }
    }

    @Override
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        gb1 gb1Var = this.d;
        if (gb1Var != null) {
            gb1Var.a();
        }
    }

    @Override
    public final void onMeasure(int i, int i2) {
        su0.a aVarA = this.e.a(i, i2);
        super.onMeasure(aVarA.a, aVarA.b);
    }

    public final void setAspectRatio(float f) {
        this.e = new lm1(f);
    }

    public final void setOnAttachStateChangeListener(gb1 gb1Var) {
        this.d = gb1Var;
    }
}
