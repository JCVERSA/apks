package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import com.google.common.collect.Sets;
import com.google.common.collect.r4;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

final class zzcs implements SharedPreferences.Editor {
    private boolean zza;
    private Set<String> zzb;
    private Map<String, Object> zzc;
    private final zzcp zzd;

    private final void zza(String str, Object obj) {
        if (obj != null) {
            this.zzc.put(str, obj);
        } else {
            remove(str);
        }
    }

    @Override
    public final void apply() {
        commit();
    }

    @Override
    public final SharedPreferences.Editor clear() {
        this.zza = true;
        return this;
    }

    @Override
    public final boolean commit() {
        if (this.zza) {
            this.zzd.zza.clear();
        }
        this.zzd.zza.keySet().removeAll(this.zzb);
        for (Map.Entry<String, Object> entry : this.zzc.entrySet()) {
            this.zzd.zza.put(entry.getKey(), entry.getValue());
        }
        for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener : this.zzd.zzb) {
            r4 r4VarA = Sets.k(this.zzb, this.zzc.keySet()).iterator();
            while (r4VarA.hasNext()) {
                onSharedPreferenceChangeListener.onSharedPreferenceChanged(this.zzd, (String) r4VarA.next());
            }
        }
        return (!this.zza && this.zzb.isEmpty() && this.zzc.isEmpty()) ? false : true;
    }

    @Override
    public final SharedPreferences.Editor putBoolean(String str, boolean z10) {
        zza(str, Boolean.valueOf(z10));
        return this;
    }

    @Override
    public final SharedPreferences.Editor putFloat(String str, float f10) {
        zza(str, Float.valueOf(f10));
        return this;
    }

    @Override
    public final SharedPreferences.Editor putInt(String str, int i10) {
        zza(str, Integer.valueOf(i10));
        return this;
    }

    @Override
    public final SharedPreferences.Editor putLong(String str, long j10) {
        zza(str, Long.valueOf(j10));
        return this;
    }

    @Override
    public final SharedPreferences.Editor putString(String str, String str2) {
        zza(str, str2);
        return this;
    }

    @Override
    public final SharedPreferences.Editor putStringSet(String str, Set<String> set) {
        zza(str, set);
        return this;
    }

    @Override
    public final SharedPreferences.Editor remove(String str) {
        this.zzb.add(str);
        return this;
    }

    private zzcs(zzcp zzcpVar) {
        this.zzd = zzcpVar;
        this.zza = false;
        this.zzb = new HashSet();
        this.zzc = new HashMap();
    }
}
