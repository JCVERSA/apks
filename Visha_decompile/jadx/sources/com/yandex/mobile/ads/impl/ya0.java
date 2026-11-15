package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupMenu;
import defpackage.y45;
import java.util.List;

public final class ya0 {
    private final o3 a;
    private final tp1 b;
    private final g71 c;
    private final p51 d;
    private final xa0 e;

    public ya0(o3 o3Var, tp1 tp1Var, g71 g71Var, p51 p51Var, xa0 xa0Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(tp1Var, "reporter");
        y45.j(g71Var, "nativeAdViewAdapter");
        y45.j(p51Var, "nativeAdEventController");
        y45.j(xa0Var, "feedbackMenuCreator");
        this.a = o3Var;
        this.b = tp1Var;
        this.c = g71Var;
        this.d = p51Var;
        this.e = xa0Var;
    }

    public final void a(Context context, oa0 oa0Var) {
        y45.j(context, "context");
        y45.j(oa0Var, "action");
        View viewA = this.c.g().a("feedback");
        ImageView imageView = viewA instanceof ImageView ? (ImageView) viewA : null;
        if (imageView == null) {
            return;
        }
        List<oa0.a> listC = oa0Var.c();
        if (listC.isEmpty()) {
            return;
        }
        try {
            v9 v9Var = new v9(context, this.a);
            this.e.getClass();
            PopupMenu popupMenuA = xa0.a(context, imageView, listC);
            popupMenuA.setOnMenuItemClickListener(new mj1(v9Var, listC, this.b, this.d));
            popupMenuA.show();
        } catch (Exception e) {
            int i = sp0.b;
            y45.j(new Object[0], "args");
            this.a.q().c().reportError("Failed to render feedback", e);
        }
    }
}
