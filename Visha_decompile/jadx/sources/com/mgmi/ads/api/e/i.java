package com.mgmi.ads.api.e;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class i {
    private static i b;
    private final Object d = new Object();
    private int e = 0;
    private Map<String, List<a>> a = new HashMap();
    private j c = new j();

    public static class a {
        public int a;
        public int b;
        public int c;
    }

    private i() {
    }

    public static i a() {
        if (b == null) {
            synchronized (i.class) {
                try {
                    if (b == null) {
                        b = new i();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public void b(j.d dVar) {
        this.c.b(dVar);
    }

    public void c(j.d dVar) {
        this.c.c(dVar);
    }

    public void b(j.a aVar) {
        this.c.b(aVar);
    }

    public int c() {
        return this.a.size();
    }

    public void b() {
        if (this.a.size() == 0) {
            return;
        }
        synchronized (this.d) {
            this.a.clear();
        }
    }

    public void a(j.d dVar) {
        this.c.a(dVar);
    }

    public void a(j.a aVar) {
        this.c.a(aVar);
    }

    public void a(List<a> list, String str) {
        synchronized (this.d) {
            this.a.put(str, list);
        }
    }

    public List<a> a(String str) {
        List<a> arrayList;
        synchronized (this.d) {
            try {
                arrayList = this.a.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }
}
