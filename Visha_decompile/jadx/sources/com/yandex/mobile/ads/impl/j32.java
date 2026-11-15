package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;

public final class j32 {
    private static volatile j32 b;
    private static final Object c = new Object();
    public static final int d = 0;
    private final LinkedHashMap a;

    public static final class a {
        public static j32 a() {
            if (j32.b == null) {
                synchronized (j32.c) {
                    try {
                        if (j32.b == null) {
                            j32.b = new j32(0);
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            j32 j32Var = j32.b;
            if (j32Var != null) {
                return j32Var;
            }
            throw new IllegalStateException("Required value was null.");
        }
    }

    private j32() {
        this.a = new LinkedHashMap();
    }

    public final void b(xq0 xq0Var, Object obj) {
        y45.j(xq0Var, "referenceType");
        y45.j(obj, "keepingObject");
        synchronized (c) {
            try {
                Set linkedHashSet = (Set) this.a.get(xq0Var);
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                    this.a.put(xq0Var, linkedHashSet);
                }
                linkedHashSet.add(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(xq0 xq0Var, Object obj) {
        y45.j(xq0Var, "referenceType");
        y45.j(obj, "keepingObject");
        synchronized (c) {
            Set set = (Set) this.a.get(xq0Var);
            if (set != null) {
                set.remove(obj);
            }
        }
    }

    public j32(int i) {
        this();
    }
}
