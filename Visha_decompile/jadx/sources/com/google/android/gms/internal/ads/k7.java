package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

public final class k7 extends AbstractCollection {
    public final zzfwf b;

    public k7(zzfwf zzfwfVar) {
        this.b = zzfwfVar;
    }

    @Override
    public final void clear() {
        this.b.clear();
    }

    @Override
    public final Iterator iterator() {
        zzfwf zzfwfVar = this.b;
        Map mapZzl = zzfwfVar.zzl();
        return mapZzl != null ? mapZzl.values().iterator() : new f7(zzfwfVar);
    }

    @Override
    public final int size() {
        return this.b.size();
    }
}
