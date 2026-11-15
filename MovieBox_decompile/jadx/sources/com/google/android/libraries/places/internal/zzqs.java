package com.google.android.libraries.places.internal;

import android.os.Build;
import dalvik.system.VMStack;

public final class zzqs extends zzqn {
    private static final boolean zza = zza.zza();
    private static final boolean zzb;
    private static final zzqm zzc;

    final class zza {
        zza() {
        }

        static boolean zza() {
            return zzqs.zzt();
        }
    }

    static {
        String str = Build.FINGERPRINT;
        boolean z10 = true;
        if (str != null && !"robolectric".equals(str)) {
            z10 = false;
        }
        zzb = z10;
        zzc = new zzqm() {
            @Override
            public zzpq zza(Class<?> cls, int i10) {
                return zzpq.zza;
            }

            @Override
            public String zzb(Class cls) {
                StackTraceElement stackTraceElementZza;
                if (zzqs.zza) {
                    try {
                        if (cls.equals(zzqs.zzp())) {
                            return VMStack.getStackClass2().getName();
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (!zzqs.zzb || (stackTraceElementZza = zzrq.zza(cls, 1)) == null) {
                    return null;
                }
                return stackTraceElementZza.getClassName();
            }
        };
    }

    static Class<?> zzp() {
        return VMStack.getStackClass2();
    }

    static String zzq() {
        try {
            return VMStack.getStackClass2().getName();
        } catch (Throwable unused) {
            return null;
        }
    }

    static boolean zzt() {
        try {
            Class.forName("dalvik.system.VMStack").getMethod("getStackClass2", null);
            return zza.class.getName().equals(zzq());
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override
    protected zzpw zze(String str) {
        return zzqv.zzb(str);
    }

    @Override
    protected zzqm zzh() {
        return zzc;
    }

    @Override
    protected zzrc zzj() {
        return zzqw.zzb();
    }

    @Override
    protected String zzm() {
        return "platform: Android";
    }
}
