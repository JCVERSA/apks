package com.google.android.gms.internal.ads;

import defpackage.v3i;
import defpackage.w4i;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

public final class o6 extends w4i {
    public final q6 b;

    public o6(q6 q6Var) {
        this.b = q6Var;
    }

    @Override
    public final Map b() {
        return this.b;
    }

    @Override
    public final boolean contains(Object obj) {
        return v3i.a(this.b.d.entrySet(), obj);
    }

    @Override
    public final Iterator iterator() {
        return new p6(this.b);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Objects.requireNonNull(entry);
        q6 q6Var = this.b;
        zzfvp.zzo(q6Var.e, entry.getKey());
        return true;
    }
}
