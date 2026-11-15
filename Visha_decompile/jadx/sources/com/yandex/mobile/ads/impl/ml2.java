package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.common.AdRequest;
import com.yandex.mobile.ads.common.AdTheme;
import defpackage.y45;

public final class ml2 {
    private final oq1 a;

    public ml2() {
        this(new oq1());
    }

    public final v7 a(String str, AdRequest adRequest) {
        nq1 nq1VarA;
        y45.j(str, "adUnitId");
        y45.j(adRequest, "adRequest");
        AdTheme preferredTheme = adRequest.getPreferredTheme();
        if (preferredTheme != null) {
            this.a.getClass();
            nq1VarA = oq1.a(preferredTheme);
        } else {
            nq1VarA = null;
        }
        return new v7.a(str).a(adRequest.getAge()).d(adRequest.getBiddingData()).c(adRequest.getGender()).b(adRequest.getContextQuery()).a(adRequest.getContextTags()).a(adRequest.getLocation()).a(adRequest.getParameters()).a(nq1VarA).a();
    }

    public ml2(oq1 oq1Var) {
        y45.j(oq1Var, "requestedAdThemeFactory");
        this.a = oq1Var;
    }
}
