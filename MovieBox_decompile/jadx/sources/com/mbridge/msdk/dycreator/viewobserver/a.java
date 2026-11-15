package com.mbridge.msdk.dycreator.viewobserver;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public abstract class a extends com.mbridge.msdk.dycreator.observable.a {

    private List<Object> f34087a = new ArrayList();

    protected ConcurrentHashMap<Integer, Object> f34088b = new ConcurrentHashMap<>();

    public synchronized void a(Object obj, int i10) {
        if (obj != null) {
            ConcurrentHashMap<Integer, Object> concurrentHashMap = this.f34088b;
            if (concurrentHashMap != null && !concurrentHashMap.containsValue(obj)) {
                this.f34088b.put(Integer.valueOf(i10), obj);
            }
        }
    }

    public synchronized void a() {
        this.f34088b.clear();
    }
}
