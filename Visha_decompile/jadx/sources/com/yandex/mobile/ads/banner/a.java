package com.yandex.mobile.ads.banner;

import com.yandex.mobile.ads.impl.gz1;
import com.yandex.mobile.ads.impl.zs;
import defpackage.y45;

public final class a {
    public static final zs a(BannerAdSize bannerAdSize) {
        y45.j(bannerAdSize, "adSize");
        gz1 b = bannerAdSize.getB();
        y45.i(b, "getSizeInfo(...)");
        return new zs(b);
    }
}
