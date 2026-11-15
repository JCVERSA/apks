package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.vb0;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;
import java.util.Arrays;

public final class vb0 implements z70 {
    private b80 e;
    private a62 f;

    @Nullable
    private k01 h;
    private ac0 i;
    private int j;
    private int k;
    private ub0 l;
    private int m;
    private long n;
    private final byte[] a = new byte[42];
    private final ag1 b = new ag1(0, new byte[32768]);
    private final boolean c = false;
    private final wb0.a d = new wb0.a();
    private int g = 0;

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return vb0.a();
            }
        };
    }

    @Override
    public final void a(b80 b80Var) {
        this.e = b80Var;
        this.f = b80Var.a(0, 1);
        b80Var.a();
    }

    @Override
    public final void release() {
    }

    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        boolean zF;
        ex1 bVar;
        boolean z;
        long j;
        boolean zA;
        boolean z2 = true;
        int i = this.g;
        k01 k01Var = null;
        if (i == 0) {
            boolean z3 = this.c;
            wz wzVar = (wz) a80Var;
            wzVar.c();
            long jD = wzVar.d();
            k01 k01VarA = new ui0().a(wzVar, !z3 ? null : si0.b);
            if (k01VarA != null && k01VarA.c() != 0) {
                k01Var = k01VarA;
            }
            wzVar.a((int) (wzVar.d() - jD));
            this.h = k01Var;
            this.g = 1;
            return 0;
        }
        if (i == 1) {
            byte[] bArr = this.a;
            wz wzVar2 = (wz) a80Var;
            wzVar2.b(bArr, 0, bArr.length, false);
            wzVar2.c();
            this.g = 2;
            return 0;
        }
        if (i == 2) {
            ag1 ag1Var = new ag1(4);
            ((wz) a80Var).a(ag1Var.c(), 0, 4, false);
            if (ag1Var.v() == 1716281667) {
                this.g = 3;
                return 0;
            }
            throw eg1.a("Failed to read FLAC stream marker.", (Exception) null);
        }
        if (i == 3) {
            ac0 ac0VarA = this.i;
            do {
                wz wzVar3 = (wz) a80Var;
                wzVar3.c();
                byte[] bArr2 = new byte[4];
                zf1 zf1Var = new zf1(4, bArr2);
                wzVar3.b(bArr2, 0, 4, false);
                zF = zf1Var.f();
                int iB = zf1Var.b(7);
                int iB2 = zf1Var.b(24) + 4;
                if (iB == 0) {
                    byte[] bArr3 = new byte[38];
                    wzVar3.a(bArr3, 0, 38, false);
                    ac0VarA = new ac0(4, bArr3);
                } else {
                    if (ac0VarA == null) {
                        throw new IllegalArgumentException();
                    }
                    if (iB == 3) {
                        ag1 ag1Var2 = new ag1(iB2);
                        wzVar3.a(ag1Var2.c(), 0, iB2, false);
                        ac0VarA = ac0VarA.a(xb0.a(ag1Var2));
                    } else if (iB == 4) {
                        ag1 ag1Var3 = new ag1(iB2);
                        wzVar3.a(ag1Var3.c(), 0, iB2, false);
                        ag1Var3.f(4);
                        ac0VarA = ac0VarA.b(Arrays.asList(gj2.a(ag1Var3, false, false).a));
                    } else if (iB == 6) {
                        ag1 ag1Var4 = new ag1(iB2);
                        wzVar3.a(ag1Var4.c(), 0, iB2, false);
                        ag1Var4.f(4);
                        int iH = ag1Var4.h();
                        String strA = ag1Var4.a(ag1Var4.h(), lo.a);
                        String strA2 = ag1Var4.a(ag1Var4.h(), lo.c);
                        int iH2 = ag1Var4.h();
                        int iH3 = ag1Var4.h();
                        int iH4 = ag1Var4.h();
                        int iH5 = ag1Var4.h();
                        int iH6 = ag1Var4.h();
                        byte[] bArr4 = new byte[iH6];
                        ag1Var4.a(bArr4, 0, iH6);
                        ac0VarA = ac0VarA.a(kk0.a(new jh1(iH, strA, strA2, iH2, iH3, iH4, iH5, bArr4)));
                    } else {
                        wzVar3.a(iB2);
                    }
                }
                int i2 = f92.a;
                this.i = ac0VarA;
            } while (!zF);
            this.j = Math.max(ac0VarA.c, 6);
            this.f.a(this.i.a(this.a, this.h));
            this.g = 4;
            return 0;
        }
        long j2 = 0;
        if (i == 4) {
            wz wzVar4 = (wz) a80Var;
            wzVar4.c();
            ag1 ag1Var5 = new ag1(2);
            wzVar4.b(ag1Var5.c(), 0, 2, false);
            int iZ = ag1Var5.z();
            if ((iZ >> 2) == 16382) {
                wzVar4.c();
                this.k = iZ;
                b80 b80Var = this.e;
                int i3 = f92.a;
                long jA = wzVar4.a();
                long jB = wzVar4.b();
                this.i.getClass();
                ac0 ac0Var = this.i;
                if (ac0Var.k != null) {
                    bVar = new zb0(ac0Var, jA);
                } else if (jB != -1 && ac0Var.j > 0) {
                    ub0 ub0Var = new ub0(ac0Var, this.k, jA, jB);
                    this.l = ub0Var;
                    bVar = ub0Var.a();
                } else {
                    bVar = new ex1.b(ac0Var.b(), 0L);
                }
                b80Var.a(bVar);
                this.g = 5;
                return 0;
            }
            wzVar4.c();
            throw eg1.a("First frame does not start with sync code.", (Exception) null);
        }
        if (i == 5) {
            this.f.getClass();
            this.i.getClass();
            ub0 ub0Var2 = this.l;
            if (ub0Var2 != null && ub0Var2.b()) {
                return this.l.a((wz) a80Var, pj1Var);
            }
            if (this.n == -1) {
                ac0 ac0Var2 = this.i;
                wz wzVar5 = (wz) a80Var;
                wzVar5.c();
                wzVar5.a(false, 1);
                byte[] bArr5 = new byte[1];
                wzVar5.b(bArr5, 0, 1, false);
                boolean z4 = (bArr5[0] & 1) == 1;
                wzVar5.a(false, 2);
                int i4 = z4 ? 7 : 6;
                ag1 ag1Var6 = new ag1(i4);
                byte[] bArrC = ag1Var6.c();
                int i5 = 0;
                while (i5 < i4) {
                    int iC = wzVar5.c(bArrC, i5, i4 - i5);
                    if (iC == -1) {
                        break;
                    }
                    i5 += iC;
                }
                ag1Var6.d(i5);
                wzVar5.c();
                try {
                    long jA2 = ag1Var6.A();
                    if (!z4) {
                        jA2 *= (long) ac0Var2.b;
                    }
                    j2 = jA2;
                } catch (NumberFormatException unused) {
                    z2 = false;
                }
                if (z2) {
                    this.n = j2;
                    return 0;
                }
                throw eg1.a((String) null, (Exception) null);
            }
            int iE = this.b.e();
            if (iE < 32768) {
                int i6 = ((wz) a80Var).read(this.b.c(), iE, 32768 - iE);
                z = i6 == -1;
                if (!z) {
                    this.b.d(iE + i6);
                } else if (this.b.a() == 0) {
                    long j3 = this.n * 1000000;
                    ac0 ac0Var3 = this.i;
                    int i7 = f92.a;
                    this.f.a(j3 / ((long) ac0Var3.e), 1, this.m, 0, null);
                    return -1;
                }
            } else {
                z = false;
            }
            int iD = this.b.d();
            int i8 = this.m;
            int i9 = this.j;
            if (i8 < i9) {
                ag1 ag1Var7 = this.b;
                ag1Var7.f(Math.min(i9 - i8, ag1Var7.a()));
            }
            ag1 ag1Var8 = this.b;
            this.i.getClass();
            int iD2 = ag1Var8.d();
            while (true) {
                if (iD2 > ag1Var8.e() - 16) {
                    if (z) {
                        while (true) {
                            if (iD2 <= ag1Var8.e() - this.j) {
                                ag1Var8.e(iD2);
                                try {
                                    zA = wb0.a(ag1Var8, this.i, this.k, this.d);
                                } catch (IndexOutOfBoundsException unused2) {
                                    zA = false;
                                }
                                if (ag1Var8.d() <= ag1Var8.e() && zA) {
                                    ag1Var8.e(iD2);
                                    j = this.d.a;
                                    break;
                                }
                                iD2++;
                            } else {
                                ag1Var8.e(ag1Var8.e());
                            }
                        }
                    } else {
                        ag1Var8.e(iD2);
                    }
                    j = -1;
                    break;
                }
                ag1Var8.e(iD2);
                if (wb0.a(ag1Var8, this.i, this.k, this.d)) {
                    ag1Var8.e(iD2);
                    j = this.d.a;
                    break;
                }
                iD2++;
            }
            int iD3 = this.b.d() - iD;
            this.b.e(iD);
            this.f.a(iD3, this.b);
            int i10 = this.m + iD3;
            this.m = i10;
            if (j != -1) {
                long j4 = this.n * 1000000;
                ac0 ac0Var4 = this.i;
                int i11 = f92.a;
                this.f.a(j4 / ((long) ac0Var4.e), 1, i10, 0, null);
                this.m = 0;
                this.n = j;
            }
            if (this.b.a() >= 16) {
                return 0;
            }
            int iA = this.b.a();
            System.arraycopy(this.b.c(), this.b.d(), this.b.c(), 0, iA);
            this.b.e(0);
            this.b.d(iA);
            return 0;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(long j, long j2) {
        if (j == 0) {
            this.g = 0;
        } else {
            ub0 ub0Var = this.l;
            if (ub0Var != null) {
                ub0Var.a(j2);
            }
        }
        this.n = j2 != 0 ? -1L : 0L;
        this.m = 0;
        this.b.c(0);
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        wz wzVar = (wz) a80Var;
        k01 k01VarA = new ui0().a(wzVar, si0.b);
        if (k01VarA != null) {
            k01VarA.c();
        }
        ag1 ag1Var = new ag1(4);
        wzVar.b(ag1Var.c(), 0, 4, false);
        return ag1Var.v() == 1716281667;
    }

    public static z70[] a() {
        return new z70[]{new vb0()};
    }
}
