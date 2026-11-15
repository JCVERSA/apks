package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import defpackage.esi;
import defpackage.lpe;
import defpackage.mpe;
import defpackage.msi;
import defpackage.ooe;
import defpackage.ope;
import defpackage.soe;
import defpackage.spe;
import defpackage.sti;
import defpackage.uoe;
import defpackage.usi;
import defpackage.voe;
import defpackage.vti;
import defpackage.ysi;
import defpackage.zoe;

public final class t extends ia implements sti {
    private static final t zza;
    private static volatile vti zzb;
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private long zzE;
    private long zzI;
    private long zzJ;
    private long zzK;
    private long zzM;
    private u zzP;
    private q zzaG;
    private long zzaM;
    private long zzaN;
    private n zzaQ;
    private o zzaR;
    private int zzaU;
    private long zzaV;
    private boolean zzaY;
    private r zzah;
    private s zzaj;
    private int zzau;
    private int zzav;
    private int zzaw;
    private int zzax;
    private z zzay;
    private long zzba;
    private y zzbb;
    private int zzc;
    private int zzd;
    private int zze;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzu;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;
    private String zzf = "";
    private String zzg = "";
    private String zzv = "";
    private String zzF = "";
    private String zzG = "D";
    private String zzH = "";
    private String zzL = "";
    private long zzN = -1;
    private long zzO = -1;
    private long zzQ = -1;
    private long zzR = -1;
    private long zzS = -1;
    private long zzT = -1;
    private long zzU = -1;
    private long zzV = -1;
    private String zzW = "D";
    private String zzX = "D";
    private long zzY = -1;
    private int zzZ = 1000;
    private int zzaa = 1000;
    private long zzab = -1;
    private long zzac = -1;
    private long zzad = -1;
    private long zzae = -1;
    private long zzaf = -1;
    private int zzag = 1000;
    private ysi zzai = ia.u();
    private long zzak = -1;
    private long zzal = -1;
    private long zzam = -1;
    private long zzan = -1;
    private long zzao = -1;
    private long zzap = -1;
    private long zzaq = -1;
    private long zzar = -1;
    private String zzas = "D";
    private long zzat = -1;
    private long zzaz = -1;
    private int zzaA = 1000;
    private int zzaB = 1000;
    private String zzaC = "D";
    private ysi zzaD = ia.u();
    private int zzaE = 1000;
    private ysi zzaF = ia.u();
    private String zzaH = "";
    private long zzaI = -1;
    private long zzaJ = -1;
    private long zzaK = -1;
    private long zzaL = -1;
    private long zzaO = -1;
    private String zzaP = "";
    private long zzaS = -1;
    private long zzaT = -1;
    private String zzaW = "";
    private int zzaX = 2;
    private String zzaZ = "";
    private long zzbc = -1;
    private String zzbd = "";

    static {
        t tVar = new t();
        zza = tVar;
        ia.F(t.class, tVar);
    }

    public static void A0(t tVar, long j) {
        tVar.zzc |= 2097152;
        tVar.zzE = j;
    }

    public static ooe B0() {
        return (ooe) zza.p();
    }

    public static void C0(t tVar, long j) {
        tVar.zzc |= C.BUFFER_FLAG_FIRST_SAMPLE;
        tVar.zzK = j;
    }

    public static void D0(t tVar, long j) {
        tVar.zzc |= 33554432;
        tVar.zzI = j;
    }

    public static void E0(t tVar, long j) {
        tVar.zzc |= 536870912;
        tVar.zzM = j;
    }

    public static void F0(t tVar, s sVar) {
        sVar.getClass();
        tVar.zzaj = sVar;
        tVar.zzd |= 524288;
    }

    public static void G0(t tVar, String str) {
        str.getClass();
        tVar.zzc |= 268435456;
        tVar.zzL = str;
    }

    public static void J0(t tVar, int i) {
        tVar.zzaa = i - 1;
        tVar.zzd |= 2048;
    }

    public static void K0(t tVar, int i) {
        tVar.zzag = i - 1;
        tVar.zzd |= 131072;
    }

    public static void L0(t tVar, int i) {
        tVar.zzaB = i - 1;
        tVar.zze |= 32;
    }

    public static void M0(t tVar, int i) {
        tVar.zzaU = i - 1;
        tVar.zze |= 4194304;
    }

