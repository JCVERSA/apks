package com.yandex.div.histogram;

import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.b;

public abstract class HistogramCallTypeChecker {
    public final yi5 a = b.a(new c74() {
        @Override
        public final ConcurrentHashMap<String, zfb> invoke() {
            return new ConcurrentHashMap<>();
        }
    });

    public final boolean a(String str) {
        y45.j(str, "histogramName");
        return !b().containsKey(str) && b().putIfAbsent(str, zfb.a) == null;
    }

    public final ConcurrentHashMap b() {
        return (ConcurrentHashMap) this.a.getValue();
    }
}
