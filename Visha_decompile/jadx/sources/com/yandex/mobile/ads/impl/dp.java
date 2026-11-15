package com.yandex.mobile.ads.impl;

import android.view.View;
import com.yandex.mobile.ads.impl.dp;
import com.yandex.mobile.ads.impl.g71;
import com.yandex.mobile.ads.impl.hc0;
import com.yandex.mobile.ads.impl.ig;
import com.yandex.mobile.ads.impl.j3;
import com.yandex.mobile.ads.impl.vr0;
import com.yandex.mobile.ads.impl.wo1;
import defpackage.y45;

public interface dp {
    public static final a a = a.a;

    View.OnClickListener a(ig<?> igVar, vr0 vr0Var, j3 j3Var, g71 g71Var, wo1 wo1Var, hc0 hc0Var);

    public static final class a {
        static final a a = new a();
        private static final dp b = new dp() {
            @Override
            public final View.OnClickListener a(ig igVar, vr0 vr0Var, j3 j3Var, g71 g71Var, wo1 wo1Var, hc0 hc0Var) {
                return dp.a.a(igVar, vr0Var, j3Var, g71Var, wo1Var, hc0Var);
            }
        };

        private a() {
        }

        public static final View.OnClickListener a(ig igVar, vr0 vr0Var, j3 j3Var, g71 g71Var, wo1 wo1Var, hc0 hc0Var) {
            y45.j(igVar, "asset");
            y45.j(j3Var, "adClickable");
            y45.j(g71Var, "viewAdapter");
            y45.j(wo1Var, "renderedTimer");
            y45.j(hc0Var, "forceImpressionTrackingListener");
            return new o51(igVar, vr0Var, j3Var, g71Var, wo1Var, hc0Var);
        }

        public static dp a() {
            return b;
        }
    }
}
