package androidx.core.util;

import kotlin.jvm.internal.Intrinsics;

public class h extends g {

    private final Object f7962c;

    public h(int i10) {
        super(i10);
        this.f7962c = new Object();
    }

    @Override
    public Object acquire() {
        Object objAcquire;
        synchronized (this.f7962c) {
            objAcquire = super.acquire();
        }
        return objAcquire;
    }

    @Override
    public boolean release(Object instance) {
        boolean zRelease;
        Intrinsics.h(instance, "instance");
        synchronized (this.f7962c) {
            zRelease = super.release(instance);
        }
        return zRelease;
    }
}
