package com.therouter.inject;

import android.util.LruCache;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

public final class RecyclerLruCache extends LruCache {

    private Function3 f39780a;

    public RecyclerLruCache(int i10) {
        super(i10);
        this.f39780a = new Function3<Object, Object, Object, Unit>() {
            public final void m304invoke(Object obj, Object obj2, Object obj3) {
            }

            @Override
            public Object invoke(Object obj, Object obj2, Object obj3) {
                m304invoke(obj, obj2, obj3);
                return Unit.f64096a;
            }
        };
    }

    public final void a(Function3 block) {
        Intrinsics.h(block, "block");
        this.f39780a = block;
    }

    @Override
    protected void entryRemoved(boolean z10, Object obj, Object obj2, Object obj3) {
        super.entryRemoved(z10, obj, obj2, obj3);
        this.f39780a.invoke(obj, obj2, obj3);
    }
}
