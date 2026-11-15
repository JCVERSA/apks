package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class q21 implements yg0 {
    @Override
    public final xg0 a(qj qjVar, bu1.b bVar, ve2 ve2Var, pk0 pk0Var) {
        y45.j(qjVar, "parentHtmlWebView");
        y45.j(bVar, "htmlWebViewListener");
        y45.j(ve2Var, "videoLifecycleListener");
        y45.j(pk0Var, "impressionListener");
        p21 p21Var = new p21(qjVar, bVar, ve2Var, pk0Var, new x21.a(bVar), new m21(qjVar));
        p21Var.a(bVar);
        return p21Var;
    }

    @Override
    public final gd0 a(pd0 pd0Var, hd0 hd0Var, ld0 ld0Var, xc0 xc0Var, ld0 ld0Var2) {
        y45.j(pd0Var, "parentHtmlWebView");
        y45.j(hd0Var, "htmlWebViewListener");
        y45.j(ld0Var, "rewardListener");
        y45.j(xc0Var, "onCloseButtonListener");
        y45.j(ld0Var2, "impressionListener");
        o21 o21Var = new o21(pd0Var, hd0Var, ld0Var, xc0Var, ld0Var2, new x21.a(hd0Var), new m21(pd0Var));
        o21Var.a(hd0Var);
        return o21Var;
    }

    @Override
    public final xg0 a(w21 w21Var, dh0 dh0Var, qe2 qe2Var, n21 n21Var, n21 n21Var2, n21 n21Var3) {
        y45.j(w21Var, "parentHtmlWebView");
        y45.j(dh0Var, "htmlWebViewListener");
        y45.j(qe2Var, "videoLifecycleListener");
        y45.j(n21Var, "impressionListener");
        y45.j(n21Var2, "rewardListener");
        y45.j(n21Var3, "onCloseButtonListener");
        v21 v21Var = new v21(w21Var, dh0Var, qe2Var, n21Var, n21Var2, n21Var3, new x21.a(dh0Var), new m21(w21Var));
        v21Var.a(dh0Var);
        return v21Var;
    }
}
