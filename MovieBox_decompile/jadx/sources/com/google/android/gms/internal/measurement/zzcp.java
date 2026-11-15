package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class zzcp implements SharedPreferences {
    private final Map<String, Object> zza = new HashMap();
    private final Set<SharedPreferences.OnSharedPreferenceChangeListener> zzb = new HashSet();

    @Override
    public final boolean contains(String str) {
        return this.zza.containsKey(str);
    }

    @Override
    public final SharedPreferences.Editor edit() {
        return new zzcs(this);
    }

    @Override
    public final Map<String, ?> getAll() {
        return this.zza;
    }

    @Override
    public final boolean getBoolean(String str, boolean z10) {
        return ((Boolean) zza(str, Boolean.valueOf(z10))).booleanValue();
    }

    @Override
    public final float getFloat(String str, float f10) {
        return ((Float) zza(str, Float.valueOf(f10))).floatValue();
    }

    @Override
    public final int getInt(String str, int i10) {
        return ((Integer) zza(str, Integer.valueOf(i10))).intValue();
    }

    @Override
    public final long getLong(String str, long j10) {
        return ((Long) zza(str, Long.valueOf(j10))).longValue();
    }

    @Override
    public final String getString(String str, String str2) {
        return (String) zza(str, str2);
    }

    @Override
    public final Set<String> getStringSet(String str, Set<String> set) {
        return (Set) zza(str, set);
    }

    @Override
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.zzb.add(onSharedPreferenceChangeListener);
    }

    @Override
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.zzb.remove(onSharedPreferenceChangeListener);
    }

    private final <T> T zza(String str, T t10) {
        T t11 = (T) this.zza.get(str);
        return t11 != null ? t11 : t10;
    }
}
