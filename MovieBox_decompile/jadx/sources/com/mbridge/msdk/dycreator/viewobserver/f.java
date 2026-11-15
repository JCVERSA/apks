package com.mbridge.msdk.dycreator.viewobserver;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class f extends a {
    public void a(Object obj) {
        e eVar;
        ConcurrentHashMap<Integer, Object> concurrentHashMap = this.f34088b;
        if (concurrentHashMap == null || concurrentHashMap.size() <= 0) {
            return;
        }
        for (Map.Entry<Integer, Object> entry : this.f34088b.entrySet()) {
            if (entry != null) {
                try {
                    if (entry.getValue() != null && (eVar = (e) entry.getValue()) != null) {
                        eVar.a(obj);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }
}
