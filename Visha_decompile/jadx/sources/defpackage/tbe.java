package defpackage;

import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import java.util.Arrays;
import java.util.List;

public final class tbe implements c9e {
    public f9e d;
    public rae e;
    public hre g;
    public n9e h;
    public int i;
    public int j;
    public sbe k;
    public int l;
    public long m;
    public final byte[] a = new byte[42];
    public final u4h b = new u4h(new byte[32768], 0);
    public final i9e c = new i9e();
    public int f = 0;

    public tbe(int i) {
    }

    public final long a(u4h u4hVar, boolean z) {
        boolean zC;
        this.h.getClass();
        int iW = u4hVar.w();
        while (iW <= u4hVar.x() - 16) {
            u4hVar.l(iW);
            n9e n9eVar = this.h;
            int i = this.j;
            i9e i9eVar = this.c;
            if (j9e.c(u4hVar, n9eVar, i, i9eVar)) {
                u4hVar.l(iW);
                return i9eVar.a;
            }
            iW++;
        }
        if (!z) {
            u4hVar.l(iW);
            return -1L;
        }
        while (iW <= u4hVar.x() - this.i) {
            u4hVar.l(iW);
            try {
                zC = j9e.c(u4hVar, this.h, this.j, this.c);
            } catch (IndexOutOfBoundsException unused) {
                zC = false;
            }
            if (u4hVar.w() <= u4hVar.x() && zC) {
                u4hVar.l(iW);
                return this.c.a;
            }
            iW++;
        }
        u4hVar.l(u4hVar.x());
        return -1L;
    }

    @Override
    public final void b(long j, long j2) {
        if (j == 0) {
            this.f = 0;
        } else {
            sbe sbeVar = this.k;
            if (sbeVar != null) {
                sbeVar.d(j2);
            }
        }
        this.m = j2 != 0 ? -1L : 0L;
        this.l = 0;
        this.b.i(0);
    }

