package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public final class zzd {
    public SharedPreferences a;
    public SharedPreferences.Editor b;
    public final Context c;
    public final Object d = new Object();

    public zzd(Context context) {
        this.c = context;
    }

    public final void a() {
        synchronized (this.d) {
            try {
                if (this.a != null) {
                    return;
                }
                SharedPreferences sharedPreferences = this.c.getSharedPreferences("query_info_shared_prefs", 0);
                this.a = sharedPreferences;
                this.b = sharedPreferences.edit();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int zza() {
        int i;
        a();
        synchronized (this.d) {
            i = this.a.getInt("aav", -1);
        }
        return i;
    }

    public final int zzb() {
        int i;
        a();
        synchronized (this.d) {
            i = this.a.getInt("vc", -1);
        }
        return i;
    }

    @Nullable
    public final String zzc(String str) {
        String string;
        a();
        synchronized (this.d) {
            string = this.a.getString(str, null);
            this.b.remove(str).commit();
        }
        return string;
    }

    @Nullable
    public final String zzd() {
        String string;
        a();
        synchronized (this.d) {
            string = this.a.getString("dm", null);
        }
        return string;
    }

    @Nullable
    public final String zze() {
        String string;
        a();
        synchronized (this.d) {
            string = this.a.getString("pn", null);
        }
        return string;
    }

    public final Map zzf() {
        HashMap map;
        a();
        synchronized (this.d) {
            try {
                Map<String, ?> all = this.a.getAll();
                map = new HashMap();
                for (Map.Entry<String, ?> entry : all.entrySet()) {
                    if ((entry.getValue() instanceof String) && !Objects.equals(entry.getKey(), "pn") && !Objects.equals(entry.getKey(), "vc") && !Objects.equals(entry.getKey(), "dm") && !Objects.equals(entry.getKey(), "aav")) {
                        map.put(entry.getKey(), (String) entry.getValue());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return map;
    }

    public final void zzg() {
        a();
        synchronized (this.d) {
            this.b.clear().commit();
        }
    }

    public final void zzh(String str, String str2) {
        a();
        synchronized (this.d) {
            this.b.putString(str, str2).commit();
        }
    }

    public final void zzi(String str, int i, String str2, int i2) {
        a();
        synchronized (this.d) {
            this.b.putString("pn", str).putInt("vc", i).putString("dm", str2).putInt("aav", i2).commit();
        }
    }

    public final boolean zzj(String str) {
        boolean zContains;
        a();
        synchronized (this.d) {
            zContains = this.a.contains(str);
        }
        return zContains;
    }
}
