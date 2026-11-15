package com.google.android.gms.internal.ads;

import defpackage.fvi;
import defpackage.jvi;
import defpackage.lxi;
import defpackage.msi;
import defpackage.mvi;
import defpackage.nvi;
import defpackage.ovi;
import defpackage.sti;
import defpackage.vsi;
import defpackage.vti;
import defpackage.ysi;

public final class wa extends ia implements sti {
    private static final wa zza;
    private static volatile vti zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private int zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;
    private boolean zzv;
    private long zzw;
    private boolean zzy;
    private String zzf = "";
    private ysi zzg = ia.u();
    private String zzl = "";
    private ysi zzu = ia.u();
    private vsi zzx = ia.q();
    private vsi zzz = ia.q();

    static {
        wa waVar = new wa();
        zza = waVar;
        ia.F(wa.class, waVar);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zza, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0004\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004\u001a\u0005᠌\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006\tဈ\u0007\nင\b\u000bင\t\fင\n\rဇ\u000b\u000e\u001b\u000fဇ\f\u0010ဂ\r\u0011ࠬ\u0012ဇ\u000e\u0013ࠬ", new Object[]{"zzc", "zzd", ovi.a, "zze", "zzf", "zzg", "zzh", mvi.a, "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", va.class, "zzv", "zzw", "zzx", fvi.a(), "zzy", "zzz", nvi.a});
        }
        if (iOrdinal == 3) {
            return new wa();
        }
        lxi lxiVar = null;
        if (iOrdinal == 4) {
            return new jvi(lxiVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (wa.class) {
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
