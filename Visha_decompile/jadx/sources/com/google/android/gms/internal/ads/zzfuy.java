package com.google.android.gms.internal.ads;

import defpackage.u4i;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

class zzfuy extends zzfvp implements u4i {
    public zzfuy(Map map) {
        super(map);
    }

    @Override
    public Collection zza() {
        throw null;
    }

    @Override
    public final Collection zzb(Collection collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override
    public final Collection zzc(Object obj, Collection collection) {
        return zzh(obj, (List) collection, null);
    }
}
