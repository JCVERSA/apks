package androidx.core.util;

import kotlin.jvm.internal.Intrinsics;

public class g implements f {

    private final Object[] f7960a;

    private int f7961b;

    public g(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f7960a = new Object[i10];
    }

    private final boolean a(Object obj) {
        int i10 = this.f7961b;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f7960a[i11] == obj) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Object acquire() {
        int i10 = this.f7961b;
        if (i10 <= 0) {
            return null;
        }
        int i11 = i10 - 1;
        Object obj = this.f7960a[i11];
        Intrinsics.f(obj, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
        this.f7960a[i11] = null;
        this.f7961b--;
        return obj;
    }

    @Override
    public boolean release(Object instance) {
        Intrinsics.h(instance, "instance");
        if (a(instance)) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i10 = this.f7961b;
        Object[] objArr = this.f7960a;
        if (i10 >= objArr.length) {
            return false;
        }
        objArr[i10] = instance;
        this.f7961b = i10 + 1;
        return true;
    }
}
