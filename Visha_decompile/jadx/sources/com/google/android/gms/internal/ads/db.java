package com.google.android.gms.internal.ads;

import defpackage.awi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class db extends ia implements sti {
    private static final db zza;
    private static volatile vti zzb;
    private int zzc;
    private cb zzd;
    private zzgwn zzf;
    private zzgwn zzg;
    private int zzh;
    private byte zzi = 2;
    private ysi zze = ia.u();

    static {
        db dbVar = new db();
        zza = dbVar;
        ia.F(db.class, dbVar);
    }

    public db() {
        zzgwn zzgwnVar = zzgwn.zzb;
        this.zzf = zzgwnVar;
        this.zzg = zzgwnVar;
    }

    public static awi b0() {
        return (awi) zza.p();
    }

    public static void d0(db dbVar, bb bbVar) {
        bbVar.getClass();
        ysi ysiVar = dbVar.zze;
        if (!ysiVar.zzc()) {
            dbVar.zze = ia.v(ysiVar);
        }
        dbVar.zze.add(bbVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        lxi lxiVar = null;
        switch (zzgxuVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return Byte.valueOf(this.zzi);
            case SET_MEMOIZED_IS_INITIALIZED:
                this.zzi = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case BUILD_MESSAGE_INFO:
                return ia.z(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzc", "zzd", "zze", bb.class, "zzf", "zzg", "zzh"});
            case NEW_MUTABLE_INSTANCE:
                return new db();
            case NEW_BUILDER:
                return new awi(lxiVar);
            case GET_DEFAULT_INSTANCE:
                return zza;
            case GET_PARSER:
                vti msiVar = zzb;
                if (msiVar == null) {
                    synchronized (db.class) {
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
