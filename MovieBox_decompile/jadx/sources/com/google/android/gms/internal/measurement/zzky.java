package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

final class zzky implements zzkv {
    zzky() {
    }

    @Override
    public final int zza(int i10, Object obj, Object obj2) {
        zzkw zzkwVar = (zzkw) obj;
        if (zzkwVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzkwVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override
    public final Object zzb(Object obj) {
        return zzkw.zza().zzb();
    }

    @Override
    public final Object zzc(Object obj) {
        ((zzkw) obj).zzc();
        return obj;
    }

    @Override
    public final Map<?, ?> zzd(Object obj) {
        return (zzkw) obj;
    }

    @Override
    public final Map<?, ?> zze(Object obj) {
        return (zzkw) obj;
    }

    @Override
    public final boolean zzf(Object obj) {
        return !((zzkw) obj).zzd();
    }

    @Override
    public final zzkt<?, ?> zza(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override
    public final Object zza(Object obj, Object obj2) {
        zzkw zzkwVarZzb = (zzkw) obj;
        zzkw zzkwVar = (zzkw) obj2;
        if (!zzkwVar.isEmpty()) {
            if (!zzkwVarZzb.zzd()) {
                zzkwVarZzb = zzkwVarZzb.zzb();
            }
            zzkwVarZzb.zza(zzkwVar);
        }
        return zzkwVarZzb;
    }
}
