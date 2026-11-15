package com.google.android.gms.internal.ads;

import defpackage.cwi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class fb extends ia implements sti {
    private static final fb zza;
    private static volatile vti zzb;
    private int zzc;
    private eb zzd;
    private zzgwn zzf;
    private zzgwn zzg;
    private int zzh;
    private zzgwn zzi;
    private byte zzj = 2;
    private ysi zze = ia.u();

    static {
        fb fbVar = new fb();
        zza = fbVar;
        ia.F(fb.class, fbVar);
    }

    public fb() {
        zzgwn zzgwnVar = zzgwn.zzb;
        this.zzf = zzgwnVar;
        this.zzg = zzgwnVar;
        this.zzi = zzgwnVar;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        lxi lxiVar = null;
        switch (zzgxuVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return Byte.valueOf(this.zzj);
            case SET_MEMOIZED_IS_INITIALIZED:
                this.zzj = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case BUILD_MESSAGE_INFO:
                return ia.z(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzc", "zzd", "zze", bb.class, "zzf", "zzg", "zzh", "zzi"});
            case NEW_MUTABLE_INSTANCE:
                return new fb();
            case NEW_BUILDER:
                return new cwi(lxiVar);
            case GET_DEFAULT_INSTANCE:
                return zza;
            case GET_PARSER:
                vti msiVar = zzb;
                if (msiVar == null) {
                    synchronized (fb.class) {
                        try {
                            msiVar = zzb;
                            if (msiVar == null) {
                                msiVar = new msi(zza);
                                zzb = msiVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return msiVar;
            default:
                throw null;
        }
    }
}
