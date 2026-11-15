package com.yandex.mobile.ads.impl;

import android.util.LruCache;

public final class e70 extends LruCache<zb2<?>, sa1> {
    public e70(int i) {
        super(i);
    }

    @Override
    public final void entryRemoved(boolean z, zb2<?> zb2Var, sa1 sa1Var, sa1 sa1Var2) {
        sa1 sa1Var3 = sa1Var;
        if (sa1Var3 != null) {
            sa1Var3.a();
        }
    }
}
