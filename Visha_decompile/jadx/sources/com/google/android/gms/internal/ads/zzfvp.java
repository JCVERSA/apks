package com.google.android.gms.internal.ads;

import defpackage.r3i;
import defpackage.s3i;
import defpackage.v2i;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;

abstract class zzfvp extends s3i implements Serializable {
    public final transient Map e;
    public transient int f;

    public zzfvp(Map map) {
        v2i.e(map.isEmpty());
        this.e = map;
    }

    public static void zzo(zzfvp zzfvpVar, Object obj) {
        Object objRemove;
        try {
            objRemove = zzfvpVar.e.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            objRemove = null;
        }
        Collection collection = (Collection) objRemove;
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfvpVar.f -= size;
        }
    }

    public abstract Collection zza();

    public Collection zzb(Collection collection) {
        throw null;
    }

    public Collection zzc(Object obj, Collection collection) {
        throw null;
    }

    @Override
    public final int zze() {
        return this.f;
    }

    @Override
    public final Collection zzf() {
        return new r3i(this);
    }

    @Override
    public final Iterator zzg() {
        return new n6(this);
    }

    public final List zzh(Object obj, List list, a7 a7Var) {
        return list instanceof RandomAccess ? new w6(this, obj, list, a7Var) : new c7(this, obj, list, a7Var);
    }

    @Override
    public Map zzj() {
        throw null;
    }

    public final Map zzk() {
        Map map = this.e;
        if (map instanceof NavigableMap) {
            return new u6(this, (NavigableMap) map);
        }
        return map instanceof SortedMap ? new x6(this, (SortedMap) map) : new q6(this, map);
    }

    @Override
    public Set zzl() {
        throw null;
    }

    public final Set zzm() {
        Map map = this.e;
        if (map instanceof NavigableMap) {
            return new v6(this, (NavigableMap) map);
        }
        return map instanceof SortedMap ? new y6(this, (SortedMap) map) : new t6(this, map);
    }

    @Override
    public final void zzp() {
        Map map = this.e;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        this.f = 0;
    }

    @Override
    public final boolean zzq(Object obj, Object obj2) {
        Map map = this.e;
        Collection collection = (Collection) map.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.f++;
            return true;
        }
        Collection collectionZza = zza();
        if (!collectionZza.add(obj2)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f++;
        map.put(obj, collectionZza);
        return true;
    }
}
