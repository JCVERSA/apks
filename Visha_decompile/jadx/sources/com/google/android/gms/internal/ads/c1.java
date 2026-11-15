package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class c1 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    public static final int zzg = 7;
    public static final int zzh = 8;
    private static final c1 zzi;
    private static volatile vti zzj;
    private int zzk;
    private int zzm;
    private int zzn;
    private long zzo;
    private long zzv;
    private int zzw;
    private ysi zzl = ia.u();
    private String zzp = "";
    private String zzu = "";

    static {
        c1 c1Var = new c1();
        zzi = c1Var;
        ia.F(c1.class, c1Var);
    }

    public static a1 s0() {
        return (a1) zzi.p();
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzi, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u001b\u0002င\u0000\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005\bင\u0006", new Object[]{"zzk", "zzl", y0.class, "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw"});
        }
        if (iOrdinal == 3) {
            return new c1();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new a1();
        }
        if (iOrdinal == 5) {
            return zzi;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzj;
        if (msiVar == null) {
            synchronized (c1.class) {
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

    public final void d0(int i) {
        this.zzk |= 1;
        this.zzm = i;
    }

    public final void e0(long j) {
        this.zzk |= 32;
        this.zzv = j;
    }

    public final void f0(int i) {
        this.zzk |= 2;
        this.zzn = i;
    }

    public final void g0(long j) {
        this.zzk |= 4;
        this.zzo = j;
    }

    public final void n0(Iterable iterable) {
        o0();
        aa.i(iterable, this.zzl);
    }

    public final void o0() {
        ysi ysiVar = this.zzl;
        if (ysiVar.zzc()) {
            return;
        }
        this.zzl = ia.v(ysiVar);
    }

    public final void p0(String str) {
        str.getClass();
        this.zzk |= 8;
        this.zzp = str;
    }

    public final void q0(int i) {
        this.zzk |= 64;
        this.zzw = i;
    }

    public final void r0(String str) {
        str.getClass();
        this.zzk |= 16;
        this.zzu = str;
    }
}
