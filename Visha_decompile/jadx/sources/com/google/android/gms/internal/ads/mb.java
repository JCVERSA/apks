package com.google.android.gms.internal.ads;

import defpackage.lxi;
import defpackage.msi;
import defpackage.sti;
import defpackage.swi;
import defpackage.uwi;
import defpackage.vsi;
import defpackage.vti;
import defpackage.ysi;

public final class mb extends ia implements sti {
    private static final mb zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private db zzf;
    private fb zzg;
    private int zzh;
    private int zzk;
    private byte zzm = 2;
    private String zze = "";
    private vsi zzi = ia.q();
    private String zzj = "";
    private ysi zzl = ia.u();

    static {
        mb mbVar = new mb();
        zza = mbVar;
        ia.F(mb.class, mbVar);
    }

    public static uwi c0() {
        return (uwi) zza.p();
    }

    public static void f0(mb mbVar, String str) {
        str.getClass();
        ysi ysiVar = mbVar.zzl;
        if (!ysiVar.zzc()) {
            mbVar.zzl = ia.v(ysiVar);
        }
        mbVar.zzl.add(str);
    }

    public static void g0(mb mbVar, int i) {
        mbVar.zzc |= 1;
        mbVar.zzd = i;
    }

    public static void h0(mb mbVar, db dbVar) {
        dbVar.getClass();
        mbVar.zzf = dbVar;
        mbVar.zzc |= 4;
    }

    public static void i0(mb mbVar, String str) {
        str.getClass();
        mbVar.zzc |= 2;
        mbVar.zze = str;
    }

    public static void j0(mb mbVar, int i) {
        mbVar.zzk = i - 1;
        mbVar.zzc |= 64;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        lxi lxiVar = null;
        switch (zzgxuVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return Byte.valueOf(this.zzm);
            case SET_MEMOIZED_IS_INITIALIZED:
                this.zzm = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case BUILD_MESSAGE_INFO:
                return ia.z(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\b᠌\u0006\t\u001a", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", swi.a, "zzl"});
            case NEW_MUTABLE_INSTANCE:
                return new mb();
            case NEW_BUILDER:
                return new uwi(lxiVar);
            case GET_DEFAULT_INSTANCE:
                return zza;
            case GET_PARSER:
                vti msiVar = zzb;
                if (msiVar == null) {
                    synchronized (mb.class) {
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

    public final int b0() {
        return this.zzl.size();
    }

    public final String e0() {
        return this.zze;
    }
}
