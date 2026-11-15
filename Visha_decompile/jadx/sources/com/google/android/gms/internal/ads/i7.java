package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

public final class i7 extends AbstractSet {
    public final zzfwf b;

    public i7(zzfwf zzfwfVar) {
        this.b = zzfwfVar;
    }

    @Override
    public final void clear() {
        this.b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.b.containsKey(obj);
    }

    @Override
    public final Iterator iterator() {
        zzfwf zzfwfVar = this.b;
        Map mapZzl = zzfwfVar.zzl();
        return mapZzl != null ? mapZzl.keySet().iterator() : new d7(zzfwfVar);
    }

    @Override
    public final boolean remove(Object obj) {
        zzfwf zzfwfVar = this.b;
        Map mapZzl = zzfwfVar.zzl();
        if (mapZzl != null) {
            return mapZzl.keySet().remove(obj);
        }
        return zzfwfVar.g(obj) != zzfwf.h;
    }

    @Override
    public final int size() {
        return this.b.size();
    }
}
