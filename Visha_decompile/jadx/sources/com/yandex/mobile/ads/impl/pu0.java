package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import defpackage.y45;

public final class pu0 implements su0 {
    private final View a;
    private final float b;
    private final Context c;
    private final su0.a d;

    public pu0(View view, float f, Context context) {
        this(view, f, context, new su0.a());
    }

    @Override
    public final su0.a a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        Context context = this.c;
        int i3 = wh2.b;
        int iRound = Math.round(eb0.a(context, "context").heightPixels * this.b);
        ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
        y45.i(layoutParams, "getLayoutParams(...)");
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            iRound = (iRound - marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin;
        }
        int iMax = (int) Math.max(Math.min(size, iRound), 0.0d);
        su0.a aVar = this.d;
        aVar.a = i;
        aVar.b = View.MeasureSpec.makeMeasureSpec(iMax, mode);
        return this.d;
    }

    public pu0(View view, float f, Context context, su0.a aVar) {
        y45.j(view, "view");
        y45.j(context, "context");
        y45.j(aVar, "measureSpecHolder");
        this.a = view;
        this.b = f;
        this.c = context;
        this.d = aVar;
    }
}
