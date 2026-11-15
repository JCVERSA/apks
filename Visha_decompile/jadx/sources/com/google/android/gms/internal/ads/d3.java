package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class d3 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    public static final int zzg = 7;
    public static final int zzh = 8;
    private static final d3 zzi;
    private static volatile vti zzj;
    private int zzk;
    private m1 zzm;
    private int zzn;
    private o1 zzo;
    private int zzp;
    private String zzl = "";
    private int zzu = 1000;
    private int zzv = 1000;
    private int zzw = 1000;

    static {
        d3 d3Var = new d3();
        zzi = d3Var;
        ia.F(d3.class, d3Var);
    }

    public static d3 g0() {
        return zzi;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzi, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007", new Object[]{"zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", zzbbn$zzq.zze(), "zzv", zzbbn$zzq.zze(), "zzw", zzbbn$zzq.zze()});
        }
        if (iOrdinal == 3) {
            return new d3();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new c3();
        }
        if (iOrdinal == 5) {
            return zzi;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzj;
        if (msiVar == null) {
            synchronized (d3.class) {
                try {
                    msiVar = zzj;
                    if (msiVar == null) {
                        msiVar = new msi(zzi);
                        zzj = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }

    public final void d0(String str) {
        str.getClass();
        this.zzk |= 1;
        this.zzl = str;
    }

    public final void e0(o1 o1Var) {
        o1Var.getClass();
        this.zzo = o1Var;
        this.zzk |= 8;
    }
}