    public static void N0(t tVar, int i) {
        tVar.zzaA = i - 1;
        tVar.zze |= 16;
    }

    public static void O0(t tVar, int i) {
        tVar.zzZ = i - 1;
        tVar.zzd |= 1024;
    }

    public static t Q0() {
        return zza;
    }

    public static t R0(byte[] bArr, esi esiVar) {
        return (t) ia.Q(zza, bArr, esiVar);
    }

    public static void U0(t tVar, r rVar) {
        rVar.getClass();
        ysi ysiVar = tVar.zzai;
        if (!ysiVar.zzc()) {
            tVar.zzai = ia.v(ysiVar);
        }
        tVar.zzai.add(rVar);
    }

    public static void W0(t tVar, long j) {
        tVar.zzd |= 67108864;
        tVar.zzaq = j;
    }

    public static void X0(t tVar, String str) {
        str.getClass();
        tVar.zzd |= 268435456;
        tVar.zzas = str;
    }

    public static void Y0(t tVar, long j) {
        tVar.zzd |= C.BUFFER_FLAG_FIRST_SAMPLE;
        tVar.zzar = j;
    }

    public static void Z0(t tVar, long j) {
        tVar.zze |= 2048;
        tVar.zzaJ = j;
    }

    public static void a1(t tVar, String str) {
        str.getClass();
        tVar.zze |= 131072;
        tVar.zzaP = str;
    }

    public static void b0(t tVar, long j) {
        tVar.zze |= 4096;
        tVar.zzaK = j;
    }

    public static void b1(t tVar, String str) {
        str.getClass();
        tVar.zzc |= 2;
        tVar.zzg = str;
    }

    public static void c0(t tVar, String str) {
        str.getClass();
        tVar.zzd |= 256;
        tVar.zzX = str;
    }

    public static void c1(t tVar, String str) {
        str.getClass();
        tVar.zzd |= 128;
        tVar.zzW = str;
    }

    public static void d0(t tVar, String str) {
        str.getClass();
        tVar.zzc |= 4194304;
        tVar.zzF = str;
    }

    public static void d1(t tVar, long j) {
        tVar.zzc |= 4;
        tVar.zzh = j;
    }

    public static void e0(t tVar, long j) {
        tVar.zzc |= 1048576;
        tVar.zzD = j;
    }

    public static void e1(t tVar, long j) {
        tVar.zzd |= 2097152;
        tVar.zzal = j;
    }

    public static void f0(t tVar, long j) {
        tVar.zzc |= 1024;
        tVar.zzp = j;
    }

    public static void f1(t tVar, long j) {
        tVar.zzc |= 32;
        tVar.zzk = j;
    }

    public static void g0(t tVar, long j) {
        tVar.zzc |= 2048;
        tVar.zzu = j;
    }

    public static void g1(t tVar, long j) {
        tVar.zzc |= 16;
        tVar.zzj = j;
    }

    public static void h0(t tVar, String str) {
        str.getClass();
        tVar.zzc |= 1;
        tVar.zzf = str;
    }

    public static void h1(t tVar, String str) {
        str.getClass();
        tVar.zzc |= 16777216;
        tVar.zzH = str;
    }

    public static void i0(t tVar, long j) {
        tVar.zzd |= 4194304;
        tVar.zzam = j;
    }

    public static void i1(t tVar, long j) {
        tVar.zzd |= 32;
        tVar.zzU = j;
    }

    public static void j0(t tVar, long j) {
        tVar.zzc |= 524288;
        tVar.zzC = j;
    }

    public static void j1(t tVar, long j) {
        tVar.zzd |= 4096;
        tVar.zzab = j;
    }

    public static void k0(t tVar, long j) {
        tVar.zzd |= 8388608;
        tVar.zzan = j;
    }

    public static void k1(t tVar, long j) {
        tVar.zzd |= 8192;
        tVar.zzac = j;
    }

    public static void l0(t tVar, long j) {
        tVar.zzd |= 64;
        tVar.zzV = j;
    }

    public static void l1(t tVar, long j) {
        tVar.zze |= 268435456;
        tVar.zzba = j;
    }

    public static void m0(t tVar, long j) {
        tVar.zzd |= 16;
        tVar.zzT = j;
    }

    public static void m1(t tVar, long j) {
        tVar.zze |= 8192;
        tVar.zzaL = j;
    }

    public static void n0(t tVar, long j) {
        tVar.zzc |= Integer.MIN_VALUE;
        tVar.zzO = j;
    }

