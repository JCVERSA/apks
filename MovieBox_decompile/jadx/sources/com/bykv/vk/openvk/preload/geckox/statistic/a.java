package com.bykv.vk.openvk.preload.geckox.statistic;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class a {

    private static final Map<Long, a> f20101a = new HashMap();

    private final Map<String, com.bykv.vk.openvk.preload.geckox.statistic.model.a> f20102b = new HashMap();

    a() {
    }

    static a a(long j10) {
        a aVar;
        Map<Long, a> map = f20101a;
        synchronized (map) {
            try {
                aVar = map.get(Long.valueOf(j10));
                if (aVar == null) {
                    aVar = new a();
                    map.put(Long.valueOf(j10), aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    final com.bykv.vk.openvk.preload.geckox.statistic.model.a a(String str) {
        com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar;
        synchronized (this.f20102b) {
            try {
                aVar = this.f20102b.get(str);
                if (aVar == null) {
                    aVar = new com.bykv.vk.openvk.preload.geckox.statistic.model.a();
                    this.f20102b.put(str, aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    final List<com.bykv.vk.openvk.preload.geckox.statistic.model.a> a() {
        ArrayList arrayList;
        synchronized (this.f20102b) {
            arrayList = new ArrayList(this.f20102b.values());
        }
        return arrayList;
    }
}
