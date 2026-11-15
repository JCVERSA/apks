package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class r0 extends ia implements sti {
    public static final int zza = 7;
    public static final int zzb = 8;
    public static final int zzc = 9;
    public static final int zzd = 10;
    public static final int zze = 11;
    public static final int zzf = 12;
    public static final int zzg = 13;
    public static final int zzh = 14;
    public static final int zzi = 15;
    public static final int zzj = 16;
    public static final int zzk = 17;
    private static final r0 zzl;
    private static volatile vti zzm;
    private n3 zzA;
    private p3 zzB;
    private int zzn;
    private int zzo;
    private x2 zzu;
    private z2 zzv;
    private b3 zzx;
    private e1 zzy;
    private x0 zzz;
    private int zzp = 1000;
    private ysi zzw = ia.u();
    private ysi zzC = ia.u();

    static {
        r0 r0Var = new r0();
        zzl = r0Var;
        ia.F(r0.class, r0Var);
    }

    public static r0 h0() {
        return zzl;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzl, "\u0004\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007᠌\u0000\b᠌\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzn", "zzo", zzbbn$zza$zza.zze(), "zzp", zzbbn$zzq.zze(), "zzu", "zzv", "zzw", v2.class, "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", q1.class});
        }
        if (iOrdinal == 3) {
            return new r0();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new q0();
        }
        if (iOrdinal == 5) {
            return zzl;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzm;
        if (msiVar == null) {
            synchronized (r0.class) {
                try {
                    msiVar = zzm;
                    if (msiVar == null) {
                        msiVar = new msi(zzl);
                        zzm = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }

    public z2 d0() {
        z2 z2Var = this.zzv;
        return z2Var == null ? z2.e0() : z2Var;
    }

    public final void e0(zzbbn$zza$zza zzbbn_zza_zza) {
        this.zzo = zzbbn_zza_zza.zza();
        this.zzn |= 1;
    }

    public final void f0(z2 z2Var) {
        z2Var.getClass();
        this.zzv = z2Var;
        this.zzn |= 8;
    }
}
