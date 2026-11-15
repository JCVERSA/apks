package com.yandex.mobile.ads.nativeads;

import com.yandex.mobile.ads.common.AdTheme;
import com.yandex.mobile.ads.impl.nq1;
import com.yandex.mobile.ads.impl.oq1;
import com.yandex.mobile.ads.impl.v7;
import com.yandex.mobile.ads.impl.w61;
import defpackage.y45;

public final class f {
    private final oq1 a;
    private final w61 b;

    public f(oq1 oq1Var, w61 w61Var) {
        y45.j(oq1Var, "requestedAdThemeFactory");
        y45.j(w61Var, "adRequestReadyResponseProvider");
        this.a = oq1Var;
        this.b = w61Var;
    }

    public final v7 a(NativeAdRequestConfiguration nativeAdRequestConfiguration) {
        nq1 nq1VarA;
        y45.j(nativeAdRequestConfiguration, "nativeAdConfiguration");
        AdTheme preferredTheme = nativeAdRequestConfiguration.getPreferredTheme();
        if (preferredTheme != null) {
            this.a.getClass();
            nq1VarA = oq1.a(preferredTheme);
        } else {
            nq1VarA = null;
        }
        this.b.getClass();
        y45.j(nativeAdRequestConfiguration, "adRequestConfiguration");
        return new v7.a(nativeAdRequestConfiguration.getAdUnitId()).a(nativeAdRequestConfiguration.getAge()).d(nativeAdRequestConfiguration.getBiddingData()).c(nativeAdRequestConfiguration.getGender()).b(nativeAdRequestConfiguration.getContextQuery()).a(nativeAdRequestConfiguration.getContextTags()).a(nativeAdRequestConfiguration.getLocation()).a(nativeAdRequestConfiguration.getParameters()).a(nq1VarA).a(nativeAdRequestConfiguration.getShouldLoadImagesAutomatically()).b().a();
    }

    public f() {
        this(new oq1(), new w61());
    }
}
