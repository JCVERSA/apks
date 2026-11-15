package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import defpackage.y45;

public final class ii2 {
    private final jk2 a;

    public ii2() {
        this(new jk2());
    }

    public final Rect a(View view) {
        y45.j(view, "view");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            Context context = view.getContext();
            y45.i(context, "getContext(...)");
            int i = pw1.l;
            ju1 ju1VarA = pw1.a.a().a(context);
            if (ju1VarA == null || !ju1VarA.u0()) {
                return rect;
            }
            this.a.getClass();
            Rect rectA = jk2.a(view);
            Rect rect2 = new Rect(rect);
            if (rect2.intersect(rectA)) {
                return rect2;
            }
        }
        return null;
    }

    public ii2(jk2 jk2Var) {
        y45.j(jk2Var, "windowVisibleRectProvider");
        this.a = jk2Var;
    }
}
