package com.google.android.gms.internal.ads;

import defpackage.v2i;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class p6 implements Iterator {
    public final Iterator b;
    public Collection c;
    public final q6 d;

    public p6(q6 q6Var) {
        this.d = q6Var;
        this.b = q6Var.d.entrySet().iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.b.next();
        this.c = (Collection) entry.getValue();
        return this.d.b(entry);
    }

    @Override
    public final void remove() {
        v2i.m(this.c != null, "no calls to next() since the last call to remove()");
        this.b.remove();
        this.d.e.f -= this.c.size();
        this.c.clear();
        this.c = null;
    }
}
