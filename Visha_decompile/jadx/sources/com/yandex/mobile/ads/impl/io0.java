package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class io0 {
    private final ko0 a;
    private final an0 b;
    private final zl0 c;

    public io0(ko0 ko0Var, co0 co0Var) {
        this(ko0Var, co0Var, new an0(), new zl0(co0Var));
    }

    public final void a(zb2<go0> zb2Var, t70 t70Var, ln0 ln0Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(t70Var, "instreamAdView");
        y45.j(ln0Var, "initialControlsState");
        this.b.getClass();
        y45.j(t70Var, "instreamAdView");
        ob2 adUiElements = t70Var.getAdUiElements();
        if (adUiElements != null) {
            this.a.a(zb2Var, new ln0(new ln0.a().b(this.c.a(adUiElements, ln0Var).d()).a(ln0Var.a())));
        }
    }

    public final void b(zb2<go0> zb2Var, t70 t70Var, ln0 ln0Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(t70Var, "instreamAdView");
        y45.j(ln0Var, "initialControlsState");
        this.b.getClass();
        y45.j(t70Var, "instreamAdView");
        ob2 adUiElements = t70Var.getAdUiElements();
        if (adUiElements != null) {
            this.a.a(zb2Var, this.c.a(adUiElements, ln0Var));
        }
    }

    public io0(ko0 ko0Var, co0 co0Var, an0 an0Var, zl0 zl0Var) {
        y45.j(ko0Var, "videoAdControlsStateStorage");
        y45.j(co0Var, "instreamVastAdPlayer");
        y45.j(an0Var, "instreamAdViewUiElementsManager");
        y45.j(zl0Var, "videoAdControlsStateProvider");
        this.a = ko0Var;
        this.b = an0Var;
        this.c = zl0Var;
    }
}
