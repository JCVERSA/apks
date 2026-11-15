package com.google.android.gms.internal.ads;

import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.zvi;

public final class bb extends ia implements sti {
    private static final bb zza;
    private static volatile vti zzb;
    private int zzc;
    private zzgwn zzd;
    private zzgwn zze;
    private byte zzf = 2;

    static {
        bb bbVar = new bb();
        zza = bbVar;
        ia.F(bb.class, bbVar);
    }

    public bb() {
        zzgwn zzgwnVar = zzgwn.zzb;
        this.zzd = zzgwnVar;
        this.zze = zzgwnVar;
    }

    public static zvi b0() {
        return (zvi) zza.p();
    }

    public static void d0(bb bbVar, zzgwn zzgwnVar) {
        bbVar.zzc |= 1;
        bbVar.zzd = zzgwnVar;
    }

    public static void e0(bb bbVar, zzgwn zzgwnVar) {
        bbVar.zzc |= 2;
        bbVar.zze = zzgwnVar;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        lxi lxiVar = null;
        switch (zzgxuVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return Byte.valueOf(this.zzf);
            case SET_MEMOIZED_IS_INITIALIZED:
                this.zzf = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case BUILD_MESSAGE_INFO:
                return ia.z(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{"zzc", "zzd", "zze"});
            case NEW_MUTABLE_INSTANCE:
                return new bb();
            case NEW_BUILDER:
                return new zvi(lxiVar);
            case GET_DEFAULT_INSTANCE:
                return zza;
            case GET_PARSER:
                vti msiVar = zzb;
                if (msiVar == null) {
                    synchronized (bb.class) {
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
