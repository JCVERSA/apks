package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

final class fj2 extends y22 {

    @Nullable
    private a n;
    private int o;
    private boolean p;

    @Nullable
    private gj2.c q;

    @Nullable
    private gj2.a r;

    public static final class a {
        public final gj2.c a;
        public final gj2.a b;
        public final byte[] c;
        public final gj2.b[] d;
        public final int e;

        public a(gj2.c cVar, gj2.a aVar, byte[] bArr, gj2.b[] bVarArr, int i) {
            this.a = cVar;
            this.b = aVar;
            this.c = bArr;
            this.d = bVarArr;
            this.e = i;
        }
    }

    @Override
    public final long a(ag1 ag1Var) {
        if ((ag1Var.c()[0] & 1) == 1) {
            return -1L;
        }
        byte b = ag1Var.c()[0];
        a aVar = this.n;
        if (aVar == null) {
            throw new IllegalStateException();
        }
        int i = !aVar.d[(b >> 1) & (255 >>> (8 - aVar.e))].a ? aVar.a.e : aVar.a.f;
        long j = this.p ? (this.o + i) / 4 : 0;
        if (ag1Var.b() < ag1Var.e() + 4) {
            ag1Var.a(Arrays.copyOf(ag1Var.c(), ag1Var.e() + 4));
        } else {
            ag1Var.d(ag1Var.e() + 4);
        }
        byte[] bArrC = ag1Var.c();
        bArrC[ag1Var.e() - 4] = (byte) (j & 255);
        bArrC[ag1Var.e() - 3] = (byte) ((j >>> 8) & 255);
        bArrC[ag1Var.e() - 2] = (byte) ((j >>> 16) & 255);
        bArrC[ag1Var.e() - 1] = (byte) ((j >>> 24) & 255);
        this.p = true;
        this.o = i;
        return j;
    }

    @Override
    public final void c(long j) {
        super.c(j);
        this.p = j != 0;
        gj2.c cVar = this.q;
        this.o = cVar != null ? cVar.e : 0;
    }

