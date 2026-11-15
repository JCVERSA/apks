package com.google.android.gms.internal.ads;

import defpackage.lxi;
import defpackage.msi;
import defpackage.pvi;
import defpackage.qvi;
import defpackage.rwi;
import defpackage.sti;
import defpackage.vti;
import defpackage.xwi;
import defpackage.ysi;
import java.util.List;

public final class qb extends ia implements sti {
    private static final qb zza;
    private static volatile vti zzb;
    private ob zzC;
    private za zzE;
    private wa zzG;
    private hb zzI;
    private int zzJ;
    private long zzM;
    private pb zzN;
    private jb zzO;
    private int zzc;
    private int zzd;
    private int zze;
    private xa zzi;
    private lb zzm;
    private boolean zzn;
    private boolean zzu;
    private boolean zzv;
    private nb zzx;
    private boolean zzy;
    private byte zzQ = 2;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private ysi zzj = ia.u();
    private ysi zzk = ia.u();
    private String zzl = "";
    private ysi zzo = ia.u();
    private String zzp = "";
    private zzgwn zzw = zzgwn.zzb;
    private String zzz = "";
    private ysi zzA = ia.u();
    private ysi zzB = ia.u();
    private ysi zzD = ia.u();
    private String zzF = "";
    private ysi zzH = ia.u();
    private ysi zzK = ia.u();
    private ysi zzL = ia.u();
    private String zzP = "";

    static {
        qb qbVar = new qb();
        zza = qbVar;
        ia.F(qb.class, qbVar);
    }

    public static qvi b0() {
        return (qvi) zza.p();
    }

    public static void g0(qb qbVar, Iterable iterable) {
        ysi ysiVar = qbVar.zzA;
        if (!ysiVar.zzc()) {
            qbVar.zzA = ia.v(ysiVar);
        }
        aa.i(iterable, qbVar.zzA);
    }

    public static void h0(qb qbVar, Iterable iterable) {
        ysi ysiVar = qbVar.zzB;
        if (!ysiVar.zzc()) {
            qbVar.zzB = ia.v(ysiVar);
        }
        aa.i(iterable, qbVar.zzB);
    }

    public static void i0(qb qbVar, mb mbVar) {
        mbVar.getClass();
        ysi ysiVar = qbVar.zzj;
        if (!ysiVar.zzc()) {
            qbVar.zzj = ia.v(ysiVar);
        }
        qbVar.zzj.add(mbVar);
    }

    public static void j0(qb qbVar) {
        qbVar.zzc &= -65;
        qbVar.zzl = zza.zzl;
    }

    public static void k0(qb qbVar, String str) {
        qbVar.zzc |= 64;
        qbVar.zzl = str;
    }

    public static void l0(qb qbVar, nb nbVar) {
        nbVar.getClass();
        qbVar.zzx = nbVar;
        qbVar.zzc |= 8192;
    }

    public static void m0(qb qbVar, xa xaVar) {
        xaVar.getClass();
        qbVar.zzi = xaVar;
        qbVar.zzc |= 32;
    }

    public static void n0(qb qbVar, String str) {
        str.getClass();
        qbVar.zzc |= 8;
        qbVar.zzg = str;
    }

    public static void o0(qb qbVar, lb lbVar) {
        lbVar.getClass();
        qbVar.zzm = lbVar;
        qbVar.zzc |= 128;
    }

    public static void p0(qb qbVar, String str) {
        str.getClass();
        qbVar.zzc |= 4;
        qbVar.zzf = str;
    }

    public static void q0(qb qbVar, int i) {
        qbVar.zzd = i - 1;
        qbVar.zzc |= 1;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        lxi lxiVar = null;
        switch (zzgxuVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return Byte.valueOf(this.zzQ);
            case SET_MEMOIZED_IS_INITIALIZED:
                this.zzQ = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case BUILD_MESSAGE_INFO:
                return ia.z(zza, "\u0001#\u0000\u0001\u0001##\u0000\t\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\n᠌\u0000\u000b᠌\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0010\u001b\u0011ဉ\r\u0012ဇ\u000e\u0013ဈ\u000f\u0014\u001a\u0015\u001a\u0016ဉ\u0010\u0017\u001b\u0018ဉ\u0011\u0019ဈ\u0012\u001aဉ\u0013\u001b\u001b\u001cဉ\u0014\u001d᠌\u0015\u001e\u001b\u001f\u001b ဂ\u0016!ဉ\u0017\"ဉ\u0018#ဈ\u0019", new Object[]{"zzc", "zzf", "zzg", "zzh", "zzj", mb.class, "zzn", "zzo", "zzp", "zzu", "zzv", "zzd", rwi.a, "zze", pvi.a, "zzi", "zzl", "zzm", "zzw", "zzk", sb.class, "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", ub.class, "zzE", "zzF", "zzG", "zzH", ab.class, "zzI", "zzJ", xwi.a, "zzK", ib.class, "zzL", kb.class, "zzM", "zzN", "zzO", "zzP"});
            case NEW_MUTABLE_INSTANCE:
                return new qb();
            case NEW_BUILDER:
                return new qvi(lxiVar);
            case GET_DEFAULT_INSTANCE:
                return zza;
            case GET_PARSER:
                vti msiVar = zzb;
                if (msiVar == null) {
                    synchronized (qb.class) {
                        try {
                            msiVar = zzb;
                            if (msiVar == null) {
                                msiVar = new msi(zza);
                                zzb = msiVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return msiVar;
            default:
                throw null;
        }
    }

    public final String d0() {
        return this.zzl;
    }

    public final String e0() {
        return this.zzf;
    }

    public final List f0() {
        return this.zzj;
    }
}
