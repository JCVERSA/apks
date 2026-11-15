package com.yandex.mobile.ads.impl;

import defpackage.xe9;
import defpackage.y45;
import java.util.Set;

public final class v50 {
    private final Set<String> a = xe9.d("sysconst-update");

    public final boolean a(String str) {
        y45.j(str, "param");
        return !this.a.contains(str);
    }
}
