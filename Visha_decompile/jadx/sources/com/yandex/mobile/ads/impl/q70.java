package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import defpackage.y45;

public final class q70 {
    private final yh2 a;

    public q70() {
        this(new yh2());
    }

    public final <T extends View & yh2.a> p70 a(T t) {
        int iA;
        y45.j(t, "view");
        this.a.getClass();
        RectF rectF = null;
        if (yh2.a(t)) {
            iA = wh2.a(t);
            Rect rect = new Rect();
            if (t.getLocalVisibleRect(rect)) {
                rect.offset(t.getLeft(), t.getTop());
            } else {
                rect = null;
            }
            Context context = t.getContext();
            y45.i(context, "getContext(...)");
            if (rect != null) {
                float fA = wh2.a(context, rect.left);
                float fA2 = wh2.a(context, rect.top);
                float fA3 = wh2.a(context, rect.right);
                float fA4 = wh2.a(context, rect.bottom);
                float f = fA4 - fA2;
                if (fA3 - fA > 0.0f && f > 0.0f) {
                    rectF = new RectF(fA, fA2, fA3, fA4);
                }
            }
        } else {
            iA = 0;
        }
        return new p70(iA, rectF);
    }

    public q70(yh2 yh2Var) {
        y45.j(yh2Var, "viewableChecker");
        this.a = yh2Var;
    }
}
