package com.yandex.mobile.ads.impl;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import com.transsion.socket.pkgdata.SocketData;
import com.yandex.mobile.ads.impl.pc0;
import com.yandex.mobile.ads.impl.v52;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

public final class pc0 implements z70 {
    private static final byte[] F;
    private static final jc0 G;
    private boolean A;
    private b80 B;
    private a62[] C;
    private a62[] D;
    private boolean E;
    private final List<jc0> a;
    private final SparseArray<b> b;
    private final ag1 c;
    private final ag1 d;
    private final ag1 e;
    private final byte[] f;
    private final ag1 g;
    private final a60 h;
    private final ag1 i;
    private final ArrayDeque<kh.a> j;
    private final ArrayDeque<a> k;

    @Nullable
    private final a62 l;
    private int m;
    private int n;
    private long o;
    private int p;

    @Nullable
    private ag1 q;
    private long r;
    private int s;
    private long t;
    private long u;
    private long v;

    @Nullable
    private b w;
    private int x;
    private int y;
    private int z;

    public static final class a {
        public final long a;
        public final boolean b;
        public final int c;

        public a(int i, long j, boolean z) {
            this.a = j;
            this.b = z;
            this.c = i;
        }
    }

    public static final class b {
        public final a62 a;
        public b62 d;
        public n00 e;
        public int f;
        public int g;
        public int h;
        public int i;
        private boolean l;
        public final x52 b = new x52();
        public final ag1 c = new ag1();
        private final ag1 j = new ag1(1);
        private final ag1 k = new ag1();

        public b(a62 a62Var, b62 b62Var, n00 n00Var) {
            this.a = a62Var;
            this.d = b62Var;
            this.e = n00Var;
            a(b62Var, n00Var);
        }

        @Nullable
        public final w52 a() {
            if (!this.l) {
                return null;
            }
            x52 x52Var = this.b;
            n00 n00Var = x52Var.a;
            int i = f92.a;
            int i2 = n00Var.a;
            w52 w52VarA = x52Var.m;
            if (w52VarA == null) {
                w52VarA = this.d.a.a(i2);
            }
            if (w52VarA == null || !w52VarA.a) {
                return null;
            }
            return w52VarA;
        }

        public final void b() {
            x52 x52Var = this.b;
            x52Var.d = 0;
            x52Var.p = 0L;
            x52Var.q = false;
            x52Var.k = false;
            x52Var.o = false;
            x52Var.m = null;
            this.f = 0;
            this.h = 0;
            this.g = 0;
            this.i = 0;
            this.l = false;
        }

        public final int a(int i, int i2) {
            ag1 ag1Var;
            w52 w52VarA = a();
            if (w52VarA == null) {
                return 0;
            }
            int length = w52VarA.d;
            if (length != 0) {
                ag1Var = this.b.n;
            } else {
                byte[] bArr = w52VarA.e;
                int i3 = f92.a;
                this.k.a(bArr.length, bArr);
                ag1 ag1Var2 = this.k;
                length = bArr.length;
                ag1Var = ag1Var2;
            }
            x52 x52Var = this.b;
            boolean z = x52Var.k && x52Var.l[this.f];
            boolean z2 = z || i2 != 0;
            this.j.c()[0] = (byte) ((z2 ? 128 : 0) | length);
            this.j.e(0);
            this.a.b(1, this.j);
            this.a.b(length, ag1Var);
            if (!z2) {
                return length + 1;
            }
            if (!z) {
                this.c.c(8);
                byte[] bArrC = this.c.c();
                bArrC[0] = 0;
                bArrC[1] = 1;
                bArrC[2] = (byte) 0;
                bArrC[3] = (byte) (i2 & 255);
                bArrC[4] = (byte) ((i >> 24) & 255);
                bArrC[5] = (byte) ((i >> 16) & 255);
                bArrC[6] = (byte) ((i >> 8) & 255);
                bArrC[7] = (byte) (i & 255);
                this.a.b(8, this.c);
                return length + 9;
            }
            ag1 ag1Var3 = this.b.n;
            int iZ = ag1Var3.z();
            ag1Var3.f(-2);
            int i4 = (iZ * 6) + 2;
            if (i2 != 0) {
                this.c.c(i4);
                byte[] bArrC2 = this.c.c();
                ag1Var3.a(bArrC2, 0, i4);
                int i5 = (((bArrC2[2] & 255) << 8) | (bArrC2[3] & 255)) + i2;
                bArrC2[2] = (byte) ((i5 >> 8) & 255);
                bArrC2[3] = (byte) (i5 & 255);
                ag1Var3 = this.c;
            }
            this.a.b(i4, ag1Var3);
            return length + 1 + i4;
        }

