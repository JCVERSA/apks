package com.therouter.inject;

import java.util.Arrays;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

public final class RecyclerBin {

    private final ConcurrentHashMap f39777a = new ConcurrentHashMap();

    private final RecyclerLruCache f39778b;

    private final WeakHashMap f39779c;

    public RecyclerBin() {
        RecyclerLruCache recyclerLruCache = new RecyclerLruCache(10);
        recyclerLruCache.a(new Function3<a, Object, Object, Unit>() {
            {
                super(3);
            }

            @Override
            public Object invoke(Object obj, Object obj2, Object obj3) {
                invoke((a) obj, obj2, obj3);
                return Unit.f64096a;
            }

            public final void invoke(a aVar, Object obj, Object obj2) {
                WeakHashMap weakHashMap = this.this$0.f39779c;
                RecyclerBin recyclerBin = this.this$0;
                synchronized (weakHashMap) {
                    recyclerBin.f39779c.put(aVar, obj);
                    Unit unit = Unit.f64096a;
                }
            }
        });
        this.f39778b = recyclerLruCache;
        this.f39779c = new WeakHashMap();
    }

    public final Object b(Class clazz, Object... params) {
        Object objRemove;
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(params, "params");
        a aVar = new a(clazz, Arrays.copyOf(params, params.length));
        Object obj = this.f39777a.get(aVar);
        if (obj != null) {
            return obj;
        }
        Object obj2 = this.f39778b.get(aVar);
        if (obj2 != null) {
            return obj2;
        }
        synchronized (this.f39779c) {
            objRemove = this.f39779c.remove(aVar);
            Unit unit = Unit.f64096a;
        }
        if (objRemove != null) {
            this.f39778b.put(aVar, objRemove);
        }
        return objRemove;
    }

    public final void c(Class clazz, Object obj, Object... params) {
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(params, "params");
        a aVar = new a(clazz, Arrays.copyOf(params, params.length));
        if (clazz.isAnnotationPresent(e.class)) {
            if (obj != null) {
                this.f39777a.put(aVar, obj);
            }
        } else {
            if (clazz.isAnnotationPresent(c.class)) {
                return;
            }
            this.f39778b.put(aVar, obj);
        }
    }
}
