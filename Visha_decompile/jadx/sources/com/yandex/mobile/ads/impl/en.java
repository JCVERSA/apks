package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.en;
import com.yandex.mobile.ads.impl.xv;

public interface en {
    public static final en a = new en() {
        @Override
        public final String a(xv xvVar) {
            return en.b(xvVar);
        }
    };

    static String b(xv xvVar) {
        String str = xvVar.h;
        return str != null ? str : xvVar.a.toString();
    }

    String a(xv xvVar);
}
