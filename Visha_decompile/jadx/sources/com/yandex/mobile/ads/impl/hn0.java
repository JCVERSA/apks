package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class hn0 {
    private final List<ig<?>> a;

    /* JADX WARN: Multi-variable type inference failed */
    public hn0(List<? extends ig<?>> list) {
        this.a = list;
    }

    public final ig<?> a(String str) {
        y45.j(str, "assetName");
        List<ig<?>> list = this.a;
        Object obj = null;
        if (list == null) {
            return null;
        }
        for (Object obj2 : list) {
            if (y45.e(((ig) obj2).b(), str)) {
                obj = obj2;
                break;
            }
        }
        return (ig) obj;
    }
}
