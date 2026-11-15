package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vsi;
import defpackage.vti;
import defpackage.wsi;
import java.util.Iterator;

public final class y0 extends ia implements sti {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    public static final int zzg = 7;
    public static final int zzh = 8;
    public static final int zzi = 9;
    public static final int zzj = 10;
    public static final int zzk = 11;
    public static final int zzl = 12;
    public static final int zzm = 13;
    private static final wsi zzn = new a();
    private static final y0 zzo;
    private static volatile vti zzp;
    private v0 zzA;
    private int zzB;
    private int zzC;
    private int zzD;
    private int zzE;
    private int zzF;
    private int zzG;
    private long zzH;
    private int zzu;
    private long zzv;
    private int zzw;
    private long zzx;
    private long zzy;
    private vsi zzz = ia.q();

    public class a implements wsi {
    }

    static {
        y0 y0Var = new y0();
        zzo = y0Var;
        ia.F(y0.class, y0Var);
    }

    public static z0 E0() {
        return (z0) zzo.p();
    }

    public static y0 G0(byte[] bArr) {
        return (y0) ia.M(zzo, bArr);
    }

    public final void A0(long j) {
        this.zzu |= 2048;
        this.zzH = j;
    }

    public final void B0(zzbbn$zzq zzbbn_zzq) {
        this.zzB = zzbbn_zzq.zza();
        this.zzu |= 32;
    }

    public long C0() {
        return this.zzv;
    }

    public zzbbn$zzq D0() {
        zzbbn$zzq zzbbn_zzqZzb = zzbbn$zzq.zzb(this.zzw);
        return zzbbn_zzqZzb == null ? zzbbn$zzq.ENUM_FALSE : zzbbn_zzqZzb;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzo, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ࠞ\u0006ဉ\u0004\u0007᠌\u0005\b᠌\u0006\t᠌\u0007\nင\b\u000b᠌\t\f᠌\n\rဂ\u000b", new Object[]{"zzu", "zzv", "zzw", zzbbn$zzq.zze(), "zzx", "zzy", "zzz", zzbbn$zzd$zza.zze(), "zzA", "zzB", zzbbn$zzq.zze(), "zzC", zzbbn$zzq.zze(), "zzD", zzbbn$zzq.zze(), "zzE", "zzF", zzbbn$zzq.zze(), "zzG", zzbbn$zzaf$zzd.zze(), "zzH"});
        }
        if (iOrdinal == 3) {
            return new y0();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new z0();
        }
        if (iOrdinal == 5) {
            return zzo;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzp;
        if (msiVar == null) {
            synchronized (y0.class) {
                try {
                    msiVar = zzp;
                    if (msiVar == null) {
                        msiVar = new msi(zzo);
                        zzp = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }

    public final void c0() {
        vsi vsiVar = this.zzz;
        if (vsiVar.zzc()) {
            return;
        }
        this.zzz = ia.r(vsiVar);
    }

    public final void p0(Iterable iterable) {
        c0();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.zzz.zzi(((zzbbn$zzd$zza) it.next()).zza());
        }
    }

    public final void q0(zzbbn$zzq zzbbn_zzq) {
        this.zzC = zzbbn_zzq.zza();
        this.zzu |= 64;
    }

    public final void r0(zzbbn$zzq zzbbn_zzq) {
        this.zzD = zzbbn_zzq.zza();
        this.zzu |= 128;
    }

    public final void s0(int i) {
        this.zzu |= 256;
        this.zzE = i;
    }

    public final void t0(zzbbn$zzaf$zzd zzbbn_zzaf_zzd) {
        this.zzG = zzbbn_zzaf_zzd.zza();
        this.zzu |= 1024;
    }

    public final void u0(v0 v0Var) {
        v0Var.getClass();
        this.zzA = v0Var;
        this.zzu |= 16;
    }

    public final void v0(zzbbn$zzq zzbbn_zzq) {
        this.zzF = zzbbn_zzq.zza();
        this.zzu |= 512;
    }

    public final void w0(long j) {
        this.zzu |= 8;
        this.zzy = j;
    }

    public final void x0(long j) {
        this.zzu |= 4;
        this.zzx = j;
    }

    public final void y0(zzbbn$zzq zzbbn_zzq) {
        this.zzw = zzbbn_zzq.zza();
        this.zzu |= 2;
    }

    public final void z0(long j) {
        this.zzu |= 1;
        this.zzv = j;
    }
}
