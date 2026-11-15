package com.yandex.mobile.ads.impl;

import com.yandex.div.core.view2.Div2View;
import defpackage.y45;

public final class u10 {
    public static final ay1 a(Div2View div2View) {
        y45.j(div2View, "<this>");
        defpackage.cf2 actionHandler = div2View.getActionHandler();
        ay1 ay1Var = actionHandler instanceof ay1 ? (ay1) actionHandler : null;
        if (ay1Var == null) {
            ay1Var = new ay1(0);
        }
        div2View.setActionHandler(ay1Var);
        return ay1Var;
    }
}
