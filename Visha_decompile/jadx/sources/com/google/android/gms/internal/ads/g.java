package com.google.android.gms.internal.ads;

import defpackage.boe;
import defpackage.doe;
import defpackage.eoe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;
import defpackage.ysi;

public final class g extends ia implements sti {
    private static final g zza;
    private static volatile vti zzb;
    private int zzc;
    private long zze;
    private long zzi;
    private long zzj;
    private long zzl;
    private int zzp;
    private String zzd = "";
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzk = "";
    private String zzm = "";
    private String zzn = "";
    private ysi zzo = ia.u();

    static {
        g gVar = new g();
        zza = gVar;
        ia.F(g.class, gVar);
    }

    public static boe b0() {
        return (boe) zza.p();
    }

    public static void d0(g gVar, String str) {
        str.getClass();
        gVar.zzc |= 1;
        gVar.zzd = str;
    }

    public static void e0(g gVar, String str) {
        gVar.zzc |= 16;
        gVar.zzh = str;
    }

    public static void f0(g gVar, String str) {
        gVar.zzc |= 1024;
        gVar.zzn = str;
    }

    public static void g0(g gVar, String str) {
        str.getClass();
        gVar.zzc |= 8;
        gVar.zzg = str;
    }

    public static void h0(g gVar, long j) {
        gVar.zzc |= 2;
        gVar.zze = j;
    }

    public static void i0(g gVar, String str) {
        str.getClass();
        gVar.zzc |= 4;
        gVar.zzf = str;
    }

    public static void j0(g gVar, int i) {
        gVar.zzp = i - 1;
        gVar.zzc |= 2048;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\r᠌\u000b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", f.class, "zzp", doe.a});
        }
        if (iOrdinal == 3) {
            return new g();
        }
        eoe eoeVar = null;
        if (iOrdinal == 4) {
            return new boe(eoeVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (g.class) {
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
