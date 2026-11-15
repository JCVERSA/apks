package com.yandex.mobile.ads.impl;

import com.yandex.div.core.DivPreloader;
import com.yandex.div2.DivCustom;
import defpackage.y45;

public final class y10 extends b20 {
    @Override
    public final boolean isCustomTypeSupported(String str) {
        y45.j(str, "type");
        return y45.e("linear_progress_view", str);
    }

    @Override
    public DivPreloader.d preload(DivCustom divCustom, DivPreloader.a aVar) {
        return super.preload(divCustom, aVar);
    }
}
