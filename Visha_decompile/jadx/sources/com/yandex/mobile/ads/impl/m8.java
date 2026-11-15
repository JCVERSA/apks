package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import defpackage.y45;

public final class m8 {
    public static RelativeLayout.LayoutParams a(Context context, gz1 gz1Var) {
        RelativeLayout.LayoutParams layoutParams;
        y45.j(context, "context");
        if (gz1Var != null) {
            layoutParams = new RelativeLayout.LayoutParams(wh2.a(context, gz1Var.c(context)), wh2.a(context, gz1Var.a(context)));
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.addRule(13);
        return layoutParams;
    }

    public static final RelativeLayout.LayoutParams a(Context context, pd0 pd0Var) {
        y45.j(context, "context");
        y45.j(pd0Var, "anchorView");
        int iA = wh2.a(context, 25.0f);
        int iA2 = wh2.a(context, 64.0f);
        int i = iA2 >> 1;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA2, iA2);
        layoutParams.addRule(7, pd0Var.getId());
        layoutParams.addRule(6, pd0Var.getId());
        ViewGroup.LayoutParams layoutParams2 = pd0Var.getLayoutParams();
        int i2 = layoutParams2.width;
        boolean z = true;
        boolean z2 = i2 == -1 || i2 + iA >= eb0.a(context, "context").widthPixels;
        int i3 = layoutParams2.height;
        if (i3 != -1 && i3 + iA < eb0.a(context, "context").heightPixels) {
            z = false;
        }
        int i4 = (iA >> 1) - ((iA2 - iA) / 2);
        if (!z2 && !z) {
            i4 = -i;
        }
        layoutParams.setMargins(0, i4, i4, 0);
        return layoutParams;
    }

    public static final RelativeLayout.LayoutParams a(Context context, o8<?> o8Var) {
        RelativeLayout.LayoutParams layoutParams;
        y45.j(context, "context");
        if (o8Var != null) {
            layoutParams = new RelativeLayout.LayoutParams(wh2.a(context, o8Var.r()), wh2.a(context, o8Var.c()));
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.addRule(13);
        return layoutParams;
    }
}
