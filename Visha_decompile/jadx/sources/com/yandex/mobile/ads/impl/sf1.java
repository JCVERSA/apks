package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import defpackage.wn8;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class sf1 {
    private final uf1 a;
    private final tf1 b;
    private final rf1 c;

    public sf1() {
        this(new uf1(), new tf1(), new rf1());
    }

    public final int a(View view, Rect rect) {
        y45.j(view, "view");
        y45.j(rect, "viewRect");
        int i = pw1.l;
        pw1 pw1VarA = pw1.a.a();
        Context context = view.getContext();
        y45.i(context, "getContext(...)");
        ju1 ju1VarA = pw1VarA.a(context);
        if (ju1VarA == null || !ju1VarA.t0()) {
            return 0;
        }
        this.a.getClass();
        ArrayList<View> arrayListA = uf1.a(view);
        this.b.getClass();
        y45.j(rect, "viewRect");
        y45.j(arrayListA, "overlappingViews");
        ArrayList<Rect> arrayList = new ArrayList();
        for (View view2 : arrayListA) {
            Rect rect2 = new Rect();
            if (view2.getGlobalVisibleRect(rect2)) {
                arrayList.add(rect2);
            }
        }
        for (Rect rect3 : arrayList) {
            int i2 = rect3.left;
            int i3 = rect.left;
            rect3.left = wn8.g(wn8.d(i2, i3), rect.right);
            int i4 = rect3.top;
            int i5 = rect.top;
            rect3.top = wn8.g(wn8.d(i4, i5), rect.bottom);
            int i6 = rect3.right;
            int i7 = rect.left;
            rect3.right = wn8.g(wn8.d(i6, i7), rect.right);
            int i8 = rect3.bottom;
            int i9 = rect.top;
            rect3.bottom = wn8.g(wn8.d(i8, i9), rect.bottom);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            Rect rect4 = (Rect) obj;
            if (rect4.width() > 0 && rect4.height() > 0) {
                arrayList2.add(obj);
            }
        }
        int size = arrayList2.size();
        List listSubList = arrayList2;
        if (size > 100) {
            listSubList = arrayList2.subList(0, 100);
        }
        this.c.getClass();
        return rf1.a(rect, listSubList);
    }

    public sf1(uf1 uf1Var, tf1 tf1Var, rf1 rf1Var) {
        y45.j(uf1Var, "overlappingViewsProvider");
        y45.j(tf1Var, "overlappingRectsProvider");
        y45.j(rf1Var, "overlappingAreaEvaluator");
        this.a = uf1Var;
        this.b = tf1Var;
        this.c = rf1Var;
    }
}