    public final void c() {
        long j = this.m * 1000000;
        n9e n9eVar = this.h;
        int i = kfh.a;
        this.e.g(j / ((long) n9eVar.e), 1, this.l, 0, null);
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) throws zzaz {
        boolean zP;
        kae jaeVar;
        boolean z;
        int i = this.f;
        if (i == 0) {
            d9eVar.zzj();
            long jZze = d9eVar.zze();
            hre hreVarA = k9e.a(d9eVar, true);
            d9eVar.f((int) (d9eVar.zze() - jZze));
            this.g = hreVarA;
            this.f = 1;
            return 0;
        }
        if (i == 1) {
            d9eVar.i(this.a, 0, 42);
            d9eVar.zzj();
            this.f = 2;
            return 0;
        }
        if (i == 2) {
            u4h u4hVar = new u4h(4);
            d9eVar.h(u4hVar.n(), 0, 4);
            if (u4hVar.O() != 1716281667) {
                throw zzaz.zza("Failed to read FLAC stream marker.", null);
            }
            this.f = 3;
            return 0;
        }
        if (i == 3) {
            n9e n9eVarE = this.h;
            do {
                d9eVar.zzj();
                p3h p3hVar = new p3h(new byte[4], 4);
                d9eVar.i(p3hVar.a, 0, 4);
                zP = p3hVar.p();
                int iD = p3hVar.d(7);
                int iD2 = p3hVar.d(24) + 4;
                if (iD == 0) {
                    byte[] bArr = new byte[38];
                    d9eVar.h(bArr, 0, 38);
                    n9eVarE = new n9e(bArr, 4);
                } else {
                    if (n9eVarE == null) {
                        throw new IllegalArgumentException();
                    }
                    if (iD == 3) {
                        u4h u4hVar2 = new u4h(iD2);
                        d9eVar.h(u4hVar2.n(), 0, iD2);
                        n9eVarE = n9eVarE.f(k9e.b(u4hVar2));
                    } else if (iD == 4) {
                        u4h u4hVar3 = new u4h(iD2);
                        d9eVar.h(u4hVar3.n(), 0, iD2);
                        u4hVar3.m(4);
                        n9eVarE = n9eVarE.g(Arrays.asList(xae.c(u4hVar3, false, false).a));
                    } else if (iD == 6) {
                        u4h u4hVar4 = new u4h(iD2);
                        d9eVar.h(u4hVar4.n(), 0, iD2);
                        u4hVar4.m(4);
                        n9eVarE = n9eVarE.e(zzfww.zzo(qce.b(u4hVar4)));
                    } else {
                        d9eVar.f(iD2);
                    }
                }
                int i2 = kfh.a;
                this.h = n9eVarE;
            } while (!zP);
            n9eVarE.getClass();
            this.i = Math.max(n9eVarE.c, 6);
            erj erjVarC = this.h.c(this.a, this.g);
            rae raeVar = this.e;
            gpj gpjVarB = erjVarC.b();
            gpjVarB.e("audio/flac");
            raeVar.f(gpjVarB.K());
            this.e.c(this.h.a());
            this.f = 4;
            return 0;
        }
        if (i == 4) {
            d9eVar.zzj();
            u4h u4hVar5 = new u4h(2);
            d9eVar.i(u4hVar5.n(), 0, 2);
            int iK = u4hVar5.K();
            if ((iK >> 2) != 16382) {
                d9eVar.zzj();
                throw zzaz.zza("First frame does not start with sync code.", null);
            }
            d9eVar.zzj();
            this.j = iK;
            f9e f9eVar = this.d;
            int i3 = kfh.a;
            long jZzf = d9eVar.zzf();
            long jZzd = d9eVar.zzd();
            n9e n9eVar = this.h;
            n9eVar.getClass();
            if (n9eVar.k != null) {
                jaeVar = new l9e(n9eVar, jZzf);
            } else if (jZzd == -1 || n9eVar.j <= 0) {
                jaeVar = new jae(n9eVar.a(), 0L);
            } else {
                sbe sbeVar = new sbe(n9eVar, this.j, jZzf, jZzd);
                this.k = sbeVar;
                jaeVar = sbeVar.b();
            }
            f9eVar.i(jaeVar);
            this.f = 5;
            return 0;
        }
        this.e.getClass();
        n9e n9eVar2 = this.h;
        n9eVar2.getClass();
        sbe sbeVar2 = this.k;
        if (sbeVar2 != null && sbeVar2.e()) {
            return sbeVar2.a(d9eVar, y9eVar);
        }
        if (this.m == -1) {
            this.m = j9e.b(d9eVar, n9eVar2);
            return 0;
        }
        u4h u4hVar6 = this.b;
        int iX = u4hVar6.x();
        if (iX < 32768) {
            int iB = d9eVar.b(u4hVar6.n(), iX, 32768 - iX);
            z = iB == -1;
            if (!z) {
                u4hVar6.k(iX + iB);
            } else if (u4hVar6.u() == 0) {
                c();
                return -1;
            }
        } else {
            z = false;
        }
        int iW = u4hVar6.w();
        int i4 = this.l;
        int i5 = this.i;
        if (i4 < i5) {
            u4hVar6.m(Math.min(i5 - i4, u4hVar6.u()));
        }
        long jA = a(u4hVar6, z);
        int iW2 = u4hVar6.w() - iW;
        u4hVar6.l(iW);
        this.e.d(u4hVar6, iW2);
        this.l += iW2;
        if (jA != -1) {
            c();
            this.l = 0;
            this.m = jA;
        }
        int length = u4hVar6.n().length - u4hVar6.x();
        if (u4hVar6.u() >= 16 || length >= 16) {
            return 0;
        }
        int iU = u4hVar6.u();
        System.arraycopy(u4hVar6.n(), u4hVar6.w(), u4hVar6.n(), 0, iU);
        u4hVar6.l(0);
        u4hVar6.k(iU);
        return 0;
    }

    @Override
    public final boolean e(d9e d9eVar) {
        k9e.a(d9eVar, false);
        u4h u4hVar = new u4h(4);
        ((m8e) d9eVar).e(u4hVar.n(), 0, 4, false);
        return u4hVar.O() == 1716281667;
    }

    @Override
    public final void f(f9e f9eVar) {
        this.d = f9eVar;
        this.e = f9eVar.j(0, 1);
        f9eVar.zzG();
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return zzfww.zzn();
    }
}
