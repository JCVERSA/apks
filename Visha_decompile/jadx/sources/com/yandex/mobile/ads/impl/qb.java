package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class qb implements su0 {
    private final boolean a;
    private final l10 b;
    private final o10 c;
    private final Context d;

    public qb(Context context, boolean z, int i) {
        this(context, (i & 2) != 0 ? false : z, new l10(), new o10());
    }

    @Override
    public final su0.a a(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i);
        if (mode != 0) {
            Context context = this.d;
            y45.i(context, "context");
            int i3 = wh2.b;
            int iMin = eb0.a(context, "context").widthPixels;
            o10 o10Var = this.c;
            Context context2 = this.d;
            y45.i(context2, "context");
            o10Var.getClass();
            int iA = o10.a(context2, 420.0f);
            int i4 = this.d.getResources().getConfiguration().orientation;
            l10 l10Var = this.b;
            Context context3 = this.d;
            y45.i(context3, "context");
            if (l10Var.a(context3) != k10.b || i4 != 1) {
                iMin = (int) Math.min(iMin, iA);
            }
            i = View.MeasureSpec.makeMeasureSpec((int) Math.min(iMin, size), 1073741824);
        }
        if (mode2 != 0) {
            boolean z = this.a;
            Context context4 = this.d;
            y45.i(context4, "context");
            int i5 = wh2.b;
            int iMin2 = eb0.a(context4, "context").heightPixels;
            o10 o10Var2 = this.c;
            Context context5 = this.d;
            y45.i(context5, "context");
            o10Var2.getClass();
            int iA2 = o10.a(context5, 350.0f);
            if (!z) {
                iMin2 = (int) Math.min(iMin2, iA2);
            }
            i2 = View.MeasureSpec.makeMeasureSpec((int) Math.min(iMin2, size2), 1073741824);
        }
        su0.a aVar = new su0.a();
        aVar.b = i2;
        aVar.a = i;
        return aVar;
    }

    public qb(Context context, boolean z, l10 l10Var, o10 o10Var) {
        y45.j(context, "context");
        y45.j(l10Var, "deviceTypeProvider");
        y45.j(o10Var, "dimensionConverter");
        this.a = z;
        this.b = l10Var;
        this.c = o10Var;
        this.d = context.getApplicationContext();
    }
}
