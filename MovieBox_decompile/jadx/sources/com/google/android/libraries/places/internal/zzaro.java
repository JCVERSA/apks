package com.google.android.libraries.places.internal;

import java.util.Iterator;

public final class zzaro extends zzatu implements zzavg {
    private static final zzaua zzb = new zzard();
    private static final zzaro zze;
    private static volatile zzavn zzf;
    private int zzg;
    private int zzk;
    private boolean zzm;
    private double zzn;
    private int zzo;
    private int zzp;
    private boolean zzs;
    private zzarj zzt;
    private zzarl zzu;
    private zzarh zzv;
    private zzaqn zzw;
    private zzarn zzx;
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private String zzl = "";
    private String zzq = "";
    private zzatz zzr = zzatu.zzau();

    static {
        zzaro zzaroVar = new zzaro();
        zze = zzaroVar;
        zzatu.zzaE(zzaro.class, zzaroVar);
    }

    private zzaro() {
    }

    public static zzare zza() {
        return (zzare) zze.zzar();
    }

    public static zzaro zzd() {
        return zze;
    }

    static void zze(zzaro zzaroVar, String str) {
        str.getClass();
        zzaroVar.zzh = str;
    }

    static void zzf(zzaro zzaroVar, String str) {
        str.getClass();
        zzaroVar.zzi = str;
    }

    static void zzl(zzaro zzaroVar, Iterable iterable) {
        zzatz zzatzVar = zzaroVar.zzr;
        if (!zzatzVar.zzc()) {
            zzaroVar.zzr = zzatu.zzav(zzatzVar);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzaroVar.zzr.zzh(((zzaqb) it.next()).zza());
        }
    }

    static void zzn(zzaro zzaroVar, zzarj zzarjVar) {
        zzarjVar.getClass();
        zzaroVar.zzt = zzarjVar;
        zzaroVar.zzg |= 1;
    }

    static void zzo(zzaro zzaroVar, zzarl zzarlVar) {
        zzarlVar.getClass();
        zzaroVar.zzu = zzarlVar;
        zzaroVar.zzg |= 2;
    }

    @Override
    protected final Object zzb(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return zzatu.zzaB(zze, "\u0000\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\f\u0006Ȉ\u0007\u0007\t\u0000\n\u0004\u000b,\f\u0007\rဉ\u0000\u000eဉ\u0001\u000fဉ\u0002\u0010ဉ\u0003\u0011ဉ\u0004\u0012\u0004\u0013Ȉ", new Object[]{"zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzp", "zzq"});
        }
        if (i11 == 3) {
            return new zzaro();
        }
        zzard zzardVar = null;
        if (i11 == 4) {
            return new zzare(zzardVar);
        }
        if (i11 == 5) {
            return zze;
        }
        if (i11 != 6) {
            return null;
        }
        zzavn zzatpVar = zzf;
        if (zzatpVar == null) {
            synchronized (zzaro.class) {
                try {
                    zzatpVar = zzf;
                    if (zzatpVar == null) {
                        zzatpVar = new zzatp(zze);
                        zzf = zzatpVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return zzatpVar;
    }
}
