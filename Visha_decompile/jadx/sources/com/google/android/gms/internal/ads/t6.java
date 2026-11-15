package com.google.android.gms.internal.ads;

import defpackage.t4i;
import defpackage.x4i;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public class t6 extends x4i {
    public final zzfvp c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t6(zzfvp zzfvpVar, Map map) {
        super(map);
        this.c = zzfvpVar;
    }

    @Override
    public final void clear() {
        t4i.b(iterator());
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.b.keySet().containsAll(collection);
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj || this.b.keySet().equals(obj);
    }

    @Override
    public final int hashCode() {
        return this.b.keySet().hashCode();
    }

    @Override
    public final Iterator iterator() {
        return new s6(this, this.b.entrySet().iterator());
    }

    @Override
    public final boolean remove(Object obj) {
        Collection collection = (Collection) this.b.remove(obj);
        if (collection == null) {
            return false;
        }
        int size = collection.size();
        collection.clear();
        this.c.f -= size;
        return size > 0;
    }
}
