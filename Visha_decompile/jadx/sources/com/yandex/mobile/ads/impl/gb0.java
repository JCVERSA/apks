package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.y45;
import java.util.Map;
import kotlin.jvm.internal.Lambda;

final class gb0 extends Lambda implements e74 {
    public static final gb0 b = new gb0();

    public gb0() {
        super(1);
    }

    public static String a(Map.Entry entry) {
        y45.j(entry, "it");
        return entry.getKey() + "=" + entry.getValue();
    }

    @Override
    public final Object invoke(Object obj) {
        return a((Map.Entry) obj);
    }
}
