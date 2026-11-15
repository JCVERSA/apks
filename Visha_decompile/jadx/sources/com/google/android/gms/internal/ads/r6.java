package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

public abstract class r6 implements Iterator {
    public final Iterator b;
    public Collection c = null;
    public Iterator d = zzfxe.INSTANCE;
    public final zzfvp e;

    public r6(zzfvp zzfvpVar) {
        this.e = zzfvpVar;
        this.b = zzfvpVar.e.entrySet().iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.b.hasNext() || this.d.hasNext();
    }

    @Override
    public final Object next() {
        if (!this.d.hasNext()) {
            Map.Entry entry = (Map.Entry) this.b.next();
            entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.c = collection;
            this.d = collection.iterator();
        }
        return this.d.next();
    }

    @Override
    public final void remove() {
        this.d.remove();
        Collection collection = this.c;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.b.remove();
        }
        this.e.f--;
    }
}
