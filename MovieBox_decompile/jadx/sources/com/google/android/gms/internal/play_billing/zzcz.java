package com.google.android.gms.internal.play_billing;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public final class zzcz {
    private static final String[] zza = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
    private static final zzdd zzb;

    static {
        zzdd zzdeVar;
        for (int i10 = 0; i10 < 2; i10++) {
            zzdeVar = null;
            try {
                zzdeVar = (zzdd) Class.forName(zza[i10]).asSubclass(zzdd.class).getDeclaredConstructor(null).newInstance(null);
            } catch (Throwable unused) {
            }
            if (zzdeVar != null) {
                zzb = zzdeVar;
            }
        }
        zzdeVar = new zzde();
        zzb = zzdeVar;
    }

    @NullableDecl
    public static StackTraceElement zza(Class cls, int i10) {
        zzda.zza(cls, "target");
        return zzb.zza(cls, 2);
    }
}
