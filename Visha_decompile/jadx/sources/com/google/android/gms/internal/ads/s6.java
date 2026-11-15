package com.google.android.gms.internal.ads;

import defpackage.v2i;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class s6 implements Iterator {
    public Map.Entry b;
    public final Iterator c;
    public final t6 d;

    public s6(t6 t6Var, Iterator it) {
        this.c = it;
        this.d = t6Var;
    }

    @Override
    public final boolean hasNext() {
        return this.c.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.c.next();
        this.b = entry;
        return entry.getKey();
    }

    @Override
    public final void remove() {
        v2i.m(this.b != null, "no calls to next() since the last call to remove()");
        Collection collection = (Collection) this.b.getValue();
        this.c.remove();
        this.d.c.f -= collection.size();
        collection.clear();
        this.b = null;
    }
}
