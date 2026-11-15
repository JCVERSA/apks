package com.google.android.gms.internal.play_billing;

final class zzes implements zzga {
    private static final zzes zza = new zzes();

    private zzes() {
    }

    public static zzes zza() {
        return zza;
    }

    @Override
    public final zzfz zzb(Class cls) {
        if (!zzex.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (zzfz) zzex.zzh(cls.asSubclass(zzex.class)).zzu(3, null, null);
        } catch (Exception e10) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
        }
    }

    @Override
    public final boolean zzc(Class cls) {
        return zzex.class.isAssignableFrom(cls);
    }
}
