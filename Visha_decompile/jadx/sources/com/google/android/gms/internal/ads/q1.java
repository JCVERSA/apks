package com.google.android.gms.internal.ads;

import defpackage.fxe;
import defpackage.msi;
import defpackage.sti;
import defpackage.vti;

public final class q1 extends ia implements sti {
    public static final int zza = 5;
    public static final int zzb = 6;
    public static final int zzc = 7;
    public static final int zzd = 8;
    public static final int zze = 9;
    public static final int zzf = 10;
    public static final int zzg = 11;
    public static final int zzh = 12;
    public static final int zzi = 13;
    public static final int zzj = 14;
    public static final int zzk = 15;
    public static final int zzl = 16;
    public static final int zzm = 17;
    public static final int zzn = 18;
    public static final int zzo = 19;
    public static final int zzp = 20;
    private static final q1 zzu;
    private static volatile vti zzv;
    private q2 zzA;
    private s1 zzB;
    private k2 zzC;
    private x1 zzD;
    private int zzE;
    private int zzF;
    private m1 zzG;
    private int zzH;
    private int zzI;
    private int zzJ;
    private int zzK;
    private int zzL;
    private long zzM;
    private int zzw;
    private i2 zzx;
    private m2 zzy;
    private o2 zzz;

    static {
        q1 q1Var = new q1();
        zzu = q1Var;
        ia.F(q1.class, q1Var);
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            return ia.z(zzu, "\u0004\u0010\u0000\u0001\u0005\u0014\u0010\u0000\u0000\u0000\u0005ဉ\u0000\u0006ဉ\u0001\u0007ဉ\u0002\bဉ\u0003\tဉ\u0004\nဉ\u0005\u000bဉ\u0006\fင\u0007\rင\b\u000eဉ\t\u000fင\n\u0010င\u000b\u0011င\f\u0012င\r\u0013င\u000e\u0014ဃ\u000f", new Object[]{"zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM"});
        }
        if (iOrdinal == 3) {
            return new q1();
        }
        fxe fxeVar = null;
        if (iOrdinal == 4) {
            return new p1();
        }
        if (iOrdinal == 5) {
            return zzu;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzv;
        if (msiVar == null) {
            synchronized (q1.class) {
                try {
                    msiVar = zzv;
                    if (msiVar == null) {
                        msiVar = new msi(zzu);
                        zzv = msiVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return msiVar;
    }
}