    /* JADX WARN: Code duplicated, block: B:166:0x03a7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:168:0x03a9  */
    @Override
    public final boolean a(ag1 ag1Var, long j, y22.a aVar) throws IOException {
        a aVar2;
        int i;
        cj2 cj2Var;
        cj2 cj2Var2;
        boolean z;
        if (this.n != null) {
            aVar.a.getClass();
            return false;
        }
        gj2.c cVar = this.q;
        boolean z2 = true;
        if (cVar == null) {
            this.q = gj2.a(ag1Var);
        } else {
            gj2.a aVar3 = this.r;
            if (aVar3 == null) {
                this.r = gj2.a(ag1Var, true, true);
            } else {
                byte[] bArr = new byte[ag1Var.e()];
                System.arraycopy(ag1Var.c(), 0, bArr, 0, ag1Var.e());
                int i2 = cVar.a;
                int i3 = 5;
                gj2.a(5, ag1Var, false);
                int iT = ag1Var.t() + 1;
                cj2 cj2Var3 = new cj2(ag1Var.c());
                cj2Var3.b(ag1Var.d() * 8);
                int i4 = 0;
                while (true) {
                    int i5 = 16;
                    if (i4 < iT) {
                        if (cj2Var3.a(24) == 5653314) {
                            int iA = cj2Var3.a(16);
                            int iA2 = cj2Var3.a(24);
                            long[] jArr = new long[iA2];
                            long jFloor = 0;
                            if (!cj2Var3.b()) {
                                boolean zB = cj2Var3.b();
                                int i6 = 0;
                                while (i6 < iA2) {
                                    if (zB) {
                                        if (cj2Var3.b()) {
                                            jArr[i6] = cj2Var3.a(i3) + 1;
                                        } else {
                                            jArr[i6] = 0;
                                        }
                                        cj2Var2 = cj2Var3;
                                        z = true;
                                    } else {
                                        cj2Var2 = cj2Var3;
                                        z = true;
                                        jArr[i6] = cj2Var2.a(i3) + 1;
                                    }
                                    i6++;
                                    cj2Var3 = cj2Var2;
                                    z2 = z;
                                    iT = iT;
                                    i3 = 5;
                                }
                                i = iT;
                                cj2Var = cj2Var3;
                            } else {
                                i = iT;
                                cj2Var = cj2Var3;
                                int iA3 = cj2Var.a(i3) + 1;
                                int i7 = 0;
                                while (i7 < iA2) {
                                    int i8 = 0;
                                    for (int i9 = iA2 - i7; i9 > 0; i9 >>>= 1) {
                                        i8++;
                                    }
                                    int iA4 = cj2Var.a(i8);
                                    int i10 = 0;
                                    while (i10 < iA4 && i7 < iA2) {
                                        jArr[i7] = iA3;
                                        i7++;
                                        i10++;
                                        aVar3 = aVar3;
                                        bArr = bArr;
                                    }
                                    iA3++;
                                    aVar3 = aVar3;
                                    bArr = bArr;
                                }
                            }
                            gj2.a aVar4 = aVar3;
                            byte[] bArr2 = bArr;
                            int iA5 = cj2Var.a(4);
                            if (iA5 > 2) {
                                throw eg1.a("lookup type greater than 2 not decodable: " + iA5, (Exception) null);
                            }
                            if (iA5 == 1 || iA5 == 2) {
                                cj2Var.b(32);
                                cj2Var.b(32);
                                int iA6 = cj2Var.a(4) + 1;
                                cj2Var.b(1);
                                if (iA5 != 1) {
                                    jFloor = ((long) iA2) * ((long) iA);
                                } else if (iA != 0) {
                                    jFloor = (long) Math.floor(Math.pow(iA2, 1.0d / ((double) iA)));
                                }
                                cj2Var.b((int) (((long) iA6) * jFloor));
                            }
                            i4++;
                            cj2Var3 = cj2Var;
                            aVar3 = aVar4;
                            iT = i;
                            bArr = bArr2;
                            i3 = 5;
                            z2 = true;
                        } else {
                            throw eg1.a("expected code book to start with [0x56, 0x43, 0x42] at " + cj2Var3.a(), (Exception) null);
                        }
                    } else {
                        gj2.a aVar5 = aVar3;
                        byte[] bArr3 = bArr;
                        cj2 cj2Var4 = cj2Var3;
                        int i11 = 6;
                        int iA7 = cj2Var4.a(6) + 1;
                        for (int i12 = 0; i12 < iA7; i12++) {
                            if (cj2Var4.a(16) != 0) {
                                throw eg1.a("placeholder of time domain transforms not zeroed out", (Exception) null);
                            }
                        }
                        int i13 = 1;
                        int iA8 = cj2Var4.a(6) + 1;
                        int i14 = 0;
                        while (true) {
                            int i15 = 3;
                            if (i14 < iA8) {
                                int iA9 = cj2Var4.a(i5);
                                if (iA9 == 0) {
                                    int i16 = 8;
                                    cj2Var4.b(8);
                                    cj2Var4.b(16);
                                    cj2Var4.b(16);
                                    cj2Var4.b(6);
                                    cj2Var4.b(8);
                                    int iA10 = cj2Var4.a(4) + 1;
                                    int i17 = 0;
                                    while (i17 < iA10) {
                                        cj2Var4.b(i16);
                                        i17++;
                                        i16 = 8;
                                    }
                                } else {
                                    if (iA9 != i13) {
                                        throw eg1.a("floor type greater than 1 not decodable: " + iA9, (Exception) null);
                                    }
                                    int iA11 = cj2Var4.a(5);
                                    int[] iArr = new int[iA11];
                                    int i18 = -1;
                                    for (int i19 = 0; i19 < iA11; i19++) {
                                        int iA12 = cj2Var4.a(4);
                                        iArr[i19] = iA12;
                                        if (iA12 > i18) {
                                            i18 = iA12;
                                        }
                                    }
                                    int i20 = i18 + 1;
                                    int[] iArr2 = new int[i20];
                                    int i21 = 0;
                                    while (i21 < i20) {
                                        iArr2[i21] = cj2Var4.a(i15) + 1;
                                        int iA13 = cj2Var4.a(2);
                                        int i22 = 8;
                                        if (iA13 > 0) {
                                            cj2Var4.b(8);
                                        }
                                        int i23 = 0;
                                        for (int i24 = 1; i23 < (i24 << iA13); i24 = 1) {
                                            cj2Var4.b(i22);
                                            i23++;
                                            i22 = 8;
                                        }
                                        i21++;
                                        i15 = 3;
                                    }
                                    cj2Var4.b(2);
                                    int iA14 = cj2Var4.a(4);
                                    int i25 = 0;
                                    int i26 = 0;
                                    for (int i27 = 0; i27 < iA11; i27++) {
                                        i25 += iArr2[iArr[i27]];
                                        while (i26 < i25) {
                                            cj2Var4.b(iA14);
                                            i26++;
                                        }
                                    }
                                }
                                i14++;
                                i11 = 6;
                                i13 = 1;
                                i5 = 16;
                            } else {
                                int i28 = 1;
                                int iA15 = cj2Var4.a(i11) + 1;
                                int i29 = 0;
                                while (i29 < iA15) {
                                    if (cj2Var4.a(16) <= 2) {
                                        cj2Var4.b(24);
                                        cj2Var4.b(24);
                                        cj2Var4.b(24);
                                        int iA16 = cj2Var4.a(i11) + i28;
                                        int i30 = 8;
                                        cj2Var4.b(8);
                                        int[] iArr3 = new int[iA16];
                                        for (int i31 = 0; i31 < iA16; i31++) {
                                            iArr3[i31] = ((cj2Var4.b() ? cj2Var4.a(5) : 0) * 8) + cj2Var4.a(3);
                                        }
                                        int i32 = 0;
                                        while (i32 < iA16) {
                                            int i33 = 0;
                                            while (i33 < i30) {
                                                if ((iArr3[i32] & (1 << i33)) != 0) {
                                                    cj2Var4.b(i30);
                                                }
                                                i33++;
                                                i30 = 8;
                                            }
                                            i32++;
                                            i30 = 8;
                                        }
                                        i29++;
                                        i11 = 6;
                                        i28 = 1;
                                    } else {
                                        throw eg1.a("residueType greater than 2 is not decodable", (Exception) null);
                                    }
                                }
                                int iA17 = cj2Var4.a(i11) + 1;
                                for (int i34 = 0; i34 < iA17; i34++) {
                                    int iA18 = cj2Var4.a(16);
                                    if (iA18 != 0) {
                                        et0.b("VorbisUtil", "mapping type other than 0 not supported: " + iA18);
                                    } else {
                                        int iA19 = cj2Var4.b() ? cj2Var4.a(4) + 1 : 1;
                                        if (cj2Var4.b()) {
                                            int iA20 = cj2Var4.a(8) + 1;
                                            for (int i35 = 0; i35 < iA20; i35++) {
                                                int i36 = i2 - 1;
                                                int i37 = 0;
                                                for (int i38 = i36; i38 > 0; i38 >>>= 1) {
                                                    i37++;
                                                }
                                                cj2Var4.b(i37);
                                                int i39 = 0;
                                                while (i36 > 0) {
                                                    i39++;
                                                    i36 >>>= 1;
                                                }
                                                cj2Var4.b(i39);
                                            }
                                        }
                                        if (cj2Var4.a(2) != 0) {
                                            throw eg1.a("to reserved bits must be zero after mapping coupling steps", (Exception) null);
                                        }
                                        if (iA19 > 1) {
                                            for (int i40 = 0; i40 < i2; i40++) {
                                                cj2Var4.b(4);
                                            }
                                        }
                                        for (int i41 = 0; i41 < iA19; i41++) {
                                            cj2Var4.b(8);
                                            cj2Var4.b(8);
                                            cj2Var4.b(8);
                                        }
                                    }
                                }
                                int iA21 = cj2Var4.a(6);
                                int i42 = iA21 + 1;
                                gj2.b[] bVarArr = new gj2.b[i42];
                                for (int i43 = 0; i43 < i42; i43++) {
                                    boolean zB2 = cj2Var4.b();
                                    cj2Var4.a(16);
                                    cj2Var4.a(16);
                                    cj2Var4.a(8);
                                    bVarArr[i43] = new gj2.b(zB2);
                                }
                                if (cj2Var4.b()) {
                                    int i44 = 0;
                                    while (iA21 > 0) {
                                        i44++;
                                        iA21 >>>= 1;
                                    }
                                    aVar2 = new a(cVar, aVar5, bArr3, bVarArr, i44);
                                    break;
                                }
                                throw eg1.a("framing bit after modes not set as expected", (Exception) null);
                            }
                        }
                    }
                }
            }
            this.n = aVar2;
            if (aVar2 == null) {
                return true;
            }
            gj2.c cVar2 = aVar2.a;
            ArrayList arrayList = new ArrayList();
            arrayList.add(cVar2.g);
            arrayList.add(aVar2.c);
            aVar.a = new jc0.a().e("audio/vorbis").b(cVar2.d).j(cVar2.c).c(cVar2.a).l(cVar2.b).a(arrayList).a(gj2.a(kk0.b(aVar2.b.a))).a();
            return true;
        }
        aVar2 = null;
        this.n = aVar2;
        if (aVar2 == null) {
            return true;
        }
        gj2.c cVar3 = aVar2.a;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cVar3.g);
        arrayList2.add(aVar2.c);
        aVar.a = new jc0.a().e("audio/vorbis").b(cVar3.d).j(cVar3.c).c(cVar3.a).l(cVar3.b).a(arrayList2).a(gj2.a(kk0.b(aVar2.b.a))).a();
        return true;
    }

    @Override
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.q = null;
            this.r = null;
        }
        this.o = 0;
        this.p = false;
    }
}
