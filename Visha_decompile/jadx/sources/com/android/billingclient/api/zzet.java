package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.a;

final class zzet {
    public static synchronized double zza(final Context context) {
        return ((Double) zze(new zzes(context) {
            @Override
            public final Object zza() {
                return Double.valueOf(2.0d);
            }
        }, Double.valueOf(2.0d))).doubleValue();
    }

    public static synchronized long zzb(final Context context) {
        return ((Long) zze(new zzes(context) {
            @Override
            public final Object zza() {
                return 3L;
            }
        }, 3L)).longValue();
    }

    public static synchronized long zzc(final Context context) {
        return ((Long) zze(new zzes(context) {
            @Override
            public final Object zza() {
                return 100L;
            }
        }, 100L)).longValue();
    }

    public static synchronized long zzd(final Context context) {
        return ((Long) zze(new zzes(context) {
            @Override
            public final Object zza() {
                return 60000L;
            }
        }, 60000L)).longValue();
    }

    private static Object zze(zzes zzesVar, Object obj) {
        try {
            return zzesVar.zza();
        } catch (Exception e) {
            a.n("RuntimeFlags", "Fail to get the runtime flags: ".concat(e.toString()));
            return obj;
        }
    }
}
