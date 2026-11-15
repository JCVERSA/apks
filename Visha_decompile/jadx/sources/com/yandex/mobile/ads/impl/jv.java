package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import com.yandex.mobile.ads.impl.jv;
import com.yandex.mobile.ads.impl.km;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class jv implements km {
    public static final int b = 0;

    static {
        new jv(kk0.h());
        new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return jv.a(bundle);
            }
        };
    }

    public jv(List<hv> list) {
        kk0.a((Collection) list);
    }

    public static final jv a(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(Integer.toString(0, 36));
        return new jv(parcelableArrayList == null ? kk0.h() : lm.a(hv.t, parcelableArrayList));
    }
}
