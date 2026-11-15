package com.yandex.mobile.ads.impl;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import com.yandex.mobile.ads.impl.b21;
import com.yandex.mobile.ads.impl.v52;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;

public final class b21 implements z70, ex1 {
    private final int a;
    private final ag1 b;
    private final ag1 c;
    private final ag1 d;
    private final ag1 e;
    private final ArrayDeque<kh.a> f;
    private final ix1 g;
    private final ArrayList h;
    private int i;
    private int j;
    private long k;
    private int l;

    @Nullable
    private ag1 m;
    private int n;
    private int o;
    private int p;
    private int q;
    private b80 r;
    private a[] s;
    private long[][] t;
    private int u;
    private long v;
    private int w;

    @Nullable
    private z11 x;

    public static final class a {
        public final v52 a;
        public final b62 b;
        public final a62 c;

        @Nullable
        public final i72 d;
        public int e;

        public a(v52 v52Var, b62 b62Var, a62 a62Var) {
            this.a = v52Var;
            this.b = b62Var;
            this.c = a62Var;
            this.d = MimeTypes.AUDIO_TRUEHD.equals(v52Var.f.m) ? new i72() : null;
        }
    }

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return b21.d();
            }
        };
    }

    public b21() {
        this(0);
    }

    public static v52 a(v52 v52Var) {
        return v52Var;
    }

    public static z70[] d() {
        return new z70[]{new b21()};
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final long c() {
        return this.v;
    }

    @Override
    public final void release() {
    }

    public b21(int i) {
        this.a = 0;
        this.i = 0;
        this.g = new ix1();
        this.h = new ArrayList();
        this.e = new ag1(16);
        this.f = new ArrayDeque<>();
        this.b = new ag1(e41.a);
        this.c = new ag1(4);
        this.d = new ag1();
        this.n = -1;
        this.r = b80.a;
        this.s = new a[0];
    }

    private void c(long j) throws eg1 {
        while (!this.f.isEmpty() && this.f.peek().b == j) {
            kh.a aVarPop = this.f.pop();
            if (aVarPop.a == 1836019574) {
                a(aVarPop);
                this.f.clear();
                this.i = 2;
            } else if (!this.f.isEmpty()) {
                this.f.peek().d.add(aVarPop);
            }
        }
        if (this.i != 2) {
            this.i = 0;
            this.l = 0;
        }
    }

    @Override
    public final void a(b80 b80Var) {
        this.r = b80Var;
    }

    @Override
    public final ex1.a b(long j) {
        long jMin;
        long jMin2;
        long j2;
        long j3;
        int iA;
        long j4 = j;
        a[] aVarArr = this.s;
        if (aVarArr.length == 0) {
            gx1 gx1Var = gx1.c;
            return new ex1.a(gx1Var, gx1Var);
        }
        int i = this.u;
        boolean z = false;
        if (i != -1) {
            b62 b62Var = aVarArr[i].b;
            int iB = f92.b(b62Var.f, j4, false);
            while (true) {
                if (iB < 0) {
                    iB = -1;
                    break;
                }
                if ((b62Var.g[iB] & 1) != 0) {
                    break;
                }
                iB--;
            }
            if (iB == -1) {
                iB = b62Var.a(j4);
            }
            if (iB == -1) {
                gx1 gx1Var2 = gx1.c;
                return new ex1.a(gx1Var2, gx1Var2);
            }
            long j5 = b62Var.f[iB];
            jMin = b62Var.c[iB];
            if (j5 >= j4 || iB >= b62Var.b - 1 || (iA = b62Var.a(j4)) == -1 || iA == iB) {
                j3 = -1;
                j2 = C.TIME_UNSET;
            } else {
                j2 = b62Var.f[iA];
                j3 = b62Var.c[iA];
            }
            jMin2 = j3;
            j4 = j5;
        } else {
            jMin = Long.MAX_VALUE;
            jMin2 = -1;
            j2 = C.TIME_UNSET;
        }
        int i2 = 0;
        while (true) {
            a[] aVarArr2 = this.s;
            if (i2 >= aVarArr2.length) {
                break;
            }
            if (i2 != this.u) {
                b62 b62Var2 = aVarArr2[i2].b;
                int iB2 = f92.b(b62Var2.f, j4, z);
                while (true) {
                    if (iB2 < 0) {
                        iB2 = -1;
                        break;
                    }
                    if ((b62Var2.g[iB2] & 1) != 0) {
                        break;
                    }
                    iB2--;
                }
                if (iB2 == -1) {
                    iB2 = b62Var2.a(j4);
                }
                if (iB2 != -1) {
                    jMin = Math.min(b62Var2.c[iB2], jMin);
                }
                if (j2 != C.TIME_UNSET) {
                    int iB3 = f92.b(b62Var2.f, j2, false);
                    while (true) {
                        if (iB3 < 0) {
                            iB3 = -1;
                            break;
                        }
                        if ((b62Var2.g[iB3] & 1) != 0) {
                            break;
                        }
                        iB3--;
                    }
                    if (iB3 == -1) {
                        iB3 = b62Var2.a(j2);
                    }
                    if (iB3 != -1) {
                        jMin2 = Math.min(b62Var2.c[iB3], jMin2);
                    }
                }
            }
            i2++;
            z = false;
        }
        gx1 gx1Var3 = new gx1(j4, jMin);
        return j2 == C.TIME_UNSET ? new ex1.a(gx1Var3, gx1Var3) : new ex1.a(gx1Var3, new gx1(j2, jMin2));
    }

    /* JADX WARN: Code duplicated, block: B:136:0x02f3 A[PHI: r5
      0x02f3: PHI (r5v20 com.yandex.mobile.ads.impl.k01) = 
      (r5v14 com.yandex.mobile.ads.impl.k01)
      (r5v14 com.yandex.mobile.ads.impl.k01)
      (r5v15 com.yandex.mobile.ads.impl.k01)
      (r5v14 com.yandex.mobile.ads.impl.k01)
     binds: [B:138:0x02f8, B:139:0x02fa, B:216:0x02f3, B:134:0x02ee] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:95:0x0219  */
    private void a(kh.a aVar) throws eg1 {
        int i;
        k01 k01Var;
        k01 k01Var2;
        k01 k01Var3;
        long j;
        int i2;
        k01 k01Var4;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        ru0 ru0Var;
        int i8 = 4;
        ArrayList arrayList = new ArrayList();
        boolean z = this.w == 1;
        ie0 ie0Var = new ie0();
        kh.b bVarC = aVar.c(Mp4Box.TYPE_udta);
        int i9 = Mp4Box.TYPE_meta;
        if (bVarC != null) {
            int i10 = lh.b;
            ag1 ag1Var = bVarC.b;
            ag1Var.e(8);
            k01 k01Var5 = null;
            k01 k01Var6 = null;
            for (int i11 = 8; ag1Var.a() >= i11; i11 = 8) {
                int iD = ag1Var.d();
                int iH = ag1Var.h();
                int iH2 = ag1Var.h();
                if (iH2 == i9) {
                    ag1Var.e(iD);
                    int i12 = iD + iH;
                    ag1Var.f(i11);
                    int iD2 = ag1Var.d();
                    ag1Var.f(i8);
                    if (ag1Var.h() != 1751411826) {
                        iD2 += i8;
                    }
                    ag1Var.e(iD2);
                    while (true) {
                        if (ag1Var.d() < i12) {
                            int iD3 = ag1Var.d();
                            int iH3 = ag1Var.h();
                            if (ag1Var.h() == 1768715124) {
                                ag1Var.e(iD3);
                                int i13 = iD3 + iH3;
                                ag1Var.f(i11);
                                ArrayList arrayList2 = new ArrayList();
                                while (ag1Var.d() < i13) {
                                    ti0 ti0VarB = q01.b(ag1Var);
                                    if (ti0VarB != null) {
                                        arrayList2.add(ti0VarB);
                                    }
                                }
                                if (!arrayList2.isEmpty()) {
                                    k01Var6 = new k01(arrayList2);
                                    break;
                                }
                            } else {
                                ag1Var.e(iD3 + iH3);
                            }
                        }
                        k01Var6 = null;
                        break;
                    }
                }
                if (iH2 == 1936553057) {
                    ag1Var.e(iD);
                    int i14 = iD + iH;
                    ag1Var.f(12);
                    while (true) {
                        if (ag1Var.d() < i14) {
                            int iD4 = ag1Var.d();
                            int iH4 = ag1Var.h();
                            if (ag1Var.h() != 1935766900) {
                                ag1Var.e(iD4 + iH4);
                            } else if (iH4 >= 14) {
                                ag1Var.f(5);
                                int iT = ag1Var.t();
                                if (iT == 12 || iT == 13) {
                                    float f = iT == 12 ? 240.0f : 120.0f;
                                    ag1Var.f(1);
                                    k01Var5 = new k01(new t02(ag1Var.t(), f));
                                    break;
                                }
                            }
                        }
                        k01Var5 = null;
                        break;
                    }
                }
                ag1Var.e(iD + iH);
                i8 = 4;
                i9 = Mp4Box.TYPE_meta;
            }
            Pair pairCreate = Pair.create(k01Var6, k01Var5);
            k01 k01Var7 = (k01) pairCreate.first;
            k01 k01Var8 = (k01) pairCreate.second;
            if (k01Var7 != null) {
                ie0Var.a(k01Var7);
            }
            k01Var = k01Var8;
            k01Var2 = k01Var7;
            i = Mp4Box.TYPE_meta;
        } else {
            i = 1835365473;
            k01Var = null;
            k01Var2 = null;
        }
        kh.a aVarB = aVar.b(i);
        if (aVarB != null) {
            int i15 = lh.b;
            kh.b bVarC2 = aVarB.c(Mp4Box.TYPE_hdlr);
            kh.b bVarC3 = aVarB.c(Mp4Box.TYPE_keys);
            kh.b bVarC4 = aVarB.c(Mp4Box.TYPE_ilst);
            if (bVarC2 == null || bVarC3 == null || bVarC4 == null) {
                k01Var3 = null;
            } else {
                ag1 ag1Var2 = bVarC2.b;
                ag1Var2.e(16);
                if (ag1Var2.h() != 1835299937) {
                    k01Var3 = null;
                } else {
                    ag1 ag1Var3 = bVarC3.b;
                    ag1Var3.e(12);
                    int iH5 = ag1Var3.h();
                    String[] strArr = new String[iH5];
                    for (int i16 = 0; i16 < iH5; i16++) {
                        int iH6 = ag1Var3.h();
                        ag1Var3.f(4);
                        strArr[i16] = ag1Var3.a(iH6 - 8, lo.c);
                    }
                    ag1 ag1Var4 = bVarC4.b;
                    ag1Var4.e(8);
                    ArrayList arrayList3 = new ArrayList();
                    for (int i17 = 8; ag1Var4.a() > i17; i17 = 8) {
                        int iD5 = ag1Var4.d();
                        int iH7 = ag1Var4.h();
                        int iH8 = ag1Var4.h() - 1;
                        if (iH8 >= 0 && iH8 < iH5) {
                            String str = strArr[iH8];
                            int i18 = iD5 + iH7;
                            while (true) {
                                int iD6 = ag1Var4.d();
                                if (iD6 >= i18) {
                                    i7 = iH5;
                                    ru0Var = null;
                                    break;
                                }
                                int iH9 = ag1Var4.h();
                                i7 = iH5;
                                if (ag1Var4.h() == 1684108385) {
                                    int iH10 = ag1Var4.h();
                                    int iH11 = ag1Var4.h();
                                    int i19 = iH9 - 16;
                                    byte[] bArr = new byte[i19];
                                    ag1Var4.a(bArr, 0, i19);
                                    ru0Var = new ru0(iH11, iH10, str, bArr);
                                    break;
                                }
                                ag1Var4.e(iD6 + iH9);
                                iH5 = i7;
                            }
                            if (ru0Var != null) {
                                arrayList3.add(ru0Var);
                            }
                        } else {
                            i7 = iH5;
                            strArr = strArr;
                            xr0.a("Skipped metadata with unknown key index: ", iH8, "AtomParsers");
                        }
                        ag1Var4.e(iD5 + iH7);
                        iH5 = i7;
                        strArr = strArr;
                    }
                    if (arrayList3.isEmpty()) {
                        k01Var3 = null;
                    } else {
                        k01Var3 = new k01(arrayList3);
                    }
                }
            }
        } else {
            k01Var3 = null;
        }
        ArrayList arrayListA = lh.a(aVar, ie0Var, C.TIME_UNSET, null, (this.a & 1) != 0, z, new fe0() {
            @Override
            public final Object apply(Object obj) {
                return b21.a((v52) obj);
            }
        });
        int size = arrayListA.size();
        long j2 = C.TIME_UNSET;
        long j3 = -9223372036854775807L;
        int i20 = 0;
        int size2 = -1;
        while (true) {
            j = 0;
            if (i20 >= size) {
                break;
            }
            b62 b62Var = (b62) arrayListA.get(i20);
            if (b62Var.b == 0) {
                i4 = 1;
            } else {
                v52 v52Var = b62Var.a;
                long j4 = v52Var.e;
                if (j4 == j2) {
                    j4 = b62Var.h;
                }
                long jMax = Math.max(j3, j4);
                a aVar2 = new a(v52Var, b62Var, this.r.a(i20, v52Var.b));
                if (MimeTypes.AUDIO_TRUEHD.equals(v52Var.f.m)) {
                    i2 = b62Var.e * 16;
                } else {
                    i2 = b62Var.e + 30;
                }
                jc0.a aVarA = v52Var.f.a();
                aVarA.h(i2);
                if (v52Var.b == 2 && j4 > 0 && (i6 = b62Var.b) > 1) {
                    aVarA.a(i6 / (j4 / 1000000.0f));
                }
                if (v52Var.b == 1 && (i5 = ie0Var.a) != -1 && ie0Var.b != -1) {
                    aVarA.d(i5).e(ie0Var.b);
                }
                int i21 = v52Var.b;
                k01[] k01VarArr = {k01Var, this.h.isEmpty() ? null : new k01(this.h)};
                k01 k01Var9 = new k01(new k01.b[0]);
                if (i21 == 1) {
                    if (k01Var2 != null) {
                        k01Var4 = k01Var2;
                        i3 = 1;
                    } else {
                        i3 = 1;
                        k01Var4 = k01Var9;
                    }
                } else if (i21 != 2 || k01Var3 == null) {
                    i3 = 1;
                    k01Var4 = k01Var9;
                } else {
                    int i22 = 0;
                    while (true) {
                        if (i22 < k01Var3.c()) {
                            k01.b bVarA = k01Var3.a(i22);
                            if (bVarA instanceof ru0) {
                                ru0 ru0Var2 = (ru0) bVarA;
                                if ("com.android.capture.fps".equals(ru0Var2.b)) {
                                    i3 = 1;
                                    k01Var4 = new k01(ru0Var2);
                                }
                            }
                            i22++;
                            k01Var9 = k01Var9;
                        } else {
                            i3 = 1;
                            k01Var4 = k01Var9;
                        }
                    }
                }
                for (int i23 = 0; i23 < 2; i23 += i3) {
                    k01Var4 = k01Var4.a(k01VarArr[i23]);
                }
                if (k01Var4.c() > 0) {
                    aVarA.a(k01Var4);
                }
                aVar2.c.a(aVarA.a());
                if (v52Var.b == 2 && size2 == -1) {
                    size2 = arrayList.size();
                }
                arrayList.add(aVar2);
                j3 = jMax;
                i4 = 1;
            }
            i20 += i4;
            arrayListA = arrayListA;
            size = size;
            j2 = C.TIME_UNSET;
        }
        this.u = size2;
        this.v = j3;
        a[] aVarArr = (a[]) arrayList.toArray(new a[0]);
        this.s = aVarArr;
        long[][] jArr = new long[aVarArr.length][];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i24 = 0; i24 < aVarArr.length; i24++) {
            jArr[i24] = new long[aVarArr[i24].b.b];
            jArr2[i24] = aVarArr[i24].b.f[0];
        }
        int i25 = 0;
        while (i25 < aVarArr.length) {
            int i26 = -1;
            long j5 = Long.MAX_VALUE;
            for (int i27 = 0; i27 < aVarArr.length; i27++) {
                if (!zArr[i27]) {
                    long j6 = jArr2[i27];
                    if (j6 <= j5) {
                        i26 = i27;
                        j5 = j6;
                    }
                }
            }
            int i28 = iArr[i26];
            long[] jArr3 = jArr[i26];
            jArr3[i28] = j;
            b62 b62Var2 = aVarArr[i26].b;
            j += (long) b62Var2.d[i28];
            int i29 = i28 + 1;
            iArr[i26] = i29;
            if (i29 < jArr3.length) {
                jArr2[i26] = b62Var2.f[i29];
            } else {
                zArr[i26] = true;
                i25++;
            }
        }
        this.t = jArr;
        this.r.a();
        this.r.a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        int i;
        int i2;
        boolean z;
        int i3;
        kh.a aVarPeek;
        int i4;
        while (true) {
            int i5 = 0;
            int i6 = 1;
            while (true) {
                i = this.i;
                if (i != 0) {
                    break;
                }
                boolean z2 = i6;
                if (this.l == 0) {
                    if (!a80Var.a(this.e.c(), 0, 8, z2)) {
                        if (this.w != 2 || (this.a & 2) == 0) {
                            return -1;
                        }
                        a62 a62VarA = this.r.a(0, 4);
                        z11 z11Var = this.x;
                        a62VarA.a(new jc0.a().a(z11Var == null ? null : new k01(z11Var)).a());
                        this.r.a();
                        this.r.a(new ex1.b(C.TIME_UNSET, 0L));
                        return -1;
                    }
                    this.l = 8;
                    this.e.e(0);
                    this.k = this.e.v();
                    this.j = this.e.h();
                }
                long j = this.k;
                if (j == 1) {
                    a80Var.b(this.e.c(), 8, 8);
                    this.l += 8;
                    this.k = this.e.y();
                } else if (j == 0) {
                    long jB = a80Var.b();
                    if (jB == -1 && (aVarPeek = this.f.peek()) != null) {
                        jB = aVarPeek.b;
                    }
                    if (jB != -1) {
                        this.k = (jB - a80Var.a()) + ((long) this.l);
                    }
                }
                long j2 = this.k;
                int i7 = this.l;
                if (j2 >= i7) {
                    int i8 = this.j;
                    if (i8 == 1836019574 || i8 == 1953653099 || i8 == 1835297121 || i8 == 1835626086 || i8 == 1937007212 || i8 == 1701082227 || i8 == 1835365473) {
                        i4 = 1;
                        long jA = a80Var.a();
                        long j3 = this.k;
                        long j4 = this.l;
                        long j5 = (jA + j3) - j4;
                        if (j3 != j4 && this.j == 1835365473) {
                            this.d.c(8);
                            a80Var.a(this.d.c(), 0, 8);
                            ag1 ag1Var = this.d;
                            int i9 = lh.b;
                            int iD = ag1Var.d();
                            ag1Var.f(4);
                            if (ag1Var.h() != 1751411826) {
                                iD += 4;
                            }
                            ag1Var.e(iD);
                            a80Var.a(this.d.d());
                            a80Var.c();
                        }
                        this.f.push(new kh.a(this.j, j5));
                        if (this.k == this.l) {
                            c(j5);
                        } else {
                            this.i = 0;
                            this.l = 0;
                            i5 = 0;
                            i6 = 1;
                        }
                    } else if (i8 != 1835296868 && i8 != 1836476516 && i8 != 1751411826 && i8 != 1937011556 && i8 != 1937011827 && i8 != 1937011571 && i8 != 1668576371 && i8 != 1701606260 && i8 != 1937011555 && i8 != 1937011578 && i8 != 1937013298 && i8 != 1937007471 && i8 != 1668232756 && i8 != 1953196132 && i8 != 1718909296 && i8 != 1969517665 && i8 != 1801812339 && i8 != 1768715124) {
                        long jA2 = a80Var.a();
                        long j6 = this.l;
                        long j7 = jA2 - j6;
                        if (this.j == 1836086884) {
                            this.x = new z11(0L, j7, C.TIME_UNSET, j7 + j6, this.k - j6);
                        }
                        this.m = null;
                        i4 = 1;
                        this.i = 1;
                    } else {
                        if (i7 != 8) {
                            throw new IllegalStateException();
                        }
                        if (j2 <= 2147483647L) {
                            ag1 ag1Var2 = new ag1((int) j2);
                            System.arraycopy(this.e.c(), 0, ag1Var2.c(), 0, 8);
                            this.m = ag1Var2;
                            i4 = 1;
                            this.i = 1;
                        } else {
                            throw new IllegalStateException();
                        }
                    }
                    i6 = i4;
                    i5 = 0;
                } else {
                    throw eg1.a("Atom size less than header length (unsupported).");
                }
            }
            if (i != i6) {
                if (i != 2) {
                    if (i == 3) {
                        this.g.a(a80Var, pj1Var, this.h);
                        if (pj1Var.a == 0) {
                            this.i = i5;
                            this.l = i5;
                        }
                        return i6;
                    }
                    throw new IllegalStateException();
                }
                long jA3 = a80Var.a();
                if (this.n == -1) {
                    int i10 = i5;
                    int i11 = i6;
                    int i12 = i11;
                    int i13 = -1;
                    int i14 = -1;
                    long j8 = Long.MAX_VALUE;
                    long j9 = Long.MAX_VALUE;
                    long j10 = Long.MAX_VALUE;
                    while (true) {
                        a[] aVarArr = this.s;
                        if (i10 >= aVarArr.length) {
                            break;
                        }
                        a aVar = aVarArr[i10];
                        int i15 = aVar.e;
                        b62 b62Var = aVar.b;
                        if (i15 != b62Var.b) {
                            long j11 = b62Var.c[i15];
                            long[][] jArr = this.t;
                            int i16 = f92.a;
                            long j12 = jArr[i10][i15];
                            long j13 = j11 - jA3;
                            int i17 = (j13 < 0 || j13 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) ? i6 : i5;
                            if ((i17 == 0 && i11 != 0) || (i17 == i11 && j13 < j10)) {
                                i11 = i17;
                                i14 = i10;
                                j10 = j13;
                                j9 = j12;
                            }
                            if (j12 < j8) {
                                i12 = i17;
                                i13 = i10;
                                j8 = j12;
                            }
                        }
                        i10 += i6;
                    }
                    int i18 = (j8 == Long.MAX_VALUE || i12 == 0 || j9 < j8 + 10485760) ? i14 : i13;
                    this.n = i18;
                    if (i18 == -1) {
                        return -1;
                    }
                }
                a aVar2 = this.s[this.n];
                a62 a62Var = aVar2.c;
                int i19 = aVar2.e;
                b62 b62Var2 = aVar2.b;
                long j14 = b62Var2.c[i19];
                int i20 = b62Var2.d[i19];
                i72 i72Var = aVar2.d;
                long j15 = (j14 - jA3) + ((long) this.o);
                if (j15 >= 0 && j15 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                    if (aVar2.a.g == 1) {
                        j15 += 8;
                        i20 -= 8;
                    }
                    a80Var.a((int) j15);
                    v52 v52Var = aVar2.a;
                    if (v52Var.j != 0) {
                        byte[] bArrC = this.c.c();
                        bArrC[0] = 0;
                        bArrC[1] = 0;
                        bArrC[2] = 0;
                        int i21 = aVar2.a.j;
                        int i22 = 4 - i21;
                        while (this.p < i20) {
                            int i23 = this.q;
                            if (i23 == 0) {
                                a80Var.b(bArrC, i22, i21);
                                this.o += i21;
                                this.c.e(0);
                                int iH = this.c.h();
                                if (iH >= 0) {
                                    this.q = iH;
                                    this.b.e(0);
                                    a62Var.a(4, this.b);
                                    this.p += 4;
                                    i20 += i22;
                                } else {
                                    throw eg1.a("Invalid NAL length", (Exception) null);
                                }
                            } else {
                                int iB = a62Var.b(a80Var, i23, false);
                                this.o += iB;
                                this.p += iB;
                                this.q -= iB;
                            }
                        }
                    } else {
                        if (MimeTypes.AUDIO_AC4.equals(v52Var.f.m)) {
                            if (this.p == 0) {
                                w.a(i20, this.d);
                                i2 = 7;
                                a62Var.a(7, this.d);
                                this.p += 7;
                            } else {
                                i2 = 7;
                            }
                            i20 += i2;
                        } else if (i72Var != null) {
                            i72Var.a(a80Var);
                        }
                        while (true) {
                            int i24 = this.p;
                            if (i24 >= i20) {
                                break;
                            }
                            int iB2 = a62Var.b(a80Var, i20 - i24, false);
                            this.o += iB2;
                            this.p += iB2;
                            this.q -= iB2;
                        }
                    }
                    b62 b62Var3 = aVar2.b;
                    long j16 = b62Var3.f[i19];
                    int i25 = b62Var3.g[i19];
                    if (i72Var != null) {
                        i72Var.a(a62Var, j16, i25, i20, 0, null);
                        if (i19 + 1 == aVar2.b.b) {
                            i72Var.a(a62Var, null);
                        }
                    } else {
                        a62Var.a(j16, i25, i20, 0, null);
                    }
                    aVar2.e++;
                    this.n = -1;
                    this.o = 0;
                    this.p = 0;
                    this.q = 0;
                    return 0;
                }
                pj1Var.a = j14;
                return 1;
            }
            long j17 = this.k - ((long) this.l);
            long jA4 = a80Var.a() + j17;
            ag1 ag1Var3 = this.m;
            if (ag1Var3 != null) {
                a80Var.b(ag1Var3.c(), this.l, (int) j17);
                if (this.j == 1718909296) {
                    ag1Var3.e(8);
                    int iH2 = ag1Var3.h();
                    if (iH2 != 1751476579) {
                        i3 = iH2 != 1903435808 ? 0 : 1;
                    } else {
                        i3 = 2;
                    }
                    if (i3 == 0) {
                        ag1Var3.f(4);
                        do {
                            if (ag1Var3.a() <= 0) {
                                i3 = 0;
                                break;
                            }
                            int iH3 = ag1Var3.h();
                            if (iH3 != 1751476579) {
                                i3 = iH3 != 1903435808 ? 0 : 1;
                            } else {
                                i3 = 2;
                            }
                        } while (i3 == 0);
                    }
                    this.w = i3;
                } else if (!this.f.isEmpty()) {
                    this.f.peek().c.add(new kh.b(this.j, ag1Var3));
                }
            } else {
                if (j17 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                    a80Var.a((int) j17);
                } else {
                    pj1Var.a = a80Var.a() + j17;
                    z = true;
                }
                c(jA4);
                if (!z && this.i != 2) {
                    return 1;
                }
            }
            z = false;
            c(jA4);
            if (!z) {
            }
        }
    }

    @Override
    public final void a(long j, long j2) {
        this.f.clear();
        this.l = 0;
        this.n = -1;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        if (j == 0) {
            if (this.i != 3) {
                this.i = 0;
                this.l = 0;
                return;
            } else {
                this.g.a();
                this.h.clear();
                return;
            }
        }
        for (a aVar : this.s) {
            b62 b62Var = aVar.b;
            int iB = f92.b(b62Var.f, j2, false);
            while (true) {
                if (iB < 0) {
                    iB = -1;
                    break;
                } else if ((b62Var.g[iB] & 1) != 0) {
                    break;
                } else {
                    iB--;
                }
            }
            if (iB == -1) {
                iB = b62Var.a(j2);
            }
            aVar.e = iB;
            i72 i72Var = aVar.d;
            if (i72Var != null) {
                i72Var.a();
            }
        }
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        return u02.a(a80Var, (this.a & 2) != 0);
    }
}