    public static void o0(t tVar, long j) {
        tVar.zzd |= 8;
        tVar.zzS = j;
    }

    public static void p0(t tVar, long j) {
        tVar.zzd |= 4;
        tVar.zzR = j;
    }

    public static void q0(t tVar, long j) {
        tVar.zzc |= 1073741824;
        tVar.zzN = j;
    }

    public static void r0(t tVar, long j) {
        tVar.zzc |= 32768;
        tVar.zzy = j;
    }

    public static void s0(t tVar, long j) {
        tVar.zzd |= 2;
        tVar.zzQ = j;
    }

    public static void t0(t tVar, long j) {
        tVar.zzc |= 8192;
        tVar.zzw = j;
    }

    public static void u0(t tVar, long j) {
        tVar.zzc |= 16384;
        tVar.zzx = j;
    }

    public static void v0(t tVar, long j) {
        tVar.zzd |= 16384;
        tVar.zzad = j;
    }

    public static void w0(t tVar, long j) {
        tVar.zze |= 1024;
        tVar.zzaI = j;
    }

    public static void x0(t tVar, r rVar) {
        rVar.getClass();
        tVar.zzah = rVar;
        tVar.zzd |= 262144;
    }

    public static void y0(t tVar, long j) {
        tVar.zzc |= 67108864;
        tVar.zzJ = j;
    }

    public static void z0(t tVar, long j) {
        tVar.zzc |= 65536;
        tVar.zzz = j;
    }

    public final boolean H0() {
        return (this.zzc & 4194304) != 0;
    }

    public final boolean I0() {
        return (this.zze & 536870912) != 0;
    }

    public final y S0() {
        y yVar = this.zzbb;
        return yVar == null ? y.d0() : yVar;
    }

    public final String T0() {
        return this.zzF;
    }

    @Override
    public final Object W(zzgxu zzgxuVar, Object obj, Object obj2) {
        int iOrdinal = zzgxuVar.ordinal();
        if (iOrdinal == 0) {
            return (byte) 1;
        }
        if (iOrdinal == 2) {
            usi usiVar = uoe.a;
            usi usiVar2 = mpe.a;
            return ia.z(zza, "\u0001c\u0000\u0003\u0001Įc\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂW\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈX\u0019ဂ\\\u001a᠌Y\u001bဈ\u0016\u001cဇZ\u001dဈ\u0018\u001eဈ[\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0᠌*1᠌+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08᠌19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=A᠌>B᠌?Cဈ<D᠌AEဉBFဂCGဂ8Hဂ9I᠌DJဂ)Kဈ\u0017L᠌EMဈFN\u001bO᠌GP\u001bQဉHRဈISဂJTဂKUဂLVဂMWဂNXဂPYဈQZဉR[ဉS\\ဂT]ဂU^᠌V_᠌@aဂOÉဉ]ĭဂ^Įဈ_", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzaV", "zzD", "zzE", "zzaW", "zzba", "zzaX", usiVar, "zzF", "zzaY", "zzH", "zzaZ", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzai", r.class, "zzU", "zzV", "zzW", "zzX", "zzZ", usiVar2, "zzaa", usiVar2, "zzah", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag", usiVar2, "zzaj", "zzak", "zzal", "zzam", "zzan", "zzaq", "zzar", "zzat", "zzau", lpe.a, "zzav", ope.a, "zzas", "zzax", soe.a, "zzay", "zzaz", "zzao", "zzap", "zzaA", usiVar2, "zzY", "zzG", "zzaB", usiVar2, "zzaC", "zzaD", p.class, "zzaE", usiVar2, "zzaF", m.class, "zzaG", "zzaH", "zzaI", "zzaJ", "zzaK", "zzaL", "zzaM", "zzaO", "zzaP", "zzaQ", "zzaR", "zzaS", "zzaT", "zzaU", zoe.a, "zzaw", voe.a, "zzaN", "zzbb", "zzbc", "zzbd"});
        }
        if (iOrdinal == 3) {
            return new t();
        }
        spe speVar = null;
        if (iOrdinal == 4) {
            return new ooe(speVar);
        }
        if (iOrdinal == 5) {
            return zza;
        }
        if (iOrdinal != 6) {
            throw null;
        }
        vti msiVar = zzb;
        if (msiVar == null) {
            synchronized (t.class) {
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
