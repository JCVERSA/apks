package cn.com.custommma.mobile.tracking.util;

import java.util.LinkedHashMap;
import java.util.Map;

public class LRU {
    public LinkedHashMap a;
    public int b;

    public LRU(final int i) {
        this.b = i;
        this.a = new LinkedHashMap<Object, Object>(16, 0.75f, true) {
            @Override
            public boolean removeEldestEntry(Map.Entry<Object, Object> entry) {
                return i + 1 == LRU.this.a.size();
            }
        };
    }

    public synchronized Object b(Object obj) {
        return this.a.get(obj);
    }

    public synchronized void c(Object obj, Object obj2) {
        this.a.put(obj, obj2);
    }

    public synchronized Object d(Object obj) {
        return this.a.remove(obj);
    }
}
