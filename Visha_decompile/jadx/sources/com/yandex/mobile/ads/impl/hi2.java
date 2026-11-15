package com.yandex.mobile.ads.impl;

import android.graphics.Rect;
import android.view.View;
import defpackage.y45;

public final class hi2 {
    private final sf1 a;
    private final ii2 b;

    public hi2(sf1 sf1Var, ii2 ii2Var) {
        y45.j(sf1Var, "overlappingAreaProvider");
        y45.j(ii2Var, "visibleRectProvider");
        this.a = sf1Var;
        this.b = ii2Var;
    }

    public final int a(View view) {
        y45.j(view, "view");
        boolean zD = wh2.d(view);
        Rect rectA = this.b.a(view);
        if (zD || rectA == null) {
            return 0;
        }
        return (rectA.width() * rectA.height()) - this.a.a(view, rectA);
    }
}
