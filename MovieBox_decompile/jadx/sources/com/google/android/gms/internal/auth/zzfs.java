package com.google.android.gms.internal.auth;

final class zzfs {
    private static final zzfr zza;
    private static final zzfr zzb;

    static {
        zzfr zzfrVar = null;
        try {
            zzfrVar = (zzfr) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzfrVar;
        zzb = new zzfr();
    }

    static zzfr zza() {
        return zza;
    }

    static zzfr zzb() {
        return zzb;
    }
}
