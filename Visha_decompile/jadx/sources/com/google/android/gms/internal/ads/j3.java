package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.xsi;

public final class j3 extends ia implements sti {
    public static final int zza = 9;
    public static final int zzb = 10;
    public static final int zzc = 11;
    public static final int zzd = 12;
    public static final int zze = 13;
    public static final int zzf = 14;
    public static final int zzg = 15;
    public static final int zzh = 16;
    public static final int zzi = 17;
    public static final int zzj = 18;
    public static final int zzk = 19;
    public static final int zzl = 20;
    public static final int zzm = 21;
    private static final j3 zzn;
    private static volatile vti zzo;
    private d3 zzA;
    private g3 zzB;
    private v0 zzC;
    private r0 zzD;
    private c1 zzE;
    private s2 zzF;
    private g2 zzG;
    private int zzp;
    private int zzu;
    private int zzw;
    private o1 zzy;
    private String zzv = "";
    private int zzx = 1000;
    private xsi zzz = ia.s();

    static {
        j3 j3Var = new j3();
        zzn = j3Var;
        ia.F(j3.class, j3Var);
    }

    public static i3 v0() {
        return (i3) zzn.p();
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzn, "\u0004\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\tင\u0000\nဈ\u0001\u000bဋ\u0002\f᠌\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzp", "zzu", "zzv", "zzw", "zzx", zzbbn$zzq.zze(), "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzG"});
        }
        if (iOrdinal == 3) {
            return new j3();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new i3();
        }
        if (iOrdinal == 5) {
            return zzn;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzo;
        if (msiVar == null) {
            synchronized (j3.class) {
                try {
                    msiVar = zzo;
                    if (msiVar == null) {
                        msiVar = new msi(zzn);
                        zzo = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }

    public final void i0(Iterable iterable) {
        p0();
        aa.i(iterable, this.zzz);
    }

    public String k0() {
        return this.zzv;
    }

    public final void l0(String str) {
        str.getClass();
        this.zzp |= 2;
        this.zzv = str;
    }

    public final void m0(c1 c1Var) {
        c1Var.getClass();
        this.zzE = c1Var;
        this.zzp |= 512;
    }

    public final void n0(s2 s2Var) {
        s2Var.getClass();
        this.zzF = s2Var;
        this.zzp |= 1024;
    }

    public final void o0() {
        this.zzz = ia.s();
    }

    public final void p0() {
        xsi xsiVar = this.zzz;
        if (xsiVar.zzc()) {
            return;
        }
        this.zzz = ia.t(xsiVar);
    }

    public final void q0(r0 r0Var) {
        r0Var.getClass();
        this.zzD = r0Var;
        this.zzp |= 256;
    }

    public final void r0(g2 g2Var) {
        g2Var.getClass();
        this.zzG = g2Var;
        this.zzp |= 2048;
    }

    public final void s0(d3 d3Var) {
        d3Var.getClass();
        this.zzA = d3Var;
        this.zzp |= 32;
    }

    public r0 t0() {
        r0 r0Var = this.zzD;
        return r0Var == null ? r0.h0() : r0Var;
    }

    public d3 u0() {
        d3 d3Var = this.zzA;
        return d3Var == null ? d3.g0() : d3Var;
    }
}
