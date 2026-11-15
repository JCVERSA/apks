package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import java.util.LinkedHashMap;
import java.util.Map;

final class zzt extends LinkedHashMap {
    final zzv zza;

    public zzt(zzv zzvVar) {
        this.zza = zzvVar;
    }

    @Override
    public final boolean removeEldestEntry(Map.Entry entry) {
        zzv zzvVar = this.zza;
        synchronized (zzvVar) {
            try {
                if (size() <= zzvVar.a) {
                    return false;
                }
                zzvVar.f.add(new Pair((String) entry.getKey(), ((zzu) entry.getValue()).zzb));
                return size() > zzvVar.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
