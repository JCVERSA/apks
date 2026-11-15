package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Set;

public final class sa0 {
    private final Set<String> a;

    public sa0(rt rtVar, li liVar) {
        y45.j(rtVar, "nativeAdAssets");
        y45.j(liVar, "availableAssetsProvider");
        liVar.getClass();
        this.a = li.a(rtVar);
    }

    public final boolean a() {
        return this.a.size() == 2 && this.a.contains("feedback") && this.a.contains("media");
    }
}
