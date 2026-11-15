package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.kn1;

public abstract class kn1 implements km {
    public static final km.a<kn1> b = new km.a() {
        @Override
        public final km fromBundle(Bundle bundle) {
            return kn1.a(bundle);
        }
    };

    public static kn1 a(Bundle bundle) {
        int i = bundle.getInt(Integer.toString(0, 36), -1);
        if (i == 0) {
            return (kn1) sf0.e.fromBundle(bundle);
        }
        if (i == 1) {
            return (kn1) sg1.d.fromBundle(bundle);
        }
        if (i == 2) {
            return (kn1) n22.e.fromBundle(bundle);
        }
        if (i == 3) {
            return (kn1) z42.e.fromBundle(bundle);
        }
        throw new IllegalArgumentException(oe.a("Unknown RatingType: ", i));
    }
}
