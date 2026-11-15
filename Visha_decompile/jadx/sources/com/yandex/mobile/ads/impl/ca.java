package com.yandex.mobile.ads.impl;

import defpackage.j1a;
import defpackage.y45;

public final class ca {
    private String a;

    public final String a() {
        return this.a;
    }

    public final void a(String str) {
        if (str == null || j1a.o0(str)) {
            hp0.c("Ad Unit Id can't be null or empty.", new Object[0]);
            return;
        }
        String str2 = this.a;
        if (str2 == null || y45.e(str2, str)) {
            this.a = str;
        } else {
            hp0.c("Ad Unit Id can't be set twice.", new Object[0]);
        }
    }
}
