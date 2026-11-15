package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Map;

final class zzan extends zzaj {
    private final transient zzai zza;
    private final transient Object[] zzb;
    private final transient int zzc;

    zzan(zzai zzaiVar, Object[] objArr, int i10, int i11) {
        this.zza = zzaiVar;
        this.zzb = objArr;
        this.zzc = i11;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.zza.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override
    public final int size() {
        return this.zzc;
    }

    @Override
    final int zza(Object[] objArr, int i10) {
        return zzd().zza(objArr, 0);
    }

    @Override
    public final zzas iterator() {
        return zzd().listIterator(0);
    }

    @Override
    final boolean zzf() {
        throw null;
    }

    @Override
    final zzaf zzh() {
        return new zzam(this);
    }
}
