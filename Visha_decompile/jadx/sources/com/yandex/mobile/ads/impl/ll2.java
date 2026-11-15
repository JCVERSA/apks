package com.yandex.mobile.ads.impl;

import android.location.Location;
import com.yandex.mobile.ads.common.AdRequestConfiguration;
import com.yandex.mobile.ads.common.AdTheme;
import defpackage.j1a;
import defpackage.y45;
import java.util.List;
import java.util.Map;

public final class ll2 {
    private final oq1 a;

    public ll2() {
        this(new oq1());
    }

    public final v7 a(AdRequestConfiguration adRequestConfiguration) {
        y45.j(adRequestConfiguration, "adRequestConfiguration");
        String age = adRequestConfiguration.getAge();
        String gender = adRequestConfiguration.getGender();
        String contextQuery = adRequestConfiguration.getContextQuery();
        List<String> contextTags = adRequestConfiguration.getContextTags();
        Location location = adRequestConfiguration.getLocation();
        Map<String, String> parameters = adRequestConfiguration.getParameters();
        String biddingData = adRequestConfiguration.getBiddingData();
        AdTheme preferredTheme = adRequestConfiguration.getPreferredTheme();
        v7.a aVar = new v7.a(adRequestConfiguration.getAdUnitId());
        if (age != null) {
            if (j1a.o0(age)) {
                age = null;
            }
            if (age != null) {
                aVar.a(age);
            }
        }
        if (gender != null) {
            if (j1a.o0(gender)) {
                gender = null;
            }
            if (gender != null) {
                aVar.c(gender);
            }
        }
        if (contextQuery != null) {
            aVar = aVar.b(contextQuery);
        }
        if (contextTags != null) {
            aVar = aVar.a(contextTags);
        }
        if (location != null) {
            aVar = aVar.a(location);
        }
        if (parameters != null) {
            aVar = aVar.a(parameters);
        }
        if (biddingData != null) {
            aVar = aVar.d(biddingData);
        }
        if (preferredTheme != null) {
            this.a.getClass();
            aVar = aVar.a(oq1.a(preferredTheme));
        }
        return aVar.a();
    }

    public ll2(oq1 oq1Var) {
        y45.j(oq1Var, "requestedAdThemeFactory");
        this.a = oq1Var;
    }
}
