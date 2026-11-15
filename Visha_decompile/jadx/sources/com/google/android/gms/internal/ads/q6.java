package com.google.android.gms.internal.ads;

import defpackage.a5i;
import defpackage.t4i;
import defpackage.z4i;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

public class q6 extends z4i {
    public final transient Map d;
    public final zzfvp e;

    public q6(zzfvp zzfvpVar, Map map) {
        this.e = zzfvpVar;
        this.d = map;
    }

    @Override
    public final Set a() {
        return new o6(this);
    }

    public final Map.Entry b(Map.Entry entry) {
        Object key = entry.getKey();
        return new zzfws(key, this.e.zzc(key, (Collection) entry.getValue()));
    }

    @Override
    public final void clear() {
        zzfvp zzfvpVar = this.e;
        if (this.d == zzfvpVar.e) {
            zzfvpVar.zzp();
        } else {
            t4i.b(new p6(this));
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        Map map = this.d;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj || this.d.equals(obj);
    }

    @Override
    public final Object get(Object obj) {
        Collection collection = (Collection) a5i.a(this.d, obj);
        if (collection == null) {
            return null;
        }
        return this.e.zzc(obj, collection);
    }

    @Override
    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override
    public Set keySet() {
        return this.e.zzt();
    }

    @Override
    public final Object remove(Object obj) {
        Collection collection = (Collection) this.d.remove(obj);
        if (collection == null) {
            return null;
        }
        zzfvp zzfvpVar = this.e;
        Collection collectionZza = zzfvpVar.zza();
        collectionZza.addAll(collection);
        zzfvpVar.f -= collection.size();
        collection.clear();
        return collectionZza;
    }

    @Override
    public final int size() {
        return this.d.size();
    }

    @Override
    public final String toString() {
        return this.d.toString();
    }
}
