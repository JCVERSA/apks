package com.yandex.mobile.ads.impl;

import android.net.Uri;
import com.yandex.mobile.ads.impl.d80;
import com.yandex.mobile.ads.impl.z70;
import java.util.List;
import java.util.Map;

public interface d80 {
    static {
        new d80() {
            @Override
            public final z70[] a() {
                return d80.lambda$static$0();
            }
        };
    }

    static z70[] lambda$static$0() {
        return new z70[0];
    }

    z70[] a();

    default z70[] a(Uri uri, Map<String, List<String>> map) {
        return a();
    }
}
