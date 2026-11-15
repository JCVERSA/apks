package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.content.f;

final class zzhc implements zzhb {
    private static zzhc zza;
    private final Context zzb;
    private final ContentObserver zzc;

    private zzhc() {
        this.zzb = null;
        this.zzc = null;
    }

    static zzhc zza(Context context) {
        zzhc zzhcVar;
        synchronized (zzhc.class) {
            try {
                if (zza == null) {
                    zza = f.b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new zzhc(context) : new zzhc();
                }
                zzhcVar = zza;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzhcVar;
    }

    @Override
    public final String zza(final String str) {
        Context context = this.zzb;
        if (context != null && !zzgs.zza(context)) {
            try {
                return (String) zzha.zza(new zzhd() {
                    @Override
                    public final Object zza() {
                        return this.zza.zzb(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e10) {
                Log.e("GservicesLoader", "Unable to read GServices for: " + str, e10);
            }
        }
        return null;
    }

    final String zzb(String str) {
        return zzgj.zza(this.zzb.getContentResolver(), str, null);
    }

    private zzhc(Context context) {
        this.zzb = context;
        zzhe zzheVar = new zzhe(this, null);
        this.zzc = zzheVar;
        context.getContentResolver().registerContentObserver(zzgi.zza, true, zzheVar);
    }

    static synchronized void zza() {
        Context context;
        try {
            zzhc zzhcVar = zza;
            if (zzhcVar != null && (context = zzhcVar.zzb) != null && zzhcVar.zzc != null) {
                context.getContentResolver().unregisterContentObserver(zza.zzc);
            }
            zza = null;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
