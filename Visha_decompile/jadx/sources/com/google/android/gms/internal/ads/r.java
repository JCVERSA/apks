package com.google.android.gms.internal.ads;

import defpackage.dpe;
import defpackage.mpe;
import defpackage.msi;
import defpackage.spe;
import defpackage.sti;
import defpackage.usi;
import defpackage.vti;

public final class r extends ia implements sti {
    private static final r zza;
    private static volatile vti zzb;
    private int zzc;
    private long zzw;
    private long zzx;
    private long zzd = -1;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private int zzj = 1000;
    private long zzk = -1;
    private long zzl = -1;
    private long zzm = -1;
    private int zzn = 1000;
    private long zzo = -1;
    private long zzp = -1;
    private long zzu = -1;
    private long zzv = -1;
    private long zzy = -1;
    private long zzz = -1;
    private long zzA = -1;
    private long zzB = -1;

    static {
        r rVar = new r();
        zza = rVar;
        ia.F(r.class, rVar);
    }

    public static dpe b0() {
        return (dpe) zza.p();
    }

    public static void d0(r rVar) {
        rVar.zzc &= -9;
        rVar.zzg = -1L;
    }

    public static void e0(r rVar, long j) {
        rVar.zzc |= 8;
        rVar.zzg = j;
    }

    public static void f0(r rVar, long j) {
        rVar.zzc |= 32;
        rVar.zzi = j;
    }

    public static void g0(r rVar, long j) {
        rVar.zzc |= 4096;
        rVar.zzp = j;
    }

    public static void h0(r rVar, long j) {
        rVar.zzc |= 512;
        rVar.zzm = j;
    }

    public static void i0(r rVar, long j) {
        rVar.zzc |= 2048;
        rVar.zzo = j;
    }

    public static void j0(r rVar, long j) {
        rVar.zzc |= 4;
        rVar.zzf = j;
    }

    public static void k0(r rVar, long j) {
        rVar.zzc |= 16;
        rVar.zzh = j;
    }

    public static void l0(r rVar, long j) {
        rVar.zzc |= 128;
        rVar.zzk = j;
    }

    public static void m0(r rVar, long j) {
        rVar.zzc |= 131072;
        rVar.zzy = j;
    }

    public static void n0(r rVar, long j) {
        rVar.zzc |= 1;
        rVar.zzd = j;
    }

    public static void o0(r rVar, long j) {
        rVar.zzc |= 262144;
        rVar.zzz = j;
    }

    public static void p0(r rVar, long j) {
        rVar.zzc |= 2;
        rVar.zze = j;
    }

    public static void q0(r rVar, long j) {
        rVar.zzc |= 256;
        rVar.zzl = j;
    }

    public static void r0(r rVar, long j) {
        rVar.zzc |= 32768;
        rVar.zzw = j;
    }

    public static void s0(r rVar, long j) {
        rVar.zzc |= 65536;
        rVar.zzx = j;
    }

    public static void t0(r rVar, long j) {
        rVar.zzc |= 8192;
        rVar.zzu = j;
    }

    public static void u0(r rVar, long j) {
        rVar.zzc |= 16384;
        rVar.zzv = j;
    }

    public static void v0(r rVar, int i) {
        rVar.zzn = i - 1;
        rVar.zzc |= 1024;
    }

    public static void w0(r rVar, int i) {
        rVar.zzj = i - 1;
        rVar.zzc |= 64;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            usi usiVar = mpe.a;
            return ia.z(zza, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007᠌\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000b᠌\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", usiVar, "zzk", "zzl", "zzm", "zzn", usiVar, "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB"});
        }
        if (iOrdinal == 3) {
            return new r();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new dpe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (r.class) {
                try {
                    msiVar = zzb;
                    if (msiVar == null) {
                        msiVar = new msi(zza);
                        zzb = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
