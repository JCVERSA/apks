package com.google.android.gms.internal.play_billing;

import android.os.Build;
import dalvik.system.VMStack;

public final class zzcb extends zzbw {
    private static final boolean zza = zza.zza();
    private static final boolean zzb;
    private static final zzbv zzc;

    final class zza {
        zza() {
        }

        static boolean zza() {
            return zzcb.zzt();
        }
    }

    static {
        String str = Build.FINGERPRINT;
        boolean z10 = true;
        if (str != null && !"robolectric".equals(str)) {
            z10 = false;
        }
        zzb = z10;
        zzc = new zzbv() {
            @Override
            public zzaz zza(Class<?> cls, int i10) {
                return zzaz.zza;
            }

            @Override
            public String zzb(Class cls) {
                StackTraceElement stackTraceElementZza;
                if (zzcb.zza) {
                    try {
                        if (cls.equals(zzcb.zzp())) {
                            return VMStack.getStackClass2().getName();
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (!zzcb.zzb || (stackTraceElementZza = zzcz.zza(cls, 1)) == null) {
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
    protected zzbf zze(String str) {
        return zzce.zzb(str);
    }

    @Override
    protected zzbv zzh() {
        return zzc;
    }

    @Override
    protected zzcl zzj() {
        return zzcf.zzb();
    }

    @Override
    protected String zzm() {
        return "platform: Android";
    }
}
