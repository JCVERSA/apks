package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.feed.FeedAdAppearance;
import com.yandex.mobile.ads.feed.FeedAdRequestConfiguration;
import defpackage.ky5;
import defpackage.y45;
import java.util.Map;

public final class e90 {
    private final y80 a;

    public e90() {
        this(new y80());
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003c  */
    public final v7 a(FeedAdRequestConfiguration feedAdRequestConfiguration, FeedAdAppearance feedAdAppearance) {
        Map mapL;
        if (feedAdAppearance != null) {
            this.a.getClass();
            y45.j(feedAdAppearance, "appearance");
            Map mapE = ky5.e();
            if (feedAdAppearance.getCardCornerRadius() != null) {
                mapE.put("card_corner_radius", feedAdAppearance.getCardCornerRadius().toString());
            }
            if (feedAdAppearance.getCardWidth() != null) {
                mapE.put("card_width", feedAdAppearance.getCardWidth().toString());
            }
            mapL = ky5.d(mapE);
            if (mapL == null) {
                mapL = kotlin.collections.a.l();
            }
        } else {
            mapL = kotlin.collections.a.l();
        }
        Map mapE2 = ky5.e();
        if ((feedAdRequestConfiguration != null ? feedAdRequestConfiguration.getParameters() : null) != null) {
            mapE2.putAll(feedAdRequestConfiguration.getParameters());
        }
        mapE2.putAll(mapL);
        Map<String, String> mapD = ky5.d(mapE2);
        String adUnitId = feedAdRequestConfiguration != null ? feedAdRequestConfiguration.getAdUnitId() : null;
        if (adUnitId == null) {
            adUnitId = "";
        }
        return new v7.a(adUnitId).a(feedAdRequestConfiguration != null ? feedAdRequestConfiguration.getAge() : null).c(feedAdRequestConfiguration != null ? feedAdRequestConfiguration.getGender() : null).b(feedAdRequestConfiguration != null ? feedAdRequestConfiguration.getContextQuery() : null).a(feedAdRequestConfiguration != null ? feedAdRequestConfiguration.getContextTags() : null).a(feedAdRequestConfiguration != null ? feedAdRequestConfiguration.getLocation() : null).a(mapD).a();
    }

    public e90(y80 y80Var) {
        y45.j(y80Var, "appearanceParametersProvider");
        this.a = y80Var;
    }
}