        public final void a(b62 b62Var, n00 n00Var) {
            this.d = b62Var;
            this.e = n00Var;
            this.a.a(b62Var.a.f);
            b();
        }
    }

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return pc0.a();
            }
        };
        F = new byte[]{-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, SocketData.CLAZZ_TYPE_ERROR_CODE, -12};
        G = new jc0.a().e(MimeTypes.APPLICATION_EMSG).a();
    }

    public pc0(int i) {
        this(Collections.emptyList());
    }

    @Nullable
    public final v52 a(@Nullable v52 v52Var) {
        return v52Var;
    }

    @Override
    public final void release() {
    }

    public pc0(List list) {
        this(list, 0);
    }

    @Nullable
    private static f40 a(ArrayList arrayList) {
        int size = arrayList.size();
        ArrayList arrayList2 = null;
        for (int i = 0; i < size; i++) {
            kh.b bVar = (kh.b) arrayList.get(i);
            if (bVar.a == 1886614376) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                byte[] bArrC = bVar.b.c();
                UUID uuidC = zm1.c(bArrC);
                if (uuidC == null) {
                    et0.d("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList2.add(new f40.b(uuidC, null, MimeTypes.VIDEO_MP4, bArrC));
                }
            }
        }
        if (arrayList2 == null) {
            return null;
        }
        return new f40(arrayList2);
    }

    public pc0(List list, int i) {
        this.a = Collections.unmodifiableList(list);
        this.l = null;
        this.h = new a60();
        this.i = new ag1(16);
        this.c = new ag1(e41.a);
        this.d = new ag1(5);
        this.e = new ag1();
        byte[] bArr = new byte[16];
        this.f = bArr;
        this.g = new ag1(bArr);
        this.j = new ArrayDeque<>();
        this.k = new ArrayDeque<>();
        this.b = new SparseArray<>();
        this.u = C.TIME_UNSET;
        this.t = C.TIME_UNSET;
        this.v = C.TIME_UNSET;
        this.B = b80.a;
        this.C = new a62[0];
        this.D = new a62[0];
    }

    @Override
    public final void a(b80 b80Var) {
        int i;
        this.B = b80Var;
        int i2 = 0;
        this.m = 0;
        this.p = 0;
        a62[] a62VarArr = new a62[2];
        this.C = a62VarArr;
        a62 a62Var = this.l;
        if (a62Var != null) {
            a62VarArr[0] = a62Var;
            i = 1;
        } else {
            i = 0;
        }
        a62[] a62VarArr2 = (a62[]) f92.a(i, a62VarArr);
        this.C = a62VarArr2;
        for (a62 a62Var2 : a62VarArr2) {
            a62Var2.a(G);
        }
        this.D = new a62[this.a.size()];
        int i3 = 100;
        while (i2 < this.D.length) {
            int i4 = i3 + 1;
            a62 a62VarA = this.B.a(i3, 3);
            a62VarA.a(this.a.get(i2));
            this.D[i2] = a62VarA;
            i2++;
            i3 = i4;
        }
    }

    private void a(kh.a aVar) throws eg1 {
        n00 n00Var;
        n00 n00Var2;
        f40 f40VarA = a(aVar.c);
        kh.a aVarB = aVar.b(Mp4Box.TYPE_mvex);
        aVarB.getClass();
        SparseArray sparseArray = new SparseArray();
        int size = aVarB.c.size();
        long jV = -9223372036854775807L;
        for (int i = 0; i < size; i++) {
            kh.b bVar = (kh.b) aVarB.c.get(i);
            int i2 = bVar.a;
            if (i2 == 1953654136) {
                ag1 ag1Var = bVar.b;
                ag1Var.e(12);
                Pair pairCreate = Pair.create(Integer.valueOf(ag1Var.h()), new n00(ag1Var.h() - 1, ag1Var.h(), ag1Var.h(), ag1Var.h()));
                sparseArray.put(((Integer) pairCreate.first).intValue(), (n00) pairCreate.second);
            } else if (i2 == 1835362404) {
                ag1 ag1Var2 = bVar.b;
                ag1Var2.e(8);
                jV = ((ag1Var2.h() >> 24) & 255) == 0 ? ag1Var2.v() : ag1Var2.y();
            }
        }
        ArrayList arrayListA = lh.a(aVar, new ie0(), jV, f40VarA, false, false, new fe0() {
            @Override
            public final Object apply(Object obj) {
                return this.a.a((v52) obj);
            }
        });
        int size2 = arrayListA.size();
        if (this.b.size() == 0) {
            for (int i3 = 0; i3 < size2; i3++) {
                b62 b62Var = (b62) arrayListA.get(i3);
                v52 v52Var = b62Var.a;
                a62 a62VarA = this.B.a(i3, v52Var.b);
                int i4 = v52Var.a;
                if (sparseArray.size() == 1) {
                    n00Var2 = (n00) sparseArray.valueAt(0);
                } else {
                    n00Var2 = (n00) sparseArray.get(i4);
                    n00Var2.getClass();
                }
                this.b.put(v52Var.a, new b(a62VarA, b62Var, n00Var2));
                this.u = Math.max(this.u, v52Var.e);
            }
            this.B.a();
            return;
        }
        if (this.b.size() != size2) {
            throw new IllegalStateException();
        }
        for (int i5 = 0; i5 < size2; i5++) {
            b62 b62Var2 = (b62) arrayListA.get(i5);
            v52 v52Var2 = b62Var2.a;
            b bVar2 = this.b.get(v52Var2.a);
            int i6 = v52Var2.a;
            if (sparseArray.size() == 1) {
                n00Var = (n00) sparseArray.valueAt(0);
            } else {
                n00Var = (n00) sparseArray.get(i6);
                n00Var.getClass();
            }
            bVar2.a(b62Var2, n00Var);
        }
    }

    private static void a(ag1 ag1Var, int i, x52 x52Var) throws eg1 {
        ag1Var.e(i + 8);
        int iH = ag1Var.h();
        if ((iH & 1) == 0) {
            boolean z = (iH & 2) != 0;
            int iX = ag1Var.x();
            if (iX == 0) {
                Arrays.fill(x52Var.l, 0, x52Var.e, false);
                return;
            }
            if (iX == x52Var.e) {
                Arrays.fill(x52Var.l, 0, iX, z);
                x52Var.n.c(ag1Var.a());
                x52Var.k = true;
                x52Var.o = true;
                ag1Var.a(x52Var.n.c(), 0, x52Var.n.e());
                x52Var.n.e(0);
                x52Var.o = false;
                return;
            }
            throw eg1.a("Senc sample count " + iX + " is different from fragment sample count" + x52Var.e, (Exception) null);
        }
        throw eg1.a("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Code duplicated, block: B:109:0x022f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x0231  */
    /* JADX WARN: Code duplicated, block: B:111:0x023c  */
    /* JADX WARN: Code duplicated, block: B:114:0x0246 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x0248  */
    /* JADX WARN: Code duplicated, block: B:116:0x0251  */
    /* JADX WARN: Code duplicated, block: B:118:0x0257 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x0259  */
    /* JADX WARN: Code duplicated, block: B:120:0x025e  */
    /* JADX WARN: Code duplicated, block: B:123:0x0265  */
    /* JADX WARN: Code duplicated, block: B:125:0x0269  */
    /* JADX WARN: Code duplicated, block: B:126:0x0276  */
    /* JADX WARN: Code duplicated, block: B:129:0x0294  */
    /* JADX WARN: Code duplicated, block: B:132:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:133:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:285:0x02d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:286:0x02c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0130  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v65 */
    /* JADX WARN: Type inference failed for: r5v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r7v9, types: [int] */
    private void a(long j) throws eg1 {
        pc0 pc0Var;
        char c;
        char c2;
        int i;
        boolean z;
        boolean z2;
        ?? r5;
        char c3;
        char c4;
        int i2;
        ?? r2;
        kh.a aVar;
        byte[] bArr;
        int i3;
        int i4;
        int iH;
        int iH2;
        int iH3;
        int iH4;
        int i5;
        byte[] bArr2;
        int i6;
        boolean z3;
        byte[] bArr3;
        long j2;
        int[] iArr;
        long[] jArr;
        boolean[] zArr;
        int i7;
        long j3;
        x52 x52Var;
        long j4;
        int i8;
        int iH5;
        int iH6;
        int iH7;
        int iH8;
        long jA;
        x52 x52Var2;
        boolean z4;
        int i9;
        long jV;
        pc0 pc0Var2 = this;
        char c5 = 16;
        char c6 = 2;
        int i10 = 8;
        loop0: while (true) {
            boolean z5 = true;
            while (true) {
                if (pc0Var2.j.isEmpty() || pc0Var2.j.peek().b != j) {
                    break loop0;
                }
                kh.a aVarPop = pc0Var2.j.pop();
                int i11 = aVarPop.a;
                if (i11 == 1836019574) {
                    pc0Var2.a(aVarPop);
                } else {
                    if (i11 == 1836019558) {
                        SparseArray<b> sparseArray = pc0Var2.b;
                        byte[] bArr4 = pc0Var2.f;
                        int size = aVarPop.d.size();
                        int i12 = 0;
                        while (i12 < size) {
                            kh.a aVar2 = (kh.a) aVarPop.d.get(i12);
                            if (aVar2.a == 1953653094) {
                                kh.b bVarC = aVar2.c(Mp4Box.TYPE_tfhd);
                                bVarC.getClass();
                                ag1 ag1Var = bVarC.b;
                                ag1Var.e(i10);
                                int iH9 = ag1Var.h();
                                b bVar = sparseArray.get(ag1Var.h());
                                if (bVar == null) {
                                    bVar = null;
                                } else {
                                    if ((iH9 & 1) != 0) {
                                        r5 = z5;
                                        long jY = ag1Var.y();
                                        x52 x52Var3 = bVar.b;
                                        x52Var3.b = jY;
                                        x52Var3.c = jY;
                                    }
                                    r5 = z5;
                                    n00 n00Var = bVar.e;
                                    if ((iH9 & 2) != 0) {
                                        iH = ag1Var.h() - r5;
                                    } else {
                                        iH = n00Var.a;
                                    }
                                    if ((iH9 & 8) != 0) {
                                        iH2 = ag1Var.h();
                                    } else {
                                        iH2 = n00Var.b;
                                    }
                                    if ((iH9 & 16) != 0) {
                                        iH3 = ag1Var.h();
                                    } else {
                                        iH3 = n00Var.c;
                                    }
                                    if ((iH9 & 32) != 0) {
                                        iH4 = ag1Var.h();
                                    } else {
                                        iH4 = n00Var.d;
                                    }
                                    bVar.b.a = new n00(iH, iH2, iH3, iH4);
                                }
                                if (bVar == null) {
                                    r5 = z5;
                                    c3 = c5;
                                    i2 = i10;
                                    r2 = r5;
                                    aVar = aVarPop;
                                    bArr = bArr4;
                                    i3 = size;
                                    i4 = i12;
                                    c4 = 2;
                                } else {
                                    x52 x52Var4 = bVar.b;
                                    long j5 = x52Var4.p;
                                    boolean z6 = x52Var4.q;
                                    bVar.b();
                                    bVar.l = r5;
                                    kh.b bVarC2 = aVar2.c(Mp4Box.TYPE_tfdt);
                                    if (bVarC2 != null) {
                                        ag1 ag1Var2 = bVarC2.b;
                                        ag1Var2.e(i10);
                                        if (((ag1Var2.h() >> 24) & 255) == r5) {
                                            r5 = z5;
                                            jV = ag1Var2.y();
                                        } else {
                                            r5 = z5;
                                            jV = ag1Var2.v();
                                        }
                                        x52Var4.p = jV;
                                        x52Var4.q = r5;
                                    } else {
                                        r5 = z5;
                                        x52Var4.p = j5;
                                        x52Var4.q = z6;
                                    }
                                    ArrayList arrayList = aVar2.c;
                                    int size2 = arrayList.size();
                                    int i13 = 0;
                                    int i14 = 0;
                                    int i15 = 0;
                                    while (true) {
                                        i5 = Mp4Box.TYPE_trun;
                                        if (i13 >= size2) {
                                            break;
                                        }
                                        kh.b bVar2 = (kh.b) arrayList.get(i13);
                                        if (bVar2.a == 1953658222) {
                                            ag1 ag1Var3 = bVar2.b;
                                            ag1Var3.e(12);
                                            int iX = ag1Var3.x();
                                            if (iX > 0) {
                                                i14 += iX;
                                                i9 = 1;
                                                i15++;
                                            } else {
                                                i9 = 1;
                                            }
                                        } else {
                                            i9 = 1;
                                        }
                                        i13 += i9;
                                    }
                                    bVar.h = 0;
                                    bVar.g = 0;
                                    bVar.f = 0;
                                    x52 x52Var5 = bVar.b;
                                    x52Var5.d = i15;
                                    x52Var5.e = i14;
                                    if (x52Var5.g.length < i15) {
                                        x52Var5.f = new long[i15];
                                        x52Var5.g = new int[i15];
                                    }
                                    if (x52Var5.h.length < i14) {
                                        int i16 = (i14 * 125) / 100;
                                        x52Var5.h = new int[i16];
                                        x52Var5.i = new long[i16];
                                        x52Var5.j = new boolean[i16];
                                        x52Var5.l = new boolean[i16];
                                    }
                                    int i17 = 0;
                                    int i18 = 0;
                                    int i19 = 0;
                                    while (i17 < size2) {
                                        kh.b bVar3 = (kh.b) arrayList.get(i17);
                                        if (bVar3.a == i5) {
                                            int i20 = i18 + 1;
                                            ag1 ag1Var4 = bVar3.b;
                                            ag1Var4.e(8);
                                            int iH10 = ag1Var4.h();
                                            v52 v52Var = bVar.d.a;
                                            x52 x52Var6 = bVar.b;
                                            n00 n00Var2 = x52Var6.a;
                                            int i21 = f92.a;
                                            x52Var6.g[i18] = ag1Var4.x();
                                            long[] jArr2 = x52Var6.f;
                                            long j6 = x52Var6.b;
                                            jArr2[i18] = j6;
                                            if ((iH10 & 1) != 0) {
                                                jArr2[i18] = j6 + ((long) ag1Var4.h());
                                            }
                                            boolean z7 = (iH10 & 4) != 0;
                                            int iH11 = n00Var2.d;
                                            if (z7) {
                                                iH11 = ag1Var4.h();
                                            }
                                            boolean z8 = (iH10 & 256) != 0;
                                            boolean z9 = (iH10 & 512) != 0;
                                            boolean z10 = (iH10 & 1024) != 0;
                                            boolean z11 = (iH10 & 2048) != 0;
                                            long[] jArr3 = v52Var.h;
                                            int i22 = iH11;
                                            if (jArr3 != null) {
                                                bArr3 = bArr4;
                                                if (jArr3.length == 1 && jArr3[0] == 0) {
                                                    j2 = v52Var.i[0];
                                                }
                                                iArr = x52Var6.h;
                                                jArr = x52Var6.i;
                                                zArr = x52Var6.j;
                                                i7 = x52Var6.g[i18] + i19;
                                                j3 = v52Var.c;
                                                x52Var = x52Var6;
                                                j4 = x52Var6.p;
                                                i8 = i19;
                                                while (i8 < i7) {
                                                    if (z8) {
                                                        iH5 = ag1Var4.h();
                                                    } else {
                                                        iH5 = n00Var2.b;
                                                    }
                                                    if (iH5 >= 0) {
                                                        throw eg1.a("Unexpected negative value: " + iH5, (Exception) null);
                                                    }
                                                    if (z9) {
                                                        iH6 = ag1Var4.h();
                                                    } else {
                                                        iH6 = n00Var2.c;
                                                    }
                                                    if (iH6 >= 0) {
                                                        throw eg1.a("Unexpected negative value: " + iH6, (Exception) null);
                                                    }
                                                    if (z10) {
                                                        iH7 = ag1Var4.h();
                                                    } else if (i8 == 0 || !z7) {
                                                        iH7 = n00Var2.d;
                                                    } else {
                                                        iH7 = i22;
                                                    }
                                                    if (z11) {
                                                        iH8 = ag1Var4.h();
                                                    } else {
                                                        iH8 = 0;
                                                    }
                                                    jA = f92.a((((long) iH8) + j4) - j2, 1000000L, j3);
                                                    jArr[i8] = jA;
                                                    long j7 = j3;
                                                    x52Var2 = x52Var;
                                                    if (!x52Var2.q) {
                                                        jArr[i8] = jA + bVar.d.h;
                                                    }
                                                    iArr[i8] = iH6;
                                                    if (((iH7 >> 16) & 1) == 0) {
                                                        z4 = true;
                                                    } else {
                                                        z4 = false;
                                                    }
                                                    zArr[i8] = z4;
                                                    j4 += (long) iH5;
                                                    i8++;
                                                    x52Var = x52Var2;
                                                    j3 = j7;
                                                    i7 = i7;
                                                    z8 = z8;
                                                    z9 = z9;
                                                    z7 = z7;
                                                    z10 = z10;
                                                    z11 = z11;
                                                }
                                                int i23 = i7;
                                                x52Var.p = j4;
                                                i18 = i20;
                                                i19 = i23;
                                            } else {
                                                bArr3 = bArr4;
                                            }
                                            j2 = 0;
                                            iArr = x52Var6.h;
                                            jArr = x52Var6.i;
                                            zArr = x52Var6.j;
                                            i7 = x52Var6.g[i18] + i19;
                                            j3 = v52Var.c;
                                            x52Var = x52Var6;
                                            j4 = x52Var6.p;
                                            i8 = i19;
                                            while (i8 < i7) {
                                                if (z8) {
                                                    iH5 = ag1Var4.h();
                                                } else {
                                                    iH5 = n00Var2.b;
                                                }
                                                if (iH5 >= 0) {
                                                    throw eg1.a("Unexpected negative value: " + iH5, (Exception) null);
                                                }
                                                if (z9) {
                                                    iH6 = ag1Var4.h();
                                                } else {
                                                    iH6 = n00Var2.c;
                                                }
                                                if (iH6 >= 0) {
                                                    throw eg1.a("Unexpected negative value: " + iH6, (Exception) null);
                                                }
                                                if (z10) {
                                                    iH7 = ag1Var4.h();
                                                } else if (i8 == 0) {
                                                    iH7 = n00Var2.d;
                                                } else {
                                                    iH7 = n00Var2.d;
                                                }
                                                if (z11) {
                                                    iH8 = ag1Var4.h();
                                                } else {
                                                    iH8 = 0;
                                                }
                                                jA = f92.a((((long) iH8) + j4) - j2, 1000000L, j3);
                                                jArr[i8] = jA;
                                                long j8 = j3;
                                                x52Var2 = x52Var;
                                                if (!x52Var2.q) {
                                                    jArr[i8] = jA + bVar.d.h;
                                                }
                                                iArr[i8] = iH6;
                                                if (((iH7 >> 16) & 1) == 0) {
                                                    z4 = true;
                                                } else {
                                                    z4 = false;
                                                }
                                                zArr[i8] = z4;
                                                j4 += (long) iH5;
                                                i8++;
                                                x52Var = x52Var2;
                                                j3 = j8;
                                                i7 = i7;
                                                z8 = z8;
                                                z9 = z9;
                                                z7 = z7;
                                                z10 = z10;
                                                z11 = z11;
                                            }
                                            int i24 = i7;
                                            x52Var.p = j4;
                                            i18 = i20;
                                            i19 = i24;
                                        } else {
                                            aVarPop = aVarPop;
                                            bArr3 = bArr4;
                                            i12 = i12;
                                            bVar = bVar;
                                        }
                                        i17++;
                                        arrayList = arrayList;
                                        size2 = size2;
                                        size = size;
                                        x52Var4 = x52Var4;
                                        aVarPop = aVarPop;
                                        i12 = i12;
                                        bVar = bVar;
                                        bArr4 = bArr3;
                                        aVar2 = aVar2;
                                        i5 = Mp4Box.TYPE_trun;
                                    }
                                    aVar = aVarPop;
                                    byte[] bArr5 = bArr4;
                                    i3 = size;
                                    i4 = i12;
                                    v52 v52Var2 = bVar.d.a;
                                    n00 n00Var3 = x52Var4.a;
                                    n00Var3.getClass();
                                    w52 w52VarA = v52Var2.a(n00Var3.a);
                                    kh.b bVarC3 = aVar2.c(Mp4Box.TYPE_saiz);
                                    if (bVarC3 != null) {
                                        w52VarA.getClass();
                                        ag1 ag1Var5 = bVarC3.b;
                                        int i25 = w52VarA.d;
                                        ag1Var5.e(8);
                                        if ((ag1Var5.h() & 1) == 1) {
                                            ag1Var5.f(8);
                                        }
                                        int iT = ag1Var5.t();
                                        int iX2 = ag1Var5.x();
                                        if (iX2 > x52Var4.e) {
                                            throw eg1.a("Saiz sample count " + iX2 + " is greater than fragment sample count" + x52Var4.e, (Exception) null);
                                        }
                                        if (iT == 0) {
                                            boolean[] zArr2 = x52Var4.l;
                                            i6 = 0;
                                            for (int i26 = 0; i26 < iX2; i26++) {
                                                int iT2 = ag1Var5.t();
                                                i6 += iT2;
                                                zArr2[i26] = iT2 > i25;
                                            }
                                            z3 = false;
                                        } else {
                                            boolean z12 = iT > i25;
                                            i6 = iT * iX2;
                                            z3 = false;
                                            Arrays.fill(x52Var4.l, 0, iX2, z12);
                                        }
                                        Arrays.fill(x52Var4.l, iX2, x52Var4.e, z3);
                                        if (i6 > 0) {
                                            x52Var4.n.c(i6);
                                            x52Var4.k = true;
                                            x52Var4.o = true;
                                        }
                                    }
                                    kh.b bVarC4 = aVar2.c(Mp4Box.TYPE_saio);
                                    if (bVarC4 != null) {
                                        ag1 ag1Var6 = bVarC4.b;
                                        ag1Var6.e(8);
                                        int iH12 = ag1Var6.h();
                                        if ((iH12 & 1) == 1) {
                                            ag1Var6.f(8);
                                        }
                                        int iX3 = ag1Var6.x();
                                        if (iX3 != 1) {
                                            throw eg1.a("Unexpected saio entry count: " + iX3, (Exception) null);
                                        }
                                        x52Var4.c += ((iH12 >> 24) & 255) == 0 ? ag1Var6.v() : ag1Var6.y();
                                    }
                                    byte[] bArr6 = null;
                                    kh.b bVarC5 = aVar2.c(Mp4Box.TYPE_senc);
                                    if (bVarC5 != null) {
                                        a(bVarC5.b, 0, x52Var4);
                                    }
                                    String str = w52VarA != null ? w52VarA.b : null;
                                    ag1 ag1Var7 = null;
                                    ag1 ag1Var8 = null;
                                    for (int i27 = 0; i27 < aVar2.c.size(); i27++) {
                                        kh.b bVar4 = (kh.b) aVar2.c.get(i27);
                                        ag1 ag1Var9 = bVar4.b;
                                        int i28 = bVar4.a;
                                        if (i28 == 1935828848) {
                                            ag1Var9.e(12);
                                            if (ag1Var9.h() == 1936025959) {
                                                ag1Var7 = ag1Var9;
                                            }
                                        } else if (i28 == 1936158820) {
                                            ag1Var9.e(12);
                                            if (ag1Var9.h() == 1936025959) {
                                                ag1Var8 = ag1Var9;
                                            }
                                        }
                                    }
                                    if (ag1Var7 == null || ag1Var8 == null) {
                                        c4 = 2;
                                    } else {
                                        ag1Var7.e(8);
                                        int iH13 = (ag1Var7.h() >> 24) & 255;
                                        ag1Var7.f(4);
                                        if (iH13 == 1) {
                                            ag1Var7.f(4);
                                        }
                                        if (ag1Var7.h() == 1) {
                                            ag1Var8.e(8);
                                            int iH14 = (ag1Var8.h() >> 24) & 255;
                                            ag1Var8.f(4);
                                            if (iH14 != 1) {
                                                c4 = 2;
                                                if (iH14 >= 2) {
                                                    ag1Var8.f(4);
                                                }
                                            } else {
                                                if (ag1Var8.v() == 0) {
                                                    throw eg1.a("Variable length description in sgpd found (unsupported)");
                                                }
                                                c4 = 2;
                                            }
                                            if (ag1Var8.v() == 1) {
                                                ag1Var8.f(1);
                                                int iT3 = ag1Var8.t();
                                                int i29 = (iT3 & 240) >> 4;
                                                int i30 = iT3 & 15;
                                                boolean z13 = ag1Var8.t() == 1;
                                                if (z13) {
                                                    int iT4 = ag1Var8.t();
                                                    byte[] bArr7 = new byte[16];
                                                    ag1Var8.a(bArr7, 0, 16);
                                                    if (iT4 == 0) {
                                                        int iT5 = ag1Var8.t();
                                                        bArr6 = new byte[iT5];
                                                        ag1Var8.a(bArr6, 0, iT5);
                                                    }
                                                    x52Var4.k = true;
                                                    x52Var4.m = new w52(z13, str, iT4, bArr7, i29, i30, bArr6);
                                                }
                                            } else {
                                                throw eg1.a("Entry count in sgpd != 1 (unsupported).");
                                            }
                                        } else {
                                            throw eg1.a("Entry count in sbgp != 1 (unsupported).");
                                        }
                                    }
                                    int size3 = aVar2.c.size();
                                    int i31 = 0;
                                    while (i31 < size3) {
                                        kh.b bVar5 = (kh.b) aVar2.c.get(i31);
                                        if (bVar5.a == 1970628964) {
                                            ag1 ag1Var10 = bVar5.b;
                                            ag1Var10.e(8);
                                            bArr2 = bArr5;
                                            ag1Var10.a(bArr2, 0, 16);
                                            if (Arrays.equals(bArr2, F)) {
                                                a(ag1Var10, 16, x52Var4);
                                            }
                                        } else {
                                            bArr2 = bArr5;
                                        }
                                        i31++;
                                        bArr5 = bArr2;
                                    }
                                    bArr = bArr5;
                                    r2 = 1;
                                    i2 = 8;
                                    c3 = 16;
                                }
                            } else {
                                r5 = z5;
                                c3 = c5;
                                c4 = c6;
                                i2 = i10;
                                r2 = r5;
                                aVar = aVarPop;
                                sparseArray = sparseArray;
                                bArr = bArr4;
                                i3 = size;
                                i4 = i12;
                            }
                            i12 = i4 + 1;
                            r5 = r2;
                            i10 = i2;
                            bArr4 = bArr;
                            c5 = c3;
                            c6 = c4;
                            sparseArray = sparseArray;
                            size = i3;
                            aVarPop = aVar;
                        }
                        r5 = z5;
                        c = c5;
                        c2 = c6;
                        i = i10;
                        f40 f40VarA = a(aVarPop.c);
                        pc0Var = this;
                        if (f40VarA != null) {
                            int size4 = pc0Var.b.size();
                            for (int i32 = 0; i32 < size4; i32++) {
                                b bVarValueAt = pc0Var.b.valueAt(i32);
                                v52 v52Var3 = bVarValueAt.d.a;
                                n00 n00Var4 = bVarValueAt.b.a;
                                int i33 = f92.a;
                                w52 w52VarA2 = v52Var3.a(n00Var4.a);
                                bVarValueAt.a.a(bVarValueAt.d.a.f.a().a(f40VarA.a(w52VarA2 != null ? w52VarA2.b : null)).a());
                            }
                        }
                        if (pc0Var.t != C.TIME_UNSET) {
                            int size5 = pc0Var.b.size();
                            for (int i34 = 0; i34 < size5; i34++) {
                                b bVarValueAt2 = pc0Var.b.valueAt(i34);
                                long j9 = pc0Var.t;
                                int i35 = bVarValueAt2.f;
                                while (true) {
                                    x52 x52Var7 = bVarValueAt2.b;
                                    if (i35 >= x52Var7.e || x52Var7.i[i35] >= j9) {
                                        break;
                                    }
                                    if (x52Var7.j[i35]) {
                                        bVarValueAt2.i = i35;
                                    }
                                    i35++;
                                }
                            }
                            z2 = true;
                            pc0Var.t = C.TIME_UNSET;
                        }
                    } else {
                        pc0Var = pc0Var2;
                        c = c5;
                        c2 = c6;
                        i = i10;
                        z = z5 ? 1 : 0;
                        if (!pc0Var.j.isEmpty()) {
                            z2 = z;
                            pc0Var.j.peek().d.add(aVarPop);
                            z2 = z;
                        }
                    }
                    z2 = z;
                    pc0Var2 = pc0Var;
                    i10 = i;
                    c5 = c;
                    c6 = c2;
                    z5 = z2;
                }
            }
            pc0Var2 = pc0Var;
            i10 = i;
            c5 = c;
            c6 = c2;
        }
        pc0 pc0Var3 = pc0Var2;
        pc0Var3.m = 0;
        pc0Var3.p = 0;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0210  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v10, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        int i;
        Exception exc;
        ?? r9;
        String str;
        String str2;
        long jA;
        long jV;
        long j;
        long j2;
        long jY;
        long jY2;
        b bVar;
        long j3;
        int i2;
        int i3;
        int iB;
        boolean z;
        int i4;
        long j4;
        long j5;
        int i5;
        loop0: while (true) {
            i = 1;
            while (true) {
                int i6 = this.m;
                exc = null;
                r9 = 0;
                if (i6 == 0) {
                    if (this.p == 0) {
                        if (!((wz) a80Var).a(this.i.c(), 0, 8, true)) {
                            return -1;
                        }
                        this.p = 8;
                        this.i.e(0);
                        this.o = this.i.v();
                        this.n = this.i.h();
                    }
                    long j6 = this.o;
                    if (j6 == 1) {
                        ((wz) a80Var).a(this.i.c(), 8, 8, false);
                        this.p += 8;
                        this.o = this.i.y();
                    } else if (j6 == 0) {
                        wz wzVar = (wz) a80Var;
                        long jB = wzVar.b();
                        if (jB == -1 && !this.j.isEmpty()) {
                            jB = this.j.peek().b;
                        }
                        if (jB != -1) {
                            this.o = (jB - wzVar.a()) + ((long) this.p);
                        }
                    }
                    if (this.o >= this.p) {
                        wz wzVar2 = (wz) a80Var;
                        long jA2 = wzVar2.a() - ((long) this.p);
                        int i7 = this.n;
                        if ((i7 == 1836019558 || i7 == 1835295092) && !this.E) {
                            this.B.a(new ex1.b(this.u, jA2));
                            this.E = true;
                        }
                        if (this.n == 1836019558) {
                            int size = this.b.size();
                            for (int i8 = 0; i8 < size; i8++) {
                                x52 x52Var = this.b.valueAt(i8).b;
                                x52Var.getClass();
                                x52Var.c = jA2;
                                x52Var.b = jA2;
                            }
                        }
                        int i9 = this.n;
                        if (i9 == 1835295092) {
                            this.w = null;
                            this.r = jA2 + this.o;
                            this.m = 2;
                            break;
                        }
                        if (i9 == 1836019574 || i9 == 1953653099 || i9 == 1835297121 || i9 == 1835626086 || i9 == 1937007212 || i9 == 1836019558 || i9 == 1953653094 || i9 == 1836475768 || i9 == 1701082227) {
                            i5 = 1;
                            long jA3 = (wzVar2.a() + this.o) - 8;
                            this.j.push(new kh.a(this.n, jA3));
                            if (this.o == this.p) {
                                a(jA3);
                            } else {
                                this.m = 0;
                                this.p = 0;
                            }
                            i = i5;
                        } else if (i9 == 1751411826 || i9 == 1835296868 || i9 == 1836476516 || i9 == 1936286840 || i9 == 1937011556 || i9 == 1937011827 || i9 == 1668576371 || i9 == 1937011555 || i9 == 1937011578 || i9 == 1937013298 || i9 == 1937007471 || i9 == 1668232756 || i9 == 1937011571 || i9 == 1952867444 || i9 == 1952868452 || i9 == 1953196132 || i9 == 1953654136 || i9 == 1953658222 || i9 == 1886614376 || i9 == 1935763834 || i9 == 1935763823 || i9 == 1936027235 || i9 == 1970628964 || i9 == 1935828848 || i9 == 1936158820 || i9 == 1701606260 || i9 == 1835362404 || i9 == 1701671783) {
                            if (this.p == 8) {
                                long j7 = this.o;
                                if (j7 <= 2147483647L) {
                                    ag1 ag1Var = new ag1((int) j7);
                                    System.arraycopy(this.i.c(), 0, ag1Var.c(), 0, 8);
                                    this.q = ag1Var;
                                    i5 = 1;
                                    this.m = 1;
                                    i = i5;
                                } else {
                                    throw eg1.a("Leaf atom with length > 2147483647 (unsupported).");
                                }
                            } else {
                                throw eg1.a("Leaf atom defines extended atom size (unsupported).");
                            }
                        } else if (this.o <= 2147483647L) {
                            this.q = null;
                            i = 1;
                            this.m = 1;
                        } else {
                            throw eg1.a("Skipping atom with length > 2147483647 (unsupported).");
                        }
                    } else {
                        throw eg1.a("Atom size less than header length (unsupported).");
                    }
                } else {
                    if (i6 == i) {
                        int i10 = ((int) this.o) - this.p;
                        ag1 ag1Var2 = this.q;
                        if (ag1Var2 != null) {
                            wz wzVar3 = (wz) a80Var;
                            wzVar3.a(ag1Var2.c(), 8, i10, false);
                            int i11 = this.n;
                            kh.b bVar2 = new kh.b(i11, ag1Var2);
                            long jA4 = wzVar3.a();
                            if (!this.j.isEmpty()) {
                                this.j.peek().c.add(bVar2);
                            } else if (i11 == 1936286840) {
                                ag1Var2.e(8);
                                int iH = (ag1Var2.h() >> 24) & 255;
                                ag1Var2.f(4);
                                long jV2 = ag1Var2.v();
                                if (iH == 0) {
                                    jY = ag1Var2.v();
                                    jY2 = ag1Var2.v();
                                } else {
                                    jY = ag1Var2.y();
                                    jY2 = ag1Var2.y();
                                }
                                long j8 = jY;
                                long j9 = jY2 + jA4;
                                long jA5 = f92.a(j8, 1000000L, jV2);
                                ag1Var2.f(2);
                                int iZ = ag1Var2.z();
                                int[] iArr = new int[iZ];
                                long[] jArr = new long[iZ];
                                long[] jArr2 = new long[iZ];
                                long[] jArr3 = new long[iZ];
                                long jA6 = jA5;
                                int i12 = 0;
                                while (i12 < iZ) {
                                    int iH2 = ag1Var2.h();
                                    if ((iH2 & Integer.MIN_VALUE) == 0) {
                                        long jV3 = ag1Var2.v();
                                        iArr[i12] = iH2 & Integer.MAX_VALUE;
                                        jArr[i12] = j9;
                                        jArr3[i12] = jA6;
                                        long j10 = j8 + jV3;
                                        long[] jArr4 = jArr3;
                                        int i13 = i12;
                                        long[] jArr5 = jArr2;
                                        jA6 = f92.a(j10, 1000000L, jV2);
                                        jArr5[i13] = jA6 - jArr4[i13];
                                        ag1Var2.f(4);
                                        j9 += (long) iArr[i13];
                                        i12 = i13 + 1;
                                        jArr = jArr;
                                        jArr2 = jArr5;
                                        j8 = j10;
                                        iZ = iZ;
                                        jArr3 = jArr4;
                                    } else {
                                        throw eg1.a("Unhandled indirect reference", (Exception) null);
                                    }
                                }
                                Pair pairCreate = Pair.create(Long.valueOf(jA5), new mo(iArr, jArr, jArr2, jArr3));
                                this.v = ((Long) pairCreate.first).longValue();
                                this.B.a((ex1) pairCreate.second);
                                this.E = true;
                            } else if (i11 == 1701671783 && this.C.length != 0) {
                                ag1Var2.e(8);
                                int iH3 = (ag1Var2.h() >> 24) & 255;
                                if (iH3 == 0) {
                                    String strQ = ag1Var2.q();
                                    strQ.getClass();
                                    String strQ2 = ag1Var2.q();
                                    strQ2.getClass();
                                    long jV4 = ag1Var2.v();
                                    long jA7 = f92.a(ag1Var2.v(), 1000000L, jV4);
                                    long j11 = this.v;
                                    long j12 = j11 != C.TIME_UNSET ? j11 + jA7 : -9223372036854775807L;
                                    str = strQ;
                                    str2 = strQ2;
                                    jA = f92.a(ag1Var2.v(), 1000L, jV4);
                                    jV = ag1Var2.v();
                                    j = jA7;
                                    j2 = j12;
                                } else if (iH3 != 1) {
                                    xr0.a("Skipping unsupported emsg version: ", iH3, "FragmentedMp4Extractor");
                                } else {
                                    long jV5 = ag1Var2.v();
                                    long jA8 = f92.a(ag1Var2.y(), 1000000L, jV5);
                                    long jA9 = f92.a(ag1Var2.v(), 1000L, jV5);
                                    long jV6 = ag1Var2.v();
                                    String strQ3 = ag1Var2.q();
                                    strQ3.getClass();
                                    String strQ4 = ag1Var2.q();
                                    strQ4.getClass();
                                    str = strQ3;
                                    str2 = strQ4;
                                    jA = jA9;
                                    j2 = jA8;
                                    jV = jV6;
                                    j = -9223372036854775807L;
                                }
                                byte[] bArr = new byte[ag1Var2.a()];
                                ag1Var2.a(bArr, 0, ag1Var2.a());
                                ag1 ag1Var3 = new ag1(this.h.a(new y50(str, str2, jA, jV, bArr)));
                                int iA = ag1Var3.a();
                                for (a62 a62Var : this.C) {
                                    ag1Var3.e(0);
                                    a62Var.a(iA, ag1Var3);
                                }
                                if (j2 == C.TIME_UNSET) {
                                    this.k.addLast(new a(iA, j, true));
                                    this.s += iA;
                                } else if (!this.k.isEmpty()) {
                                    this.k.addLast(new a(iA, j2, false));
                                    this.s += iA;
                                } else {
                                    for (a62 a62Var2 : this.C) {
                                        a62Var2.a(j2, 1, iA, 0, null);
                                    }
                                }
                            }
                        } else {
                            ((wz) a80Var).a(i10);
                        }
                        a(((wz) a80Var).a());
                        break;
                    }
                    long j13 = Long.MAX_VALUE;
                    if (i6 != 2) {
                        bVar = this.w;
                        if (bVar != null) {
                            break loop0;
                        }
                        SparseArray<b> sparseArray = this.b;
                        int size2 = sparseArray.size();
                        long j14 = Long.MAX_VALUE;
                        b bVar3 = null;
                        for (int i14 = 0; i14 < size2; i14 += i) {
                            b bVarValueAt = sparseArray.valueAt(i14);
                            boolean z2 = bVarValueAt.l;
                            if ((z2 || bVarValueAt.f != bVarValueAt.d.b) && (!z2 || bVarValueAt.h != bVarValueAt.b.d)) {
                                if (!z2) {
                                    j5 = bVarValueAt.d.c[bVarValueAt.f];
                                } else {
                                    j5 = bVarValueAt.b.f[bVarValueAt.h];
                                }
                                if (j5 < j14) {
                                    bVar3 = bVarValueAt;
                                    j14 = j5;
                                }
                            }
                        }
                        if (bVar3 != null) {
                            if (!bVar3.l) {
                                j4 = bVar3.d.c[bVar3.f];
                            } else {
                                j4 = bVar3.b.f[bVar3.h];
                            }
                            wz wzVar4 = (wz) a80Var;
                            int iA2 = (int) (j4 - wzVar4.a());
                            if (iA2 < 0) {
                                et0.d("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                                iA2 = 0;
                            }
                            wzVar4.a(iA2);
                            this.w = bVar3;
                            bVar = bVar3;
                            break loop0;
                        }
                        wz wzVar5 = (wz) a80Var;
                        int iA3 = (int) (this.r - wzVar5.a());
                        if (iA3 >= 0) {
                            wzVar5.a(iA3);
                            this.m = 0;
                            this.p = 0;
                        } else {
                            throw eg1.a("Offset to end of mdat was negative.", (Exception) null);
                        }
                    } else {
                        int size3 = this.b.size();
                        b bVarValueAt2 = null;
                        for (int i15 = 0; i15 < size3; i15 += i) {
                            x52 x52Var2 = this.b.valueAt(i15).b;
                            if (x52Var2.o) {
                                long j15 = x52Var2.c;
                                if (j15 < j13) {
                                    bVarValueAt2 = this.b.valueAt(i15);
                                    j13 = j15;
                                }
                            }
                        }
                        if (bVarValueAt2 == null) {
                            this.m = 3;
                        } else {
                            wz wzVar6 = (wz) a80Var;
                            int iA4 = (int) (j13 - wzVar6.a());
                            if (iA4 >= 0) {
                                wzVar6.a(iA4);
                                x52 x52Var3 = bVarValueAt2.b;
                                wzVar6.a(x52Var3.n.c(), 0, x52Var3.n.e(), false);
                                x52Var3.n.e(0);
                                x52Var3.o = false;
                            } else {
                                throw eg1.a("Offset to encryption data was negative.", (Exception) null);
                            }
                        }
                    }
                }
            }
        }
        char c = 6;
        if (this.m == 3) {
            if (!bVar.l) {
                i4 = bVar.d.d[bVar.f];
            } else {
                i4 = bVar.b.h[bVar.f];
            }
            this.x = i4;
            if (bVar.f < bVar.i) {
                ((wz) a80Var).a(i4);
                w52 w52VarA = bVar.a();
                if (w52VarA != null) {
                    ag1 ag1Var4 = bVar.b.n;
                    int i16 = w52VarA.d;
                    if (i16 != 0) {
                        ag1Var4.f(i16);
                    }
                    x52 x52Var4 = bVar.b;
                    int i17 = bVar.f;
                    if (x52Var4.k && x52Var4.l[i17]) {
                        ag1Var4.f(ag1Var4.z() * 6);
                    }
                }
                bVar.f += i;
                if (bVar.l) {
                    int i18 = bVar.g + i;
                    bVar.g = i18;
                    int[] iArr2 = bVar.b.g;
                    int i19 = bVar.h;
                    if (i18 == iArr2[i19]) {
                        bVar.h = i19 + i;
                        bVar.g = 0;
                        this.w = null;
                    }
                } else {
                    this.w = null;
                }
                this.m = 3;
                return 0;
            }
            if (bVar.d.a.g == i) {
                this.x = i4 - 8;
                ((wz) a80Var).a(8);
            }
            if (MimeTypes.AUDIO_AC4.equals(bVar.d.a.f.m)) {
                this.y = bVar.a(this.x, 7);
                w.a(this.x, this.g);
                bVar.a.a(7, this.g);
                this.y += 7;
            } else {
                this.y = bVar.a(this.x, 0);
            }
            this.x += this.y;
            this.m = 4;
            this.z = 0;
        }
        b62 b62Var = bVar.d;
        v52 v52Var = b62Var.a;
        a62 a62Var3 = bVar.a;
        if (!bVar.l) {
            j3 = b62Var.f[bVar.f];
        } else {
            j3 = bVar.b.i[bVar.f];
        }
        if (v52Var.j == 0) {
            while (true) {
                int i20 = this.y;
                int i21 = this.x;
                if (i20 >= i21) {
                    break;
                }
                this.y += a62Var3.b(a80Var, i21 - i20, false);
            }
        } else {
            byte[] bArrC = this.d.c();
            bArrC[0] = 0;
            bArrC[i] = 0;
            bArrC[2] = 0;
            int i22 = v52Var.j;
            int i23 = i22 + 1;
            int i24 = 4 - i22;
            while (this.y < this.x) {
                int i25 = this.z;
                if (i25 == 0) {
                    ((wz) a80Var).a(bArrC, i24, i23, r9);
                    this.d.e(r9);
                    int iH4 = this.d.h();
                    if (iH4 >= i) {
                        this.z = iH4 - i;
                        this.c.e(r9);
                        a62Var3.a(4, this.c);
                        a62Var3.a(i, this.d);
                        if (this.D.length > 0) {
                            String str3 = v52Var.f.m;
                            byte b2 = bArrC[4];
                            byte[] bArr2 = e41.a;
                            if (("video/avc".equals(str3) && (b2 & 31) == c) || ("video/hevc".equals(str3) && ((b2 & 126) >> i) == 39)) {
                                z = i;
                            } else {
                                z = 0;
                            }
                        } else {
                            z = 0;
                        }
                        this.A = z;
                        this.y += 5;
                        this.x += i24;
                    } else {
                        throw eg1.a("Invalid NAL length", exc);
                    }
                } else {
                    if (this.A) {
                        this.e.c(i25);
                        ((wz) a80Var).a(this.e.c(), 0, this.z, false);
                        a62Var3.a(this.z, this.e);
                        iB = this.z;
                        int iA5 = e41.a(this.e.e(), this.e.c());
                        this.e.e("video/hevc".equals(v52Var.f.m) ? 1 : 0);
                        this.e.d(iA5);
                        Cdo.a(j3, this.e, this.D);
                    } else {
                        iB = a62Var3.b(a80Var, i25, false);
                    }
                    this.y += iB;
                    this.z -= iB;
                    c = 6;
                    exc = null;
                }
                r9 = 0;
            }
        }
        if (!bVar.l) {
            i2 = bVar.d.g[bVar.f];
        } else {
            i2 = bVar.b.j[bVar.f] ? i : 0;
        }
        if (bVar.a() != null) {
            i2 |= 1073741824;
        }
        int i26 = i2;
        w52 w52VarA2 = bVar.a();
        a62Var3.a(j3, i26, this.x, 0, w52VarA2 != null ? w52VarA2.c : null);
        while (!this.k.isEmpty()) {
            a aVarRemoveFirst = this.k.removeFirst();
            this.s -= aVarRemoveFirst.c;
            long j16 = aVarRemoveFirst.a;
            if (aVarRemoveFirst.b) {
                j16 += j3;
            }
            a62[] a62VarArr = this.C;
            int length = a62VarArr.length;
            for (int i27 = 0; i27 < length; i27 += i) {
                a62VarArr[i27].a(j16, 1, aVarRemoveFirst.c, this.s, null);
            }
        }
        bVar.f += i;
        if (bVar.l) {
            int i28 = bVar.g + i;
            bVar.g = i28;
            int[] iArr3 = bVar.b.g;
            int i29 = bVar.h;
            if (i28 == iArr3[i29]) {
                bVar.h = i29 + i;
                i3 = 0;
                bVar.g = 0;
            } else {
                i3 = 0;
            }
            this.m = 3;
            return i3;
        }
        i3 = 0;
        this.w = null;
        this.m = 3;
        return i3;
    }

    @Override
    public final void a(long j, long j2) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            this.b.valueAt(i).b();
        }
        this.k.clear();
        this.s = 0;
        this.t = j2;
        this.j.clear();
        this.m = 0;
        this.p = 0;
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        return u02.a((wz) a80Var);
    }

    public static z70[] a() {
        return new z70[]{new pc0(0)};
    }
}
