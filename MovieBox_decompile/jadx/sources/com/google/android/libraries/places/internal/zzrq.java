package com.google.android.libraries.places.internal;

public final class zzrq {
    private static final String[] zza = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
    private static final zzru zzb;

    static {
        zzru zzrvVar;
        for (int i10 = 0; i10 < 2; i10++) {
            zzrvVar = null;
            try {
                zzrvVar = (zzru) Class.forName(zza[i10]).asSubclass(zzru.class).getDeclaredConstructor(null).newInstance(null);
            } catch (Throwable unused) {
            }
            if (zzrvVar != null) {
                zzb = zzrvVar;
            }
        }
        zzrvVar = new zzrv();
        zzb = zzrvVar;
    }

    public static StackTraceElement zza(Class cls, int i10) {
        zzrr.zza(cls, "target");
        return zzb.zza(cls, 2);
    }
}
