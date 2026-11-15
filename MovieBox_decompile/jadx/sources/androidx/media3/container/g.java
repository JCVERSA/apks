package androidx.media3.container;

import androidx.media3.common.r;
import androidx.media3.common.util.u;
import androidx.media3.common.y;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

public abstract class g {

    public static final byte[] f10281a = {0, 0, 0, 1};

    public static final float[] f10282b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    private static final Object f10283c = new Object();

    private static int[] f10284d = new int[10];

    public static final class a {

        public final int f10285a;

        public final int f10286b;

        public a(int i10, int i11) {
            this.f10285a = i10;
            this.f10286b = i11;
        }
    }

    public static final class b {

        public final int f10287a;

        public final int f10288b;

        public final int f10289c;

        public b(int i10, int i11, int i12) {
            this.f10287a = i10;
            this.f10288b = i11;
            this.f10289c = i12;
        }
    }

    public static final class c {

        public final int f10290a;

        public final boolean f10291b;

        public final int f10292c;

        public final int f10293d;

        public final int[] f10294e;

        public final int f10295f;

        public c(int i10, boolean z10, int i11, int i12, int[] iArr, int i13) {
            this.f10290a = i10;
            this.f10291b = z10;
            this.f10292c = i11;
            this.f10293d = i12;
            this.f10294e = iArr;
            this.f10295f = i13;
        }
    }

    public static final class d {

        public final ImmutableList f10296a;

        public final int[] f10297b;

        public d(List list, int[] iArr) {
            this.f10296a = ImmutableList.copyOf((Collection) list);
            this.f10297b = iArr;
        }
    }

    public static final class e {

        public final int f10298a;

        public final int f10299b;

        public final int f10300c;

        public final int f10301d;

        public final int f10302e;

        public e(int i10, int i11, int i12, int i13, int i14) {
            this.f10298a = i10;
            this.f10299b = i11;
            this.f10300c = i12;
            this.f10301d = i13;
            this.f10302e = i14;
        }
    }

    public static final class f {

        public final ImmutableList f10303a;

        public final int[] f10304b;

        public f(List list, int[] iArr) {
            this.f10303a = ImmutableList.copyOf((Collection) list);
            this.f10304b = iArr;
        }
    }

    public static final class C0084g {

        public final int f10305a;

        public final int f10306b;

        public final int f10307c;

        public final int f10308d;

        public final int f10309e;

        public final int f10310f;

        public final int f10311g;

        public final int f10312h;

        public final int f10313i;

        public C0084g(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            this.f10305a = i10;
            this.f10306b = i11;
            this.f10307c = i12;
            this.f10308d = i13;
            this.f10309e = i14;
            this.f10310f = i15;
            this.f10311g = i16;
            this.f10312h = i17;
            this.f10313i = i18;
        }
    }

    public static final class h {

        public final b f10314a;

        public final int f10315b;

        public final c f10316c;

        public final int f10317d;

        public final int f10318e;

        public final int f10319f;

        public final int f10320g;

        public final int f10321h;

        public final int f10322i;

        public final float f10323j;

        public final int f10324k;

        public final int f10325l;

        public final int f10326m;

        public final int f10327n;

        public h(b bVar, int i10, c cVar, int i11, int i12, int i13, int i14, int i15, int i16, float f10, int i17, int i18, int i19, int i20) {
            this.f10314a = bVar;
            this.f10315b = i10;
            this.f10316c = cVar;
            this.f10317d = i11;
            this.f10318e = i12;
            this.f10319f = i13;
            this.f10320g = i14;
            this.f10321h = i15;
            this.f10322i = i16;
            this.f10323j = f10;
            this.f10324k = i17;
            this.f10325l = i18;
            this.f10326m = i19;
            this.f10327n = i20;
        }
    }

    public static final class i {

        public final int f10328a;

        public final int f10329b;

        public final int f10330c;

        public i(int i10, int i11, int i12) {
            this.f10328a = i10;
            this.f10329b = i11;
            this.f10330c = i12;
        }
    }

    public static final class j {

        public final ImmutableList f10331a;

        public final int[] f10332b;

        public j(List list, int[] iArr) {
            this.f10331a = ImmutableList.copyOf((Collection) list);
            this.f10332b = iArr;
        }
    }

    public static final class k {

        public final b f10333a;

        public final ImmutableList f10334b;

        public final d f10335c;

        public final f f10336d;

        public final j f10337e;

        public k(b bVar, List list, d dVar, f fVar, j jVar) {
            this.f10333a = bVar;
            this.f10334b = list != null ? ImmutableList.copyOf((Collection) list) : ImmutableList.of();
            this.f10335c = dVar;
            this.f10336d = fVar;
            this.f10337e = jVar;
        }
    }

    public static final class l {

        public final int f10338a;

        public final int f10339b;

        public final boolean f10340c;

        public l(int i10, int i11, boolean z10) {
            this.f10338a = i10;
            this.f10339b = i11;
            this.f10340c = z10;
        }
    }

    public static final class m {

        public final int f10341a;

        public final int f10342b;

        public final int f10343c;

        public final int f10344d;

        public final int f10345e;

        public final int f10346f;

        public final int f10347g;

        public final float f10348h;

        public final int f10349i;

        public final int f10350j;

        public final boolean f10351k;

        public final boolean f10352l;

        public final int f10353m;

        public final int f10354n;

        public final int f10355o;

        public final boolean f10356p;

        public final int f10357q;

        public final int f10358r;

        public final int f10359s;

        public final int f10360t;

        public m(int i10, int i11, int i12, int i13, int i14, int i15, int i16, float f10, int i17, int i18, boolean z10, boolean z11, int i19, int i20, int i21, boolean z12, int i22, int i23, int i24, int i25) {
            this.f10341a = i10;
            this.f10342b = i11;
            this.f10343c = i12;
            this.f10344d = i13;
            this.f10345e = i14;
            this.f10346f = i15;
            this.f10347g = i16;
            this.f10348h = f10;
            this.f10349i = i17;
            this.f10350j = i18;
            this.f10351k = z10;
            this.f10352l = z11;
            this.f10353m = i19;
            this.f10354n = i20;
            this.f10355o = i21;
            this.f10356p = z12;
            this.f10357q = i22;
            this.f10358r = i23;
            this.f10359s = i24;
            this.f10360t = i25;
        }
    }

    public static l A(byte[] bArr, int i10, int i11) {
        return B(bArr, i10 + 1, i11);
    }

    public static l B(byte[] bArr, int i10, int i11) {
        androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, i10, i11);
        int i12 = hVar.i();
        int i13 = hVar.i();
        hVar.l();
        return new l(i12, i13, hVar.e());
    }

    public static m C(byte[] bArr, int i10, int i11) {
        return D(bArr, i10 + 1, i11);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:105:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:106:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:107:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:110:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:113:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:116:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:119:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:122:0x0200  */
    /* JADX WARN: Code duplicated, block: B:125:0x020c  */
    /* JADX WARN: Code duplicated, block: B:127:0x022b  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:54:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:56:0x010d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0112 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x0114  */
    /* JADX WARN: Code duplicated, block: B:59:0x0117  */
    /* JADX WARN: Code duplicated, block: B:61:0x011b  */
    /* JADX WARN: Code duplicated, block: B:62:0x011d  */
    /* JADX WARN: Code duplicated, block: B:82:0x0158  */
    /* JADX WARN: Code duplicated, block: B:84:0x015e  */
    /* JADX WARN: Code duplicated, block: B:86:0x0168  */
    /* JADX WARN: Code duplicated, block: B:90:0x0179  */
    /* JADX WARN: Code duplicated, block: B:92:0x017e  */
    /* JADX WARN: Code duplicated, block: B:93:0x0181  */
    /* JADX WARN: Code duplicated, block: B:96:0x019d  */
    /* JADX WARN: Code duplicated, block: B:99:0x01a6  */
    /* JADX WARN: Instruction removed from duplicated block: B:93:0x0181, please report this as an issue */
    public static m D(byte[] bArr, int i10, int i11) {
        int i12;
        boolean zE;
        int i13;
        int i14;
        int i15;
        boolean z10;
        boolean zE2;
        int i16;
        int i17;
        int i18;
        int iJ;
        float f10;
        int i19;
        int i20;
        float f11;
        int i21;
        int iK;
        int i22;
        boolean zE3;
        boolean zE4;
        int iF;
        float[] fArr;
        int iF2;
        int iF3;
        int i23;
        int i24;
        int i25;
        androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, i10, i11);
        int iF4 = hVar.f(8);
        int iF5 = hVar.f(8);
        int iF6 = hVar.f(8);
        int i26 = hVar.i();
        if (iF4 == 100 || iF4 == 110 || iF4 == 122 || iF4 == 244 || iF4 == 44 || iF4 == 83 || iF4 == 86 || iF4 == 118 || iF4 == 128 || iF4 == 138) {
            i12 = hVar.i();
            zE = i12 == 3 ? hVar.e() : false;
            i13 = hVar.i();
            i14 = hVar.i();
            hVar.l();
            if (hVar.e()) {
                int i27 = i12 == 3 ? 12 : 8;
                int i28 = 0;
                while (i28 < i27) {
                    if (hVar.e()) {
                        J(hVar, i28 < 6 ? 16 : 64);
                    }
                    i28++;
                }
            }
        } else {
            i12 = 1;
            zE = false;
            i13 = 0;
            i14 = 0;
        }
        int i29 = hVar.i() + 4;
        int i30 = hVar.i();
        if (i30 != 0) {
            if (i30 == 1) {
                boolean zE5 = hVar.e();
                hVar.h();
                hVar.h();
                iF4 = iF4;
                long jI = hVar.i();
                for (int i31 = 0; i31 < jI; i31++) {
                    hVar.i();
                }
                z10 = zE5;
                i15 = 0;
            } else {
                i15 = 0;
            }
            int i32 = hVar.i();
            hVar.l();
            int i33 = hVar.i() + 1;
            int i34 = hVar.i() + 1;
            zE2 = hVar.e();
            int i35 = (2 - (zE2 ? 1 : 0)) * i34;
            if (!zE2) {
                hVar.l();
            }
            hVar.l();
            i16 = i33 * 16;
            i17 = i35 * 16;
            if (hVar.e()) {
                int i36 = hVar.i();
                int i37 = hVar.i();
                int i38 = hVar.i();
                int i39 = hVar.i();
                if (i12 == 0) {
                    i25 = 2 - (zE2 ? 1 : 0);
                    i23 = 1;
                } else {
                    if (i12 == 3) {
                        i23 = 1;
                    } else {
                        i23 = 2;
                    }
                    if (i12 == 1) {
                        i24 = 2;
                    } else {
                        i24 = 1;
                    }
                    i25 = i24 * (2 - (zE2 ? 1 : 0));
                }
                i16 -= (i36 + i37) * i23;
                i17 -= (i38 + i39) * i25;
            }
            int i40 = i17;
            int i41 = iF4;
            int i42 = i16;
            i18 = ((i41 != 44 || i41 == 86 || i41 == 100 || i41 == 110 || i41 == 122 || i41 == 244) && (iF5 & 16) != 0) ? 0 : 16;
            iJ = -1;
            f10 = 1.0f;
            if (hVar.e()) {
                if (hVar.e()) {
                    iF = hVar.f(8);
                    if (iF == 255) {
                        iF2 = hVar.f(16);
                        iF3 = hVar.f(16);
                        if (iF2 != 0 && iF3 != 0) {
                            f10 = iF2 / iF3;
                        }
                    } else {
                        fArr = f10282b;
                        if (iF < fArr.length) {
                            f10 = fArr[iF];
                        } else {
                            u.h("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iF);
                        }
                    }
                }
                if (hVar.e()) {
                    hVar.l();
                }
                if (hVar.e()) {
                    hVar.m(3);
                    i22 = hVar.e() ? 1 : 2;
                    if (hVar.e()) {
                        int iF7 = hVar.f(8);
                        int iF8 = hVar.f(8);
                        hVar.m(8);
                        iJ = androidx.media3.common.i.j(iF7);
                        iK = androidx.media3.common.i.k(iF8);
                    } else {
                        iK = -1;
                    }
                } else {
                    iK = -1;
                    i22 = -1;
                }
                if (hVar.e()) {
                    hVar.i();
                    hVar.i();
                }
                if (hVar.e()) {
                    hVar.m(65);
                }
                zE3 = hVar.e();
                if (zE3) {
                    I(hVar);
                }
                zE4 = hVar.e();
                if (zE4) {
                    I(hVar);
                }
                if (zE3 || zE4) {
                    hVar.l();
                }
                hVar.l();
                if (hVar.e()) {
                    hVar.l();
                    hVar.i();
                    hVar.i();
                    hVar.i();
                    hVar.i();
                    i18 = hVar.i();
                    hVar.i();
                }
                i19 = i18;
                i20 = iK;
                f11 = f10;
                i21 = i22;
            } else {
                i19 = i18;
                i20 = -1;
                f11 = 1.0f;
                i21 = -1;
            }
            return new m(i41, iF5, iF6, i26, i32, i42, i40, f11, i13, i14, zE, zE2, i29, i30, i15, z10, iJ, i21, i20, i19);
        }
        i15 = hVar.i() + 4;
        z10 = false;
        int i310 = hVar.i();
        hVar.l();
        int i311 = hVar.i() + 1;
        int i312 = hVar.i() + 1;
        zE2 = hVar.e();
        int i313 = (2 - (zE2 ? 1 : 0)) * i312;
        if (!zE2) {
            hVar.l();
        }
        hVar.l();
        i16 = i311 * 16;
        i17 = i313 * 16;
        if (hVar.e()) {
            int i314 = hVar.i();
            int i315 = hVar.i();
            int i316 = hVar.i();
            int i317 = hVar.i();
            if (i12 == 0) {
                i25 = 2 - (zE2 ? 1 : 0);
                i23 = 1;
            } else {
                if (i12 == 3) {
                    i23 = 1;
                } else {
                    i23 = 2;
                }
                if (i12 == 1) {
                    i24 = 2;
                } else {
                    i24 = 1;
                }
                i25 = i24 * (2 - (zE2 ? 1 : 0));
            }
            i16 -= (i314 + i315) * i23;
            i17 -= (i316 + i317) * i25;
        }
        int i43 = i17;
        int i44 = iF4;
        int i45 = i16;
        if (i44 != 44) {
        }
        iJ = -1;
        f10 = 1.0f;
        if (hVar.e()) {
            if (hVar.e()) {
                iF = hVar.f(8);
                if (iF == 255) {
                    iF2 = hVar.f(16);
                    iF3 = hVar.f(16);
                    if (iF2 != 0) {
                        f10 = iF2 / iF3;
                    }
                } else {
                    fArr = f10282b;
                    if (iF < fArr.length) {
                        f10 = fArr[iF];
                    } else {
                        u.h("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iF);
                    }
                }
            }
            if (hVar.e()) {
                hVar.l();
            }
            if (hVar.e()) {
                hVar.m(3);
                if (hVar.e()) {
                }
                if (hVar.e()) {
                    int iF9 = hVar.f(8);
                    int iF10 = hVar.f(8);
                    hVar.m(8);
                    iJ = androidx.media3.common.i.j(iF9);
                    iK = androidx.media3.common.i.k(iF10);
                } else {
                    iK = -1;
                }
            } else {
                iK = -1;
                i22 = -1;
            }
            if (hVar.e()) {
                hVar.i();
                hVar.i();
            }
            if (hVar.e()) {
                hVar.m(65);
            }
            zE3 = hVar.e();
            if (zE3) {
                I(hVar);
            }
            zE4 = hVar.e();
            if (zE4) {
                I(hVar);
            }
            if (zE3) {
                hVar.l();
            } else {
                hVar.l();
            }
            hVar.l();
            if (hVar.e()) {
                hVar.l();
                hVar.i();
                hVar.i();
                hVar.i();
                hVar.i();
                i18 = hVar.i();
                hVar.i();
            }
            i19 = i18;
            i20 = iK;
            f11 = f10;
            i21 = i22;
        } else {
            i19 = i18;
            i20 = -1;
            f11 = 1.0f;
            i21 = -1;
        }
        return new m(i44, iF5, iF6, i26, i310, i45, i43, f11, i13, i14, zE, zE2, i29, i30, i15, z10, iJ, i21, i20, i19);
    }

    private static void E(androidx.media3.container.h hVar, int i10, int[] iArr, int[] iArr2, boolean[][] zArr) {
        for (int i11 = 1; i11 < i10; i11++) {
            boolean zE = hVar.e();
            int i12 = 0;
            while (i12 < iArr[i11]) {
                if ((i12 <= 0 || !zE) ? i12 == 0 : hVar.e()) {
                    for (int i13 = 0; i13 < iArr2[i11]; i13++) {
                        if (zArr[i11][i13]) {
                            hVar.i();
                        }
                    }
                    hVar.i();
                    hVar.i();
                }
                i12++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [int] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    private static void F(androidx.media3.container.h hVar, boolean z10, int i10) {
        ?? r10;
        ?? r11;
        boolean zE;
        boolean zE2;
        if (z10) {
            boolean zE3 = hVar.e();
            boolean zE4 = hVar.e();
            if (zE3 || zE4) {
                zE = hVar.e();
                if (zE) {
                    hVar.m(19);
                }
                hVar.m(8);
                if (zE) {
                    hVar.m(4);
                }
                hVar.m(15);
                r11 = zE4;
                r10 = zE3;
            } else {
                zE = false;
                r11 = zE4;
                r10 = zE3;
            }
        } else {
            r10 = 0;
            r11 = 0;
            zE = false;
        }
        for (int i11 = 0; i11 <= i10; i11++) {
            boolean zE5 = hVar.e();
            if (!zE5) {
                zE5 = hVar.e();
            }
            if (zE5) {
                hVar.i();
                zE2 = false;
            } else {
                zE2 = hVar.e();
            }
            int i12 = !zE2 ? hVar.i() : 0;
            int i13 = r10 + r11;
            for (int i14 = 0; i14 < i13; i14++) {
                for (int i15 = 0; i15 <= i12; i15++) {
                    hVar.i();
                    hVar.i();
                    if (zE) {
                        hVar.i();
                        hVar.i();
                    }
                    hVar.l();
                }
            }
        }
    }

    private static void G(androidx.media3.container.h hVar) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = 0;
            while (i11 < 6) {
                int i12 = 1;
                if (hVar.e()) {
                    int iMin = Math.min(64, 1 << ((i10 << 1) + 4));
                    if (i10 > 1) {
                        hVar.h();
                    }
                    for (int i13 = 0; i13 < iMin; i13++) {
                        hVar.h();
                    }
                } else {
                    hVar.i();
                }
                if (i10 == 3) {
                    i12 = 3;
                }
                i11 += i12;
            }
        }
    }

    private static void H(androidx.media3.container.h hVar) {
        int i10 = hVar.i();
        int[] iArr = new int[0];
        int[] iArrCopyOf = new int[0];
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            if (i13 == 0 || !hVar.e()) {
                int i14 = hVar.i();
                int i15 = hVar.i();
                int[] iArr2 = new int[i14];
                int i16 = 0;
                while (i16 < i14) {
                    iArr2[i16] = (i16 > 0 ? iArr2[i16 - 1] : 0) - (hVar.i() + 1);
                    hVar.l();
                    i16++;
                }
                int[] iArr3 = new int[i15];
                int i17 = 0;
                while (i17 < i15) {
                    iArr3[i17] = (i17 > 0 ? iArr3[i17 - 1] : 0) + hVar.i() + 1;
                    hVar.l();
                    i17++;
                }
                i11 = i14;
                iArr = iArr2;
                i12 = i15;
                iArrCopyOf = iArr3;
            } else {
                int i18 = i11 + i12;
                int i19 = (1 - ((hVar.e() ? 1 : 0) * 2)) * (hVar.i() + 1);
                int i20 = i18 + 1;
                boolean[] zArr = new boolean[i20];
                for (int i21 = 0; i21 <= i18; i21++) {
                    if (hVar.e()) {
                        zArr[i21] = true;
                    } else {
                        zArr[i21] = hVar.e();
                    }
                }
                int[] iArr4 = new int[i20];
                int[] iArr5 = new int[i20];
                int i22 = 0;
                for (int i23 = i12 - 1; i23 >= 0; i23--) {
                    int i24 = iArrCopyOf[i23] + i19;
                    if (i24 < 0 && zArr[i11 + i23]) {
                        iArr4[i22] = i24;
                        i22++;
                    }
                }
                if (i19 < 0 && zArr[i18]) {
                    iArr4[i22] = i19;
                    i22++;
                }
                for (int i25 = 0; i25 < i11; i25++) {
                    int i26 = iArr[i25] + i19;
                    if (i26 < 0 && zArr[i25]) {
                        iArr4[i22] = i26;
                        i22++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr4, i22);
                int i27 = 0;
                for (int i28 = i11 - 1; i28 >= 0; i28--) {
                    int i29 = iArr[i28] + i19;
                    if (i29 > 0 && zArr[i28]) {
                        iArr5[i27] = i29;
                        i27++;
                    }
                }
                if (i19 > 0 && zArr[i18]) {
                    iArr5[i27] = i19;
                    i27++;
                }
                for (int i30 = 0; i30 < i12; i30++) {
                    int i31 = iArrCopyOf[i30] + i19;
                    if (i31 > 0 && zArr[i11 + i30]) {
                        iArr5[i27] = i31;
                        i27++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr5, i27);
                iArr = iArrCopyOf2;
                i11 = i22;
                i12 = i27;
            }
        }
    }

    private static void I(androidx.media3.container.h hVar) {
        int i10 = hVar.i() + 1;
        hVar.m(8);
        for (int i11 = 0; i11 < i10; i11++) {
            hVar.i();
            hVar.i();
            hVar.l();
        }
        hVar.m(20);
    }

    private static void J(androidx.media3.container.h hVar, int i10) {
        int iH = 8;
        int i11 = 8;
        for (int i12 = 0; i12 < i10; i12++) {
            if (iH != 0) {
                iH = ((hVar.h() + i11) + 256) % 256;
            }
            if (iH != 0) {
                i11 = iH;
            }
        }
    }

    private static void K(androidx.media3.container.h hVar, int i10, boolean[][] zArr) {
        int i11 = hVar.i() + 2;
        if (hVar.e()) {
            hVar.m(i11);
        } else {
            for (int i12 = 1; i12 < i10; i12++) {
                for (int i13 = 0; i13 < i12; i13++) {
                    if (zArr[i12][i13]) {
                        hVar.m(i11);
                    }
                }
            }
        }
        int i14 = hVar.i();
        for (int i15 = 1; i15 <= i14; i15++) {
            hVar.m(8);
        }
    }

    public static int L(byte[] bArr, int i10) {
        int i11;
        synchronized (f10283c) {
            int iG = 0;
            int i12 = 0;
            while (iG < i10) {
                try {
                    iG = g(bArr, iG, i10);
                    if (iG < i10) {
                        int[] iArr = f10284d;
                        if (iArr.length <= i12) {
                            f10284d = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        f10284d[i12] = iG;
                        iG += 3;
                        i12++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            i11 = i10 - i12;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < i12; i15++) {
                int i16 = f10284d[i15] - i14;
                System.arraycopy(bArr, i14, bArr, i13, i16);
                int i17 = i13 + i16;
                int i18 = i17 + 1;
                bArr[i17] = 0;
                i13 = i17 + 2;
                bArr[i18] = 0;
                i14 += i16 + 3;
            }
            System.arraycopy(bArr, i14, bArr, i13, i11 - i13);
        }
        return i11;
    }

    private static int a(int i10, int i11, int i12, int i13) {
        return i10 - ((i11 == 1 ? 2 : 1) * (i12 + i13));
    }

    private static int b(int i10, int i11, int i12, int i13) {
        int i14 = 2;
        if (i11 != 1 && i11 != 2) {
            i14 = 1;
        }
        return i10 - (i14 * (i12 + i13));
    }

    public static void c(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    private static String d(androidx.media3.container.h hVar) {
        hVar.m(4);
        int iF = hVar.f(3);
        hVar.l();
        c cVarQ = q(hVar, true, iF, null);
        return androidx.media3.common.util.j.f(cVarQ.f10290a, cVarQ.f10291b, cVarQ.f10292c, cVarQ.f10293d, cVarQ.f10294e, cVarQ.f10295f);
    }

    public static int e(byte[] bArr, int i10, int i11, boolean[] zArr) {
        int i12 = i11 - i10;
        androidx.media3.common.util.a.g(i12 >= 0);
        if (i12 == 0) {
            return i11;
        }
        if (zArr[0]) {
            c(zArr);
            return i10 - 3;
        }
        if (i12 > 1 && zArr[1] && bArr[i10] == 1) {
            c(zArr);
            return i10 - 2;
        }
        if (i12 > 2 && zArr[2] && bArr[i10] == 0 && bArr[i10 + 1] == 1) {
            c(zArr);
            return i10 - 1;
        }
        int i13 = i11 - 1;
        int i14 = i10 + 2;
        while (i14 < i13) {
            byte b10 = bArr[i14];
            if ((b10 & 254) == 0) {
                int i15 = i14 - 2;
                if (bArr[i15] == 0 && bArr[i14 - 1] == 0 && b10 == 1) {
                    c(zArr);
                    return i15;
                }
                i14 -= 2;
            }
            i14 += 3;
        }
        zArr[0] = i12 <= 2 ? !(i12 != 2 ? !(zArr[1] && bArr[i13] == 1) : !(zArr[2] && bArr[i11 + (-2)] == 0 && bArr[i13] == 1)) : bArr[i11 + (-3)] == 0 && bArr[i11 + (-2)] == 0 && bArr[i13] == 1;
        zArr[1] = i12 <= 1 ? zArr[2] && bArr[i13] == 0 : bArr[i11 + (-2)] == 0 && bArr[i13] == 0;
        zArr[2] = bArr[i13] == 0;
        return i11;
    }

    private static ImmutableList f(byte[] bArr) {
        boolean[] zArr = new boolean[3];
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        int i10 = 0;
        while (i10 < bArr.length) {
            int iE = e(bArr, i10, bArr.length, zArr);
            if (iE != bArr.length) {
                aVarBuilder.a(Integer.valueOf(iE));
            }
            i10 = iE + 3;
        }
        return aVarBuilder.e();
    }

    private static int g(byte[] bArr, int i10, int i11) {
        while (i10 < i11 - 2) {
            if (bArr[i10] == 0 && bArr[i10 + 1] == 0 && bArr[i10 + 2] == 3) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String h(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            byte[] bArr = (byte[]) list.get(i10);
            int length = bArr.length;
            if (length > 3) {
                ImmutableList immutableListF = f(bArr);
                for (int i11 = 0; i11 < immutableListF.size(); i11++) {
                    if (((Integer) immutableListF.get(i11)).intValue() + 3 < length) {
                        androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, ((Integer) immutableListF.get(i11)).intValue() + 3, length);
                        b bVarP = p(hVar);
                        if (bVarP.f10287a == 33 && bVarP.f10288b == 0) {
                            return d(hVar);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static int i(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 126) >> 1;
    }

    public static int j(byte[] bArr, int i10) {
        return bArr[i10 + 3] & 31;
    }

    public static boolean k(byte[] bArr, int i10, int i11, r rVar) {
        if (Objects.equals(rVar.f9849o, MimeTypes.VIDEO_H264)) {
            return l(bArr[i10]);
        }
        if (Objects.equals(rVar.f9849o, MimeTypes.VIDEO_H265)) {
            return m(bArr, i10, i11, rVar);
        }
        return true;
    }

    public static boolean l(byte b10) {
        if (((b10 & 96) >> 5) != 0) {
            return true;
        }
        int i10 = b10 & 31;
        return (i10 == 1 || i10 == 9 || i10 == 14) ? false : true;
    }

    private static boolean m(byte[] bArr, int i10, int i11, r rVar) {
        b bVarP = p(new androidx.media3.container.h(bArr, i10, i11 + i10));
        int i12 = bVarP.f10287a;
        if (i12 == 35) {
            return false;
        }
        return (i12 <= 14 && i12 % 2 == 0 && bVarP.f10289c == rVar.D - 1) ? false : true;
    }

    public static boolean n(r rVar, byte b10) {
        if ((Objects.equals(rVar.f9849o, MimeTypes.VIDEO_H264) || y.b(rVar.f9845k, MimeTypes.VIDEO_H264)) && (b10 & 31) == 6) {
            return true;
        }
        return (Objects.equals(rVar.f9849o, MimeTypes.VIDEO_H265) || y.b(rVar.f9845k, MimeTypes.VIDEO_H265)) && ((b10 & 126) >> 1) == 39;
    }

    public static int o(r rVar) {
        if (Objects.equals(rVar.f9849o, MimeTypes.VIDEO_H264)) {
            return 1;
        }
        return (Objects.equals(rVar.f9849o, MimeTypes.VIDEO_H265) || y.b(rVar.f9845k, MimeTypes.VIDEO_H265)) ? 2 : 0;
    }

    private static b p(androidx.media3.container.h hVar) {
        hVar.l();
        return new b(hVar.f(6), hVar.f(6), hVar.f(3) - 1);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005e  */
    /* JADX WARN: Code duplicated, block: B:23:0x0064  */
    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:30:0x0076  */
    /* JADX WARN: Code duplicated, block: B:39:0x006e A[SYNTHETIC] */
    private static c q(androidx.media3.container.h hVar, boolean z10, int i10, c cVar) {
        int[] iArr;
        int i11;
        boolean z11;
        int i12;
        int i13;
        boolean zE;
        int iF;
        int i14;
        int i15;
        int[] iArr2 = new int[6];
        if (!z10) {
            if (cVar != null) {
                int i16 = cVar.f10290a;
                zE = cVar.f10291b;
                iF = cVar.f10292c;
                i14 = cVar.f10293d;
                iArr2 = cVar.f10294e;
                i11 = i16;
            } else {
                iArr = iArr2;
                i11 = 0;
                z11 = false;
                i12 = 0;
                i13 = 0;
            }
            int iF2 = hVar.f(8);
            i15 = 0;
            for (int i17 = 0; i17 < i10; i17++) {
                if (hVar.e()) {
                    i15 += 88;
                }
                if (hVar.e()) {
                    i15 += 8;
                }
            }
            hVar.m(i15);
            if (i10 > 0) {
                hVar.m((8 - i10) * 2);
            }
            return new c(i11, z11, i12, i13, iArr, iF2);
        }
        int iF3 = hVar.f(2);
        zE = hVar.e();
        iF = hVar.f(5);
        i14 = 0;
        for (int i18 = 0; i18 < 32; i18++) {
            if (hVar.e()) {
                i14 |= 1 << i18;
            }
        }
        for (int i19 = 0; i19 < 6; i19++) {
            iArr2[i19] = hVar.f(8);
        }
        i11 = iF3;
        iArr = iArr2;
        z11 = zE;
        i12 = iF;
        i13 = i14;
        int iF4 = hVar.f(8);
        i15 = 0;
        while (i17 < i10) {
            if (hVar.e()) {
                i15 += 88;
            }
            if (hVar.e()) {
                i15 += 8;
            }
        }
        hVar.m(i15);
        if (i10 > 0) {
            hVar.m((8 - i10) * 2);
        }
        return new c(i11, z11, i12, i13, iArr, iF4);
    }

    private static e r(androidx.media3.container.h hVar) {
        int i10;
        int i11;
        int iF;
        int iF2 = hVar.f(16);
        int iF3 = hVar.f(16);
        if (hVar.e()) {
            int iF4 = hVar.f(2);
            if (iF4 == 3) {
                hVar.l();
            }
            int iF5 = hVar.f(4);
            iF = hVar.f(4);
            i11 = iF5;
            i10 = iF4;
        } else {
            i10 = 0;
            i11 = 0;
            iF = 0;
        }
        if (hVar.e()) {
            int i12 = hVar.i();
            int i13 = hVar.i();
            int i14 = hVar.i();
            int i15 = hVar.i();
            iF2 = b(iF2, i10, i12, i13);
            iF3 = a(iF3, i10, i14, i15);
        }
        return new e(i10, i11, iF, iF2, iF3);
    }

    private static f s(androidx.media3.container.h hVar, int i10) {
        int i11 = hVar.i();
        int i12 = i11 + 1;
        ImmutableList.a aVarBuilderWithExpectedSize = ImmutableList.builderWithExpectedSize(i12);
        int[] iArr = new int[i10];
        for (int i13 = 0; i13 < i12; i13++) {
            aVarBuilderWithExpectedSize.a(r(hVar));
        }
        int i14 = 1;
        if (i12 <= 1 || !hVar.e()) {
            while (i14 < i10) {
                iArr[i14] = Math.min(i14, i11);
                i14++;
            }
        } else {
            int iD = com.google.common.math.b.d(i12, RoundingMode.CEILING);
            while (i14 < i10) {
                iArr[i14] = hVar.f(iD);
                i14++;
            }
        }
        return new f(aVarBuilderWithExpectedSize.e(), iArr);
    }

    public static C0084g t(byte[] bArr, int i10, int i11) {
        byte b10;
        int i12 = i10 + 2;
        do {
            i11--;
            b10 = bArr[i11];
            if (b10 != 0) {
                break;
            }
        } while (i11 > i12);
        if (b10 != 0 && i11 > i12) {
            androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, i12, i11 + 1);
            while (hVar.c(16)) {
                int iF = hVar.f(8);
                int i13 = 0;
                while (iF == 255) {
                    i13 += 255;
                    iF = hVar.f(8);
                }
                int i14 = i13 + iF;
                int iF2 = hVar.f(8);
                int i15 = 0;
                while (iF2 == 255) {
                    i15 += 255;
                    iF2 = hVar.f(8);
                }
                int i16 = i15 + iF2;
                if (i16 == 0 || !hVar.c(i16)) {
                    break;
                }
                if (i14 == 176) {
                    int i17 = hVar.i();
                    boolean zE = hVar.e();
                    int i18 = zE ? hVar.i() : 0;
                    int i19 = hVar.i();
                    int i20 = -1;
                    int i21 = -1;
                    int iF3 = -1;
                    int iF4 = -1;
                    int iF5 = -1;
                    int iF6 = -1;
                    for (int i22 = 0; i22 <= i19; i22++) {
                        i20 = hVar.i();
                        i21 = hVar.i();
                        iF3 = hVar.f(6);
                        if (iF3 == 63) {
                            return null;
                        }
                        iF4 = hVar.f(iF3 == 0 ? Math.max(0, i17 - 30) : Math.max(0, (iF3 + i17) - 31));
                        if (zE) {
                            iF5 = hVar.f(6);
                            if (iF5 == 63) {
                                return null;
                            }
                            iF6 = hVar.f(iF5 == 0 ? Math.max(0, i18 - 30) : Math.max(0, (iF5 + i18) - 31));
                        }
                        if (hVar.e()) {
                            hVar.m(10);
                        }
                    }
                    return new C0084g(i17, i18, i19 + 1, i20, i21, iF3, iF4, iF5, iF6);
                }
            }
        }
        return null;
    }

    public static h u(byte[] bArr, int i10, int i11, k kVar) {
        return v(bArr, i10 + 2, i11, p(new androidx.media3.container.h(bArr, i10, i11)), kVar);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00ac  */
    /* JADX WARN: Multi-variable type inference failed */
    public static h v(byte[] bArr, int i10, int i11, b bVar, k kVar) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int iMax;
        float f10;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        j jVar;
        int i22;
        int iJ;
        int iK;
        f fVar;
        androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, i10, i11);
        hVar.m(4);
        int iF = hVar.f(3);
        boolean z10 = bVar.f10288b != 0 && iF == 7;
        int i23 = (kVar == null || kVar.f10334b.isEmpty()) ? 0 : ((a) kVar.f10334b.get(Math.min(bVar.f10288b, kVar.f10334b.size() - 1))).f10285a;
        c cVarQ = null;
        if (!z10) {
            hVar.l();
            cVarQ = q(hVar, true, iF, null);
        } else if (kVar != null) {
            d dVar = kVar.f10335c;
            int i24 = dVar.f10297b[i23];
            if (dVar.f10296a.size() > i24) {
                cVarQ = (c) kVar.f10335c.f10296a.get(i24);
            }
        }
        int i25 = hVar.i();
        if (z10) {
            int iF2 = hVar.e() ? hVar.f(8) : -1;
            if (kVar == null || (fVar = kVar.f10336d) == null) {
                i15 = 0;
                i16 = 0;
                i12 = 0;
                i13 = 0;
                i14 = 0;
            } else {
                if (iF2 == -1) {
                    iF2 = fVar.f10304b[i23];
                }
                if (iF2 == -1 || fVar.f10303a.size() <= iF2) {
                    i15 = 0;
                    i16 = 0;
                    i12 = 0;
                    i13 = 0;
                    i14 = 0;
                } else {
                    e eVar = (e) kVar.f10336d.f10303a.get(iF2);
                    i13 = eVar.f10298a;
                    i14 = eVar.f10301d;
                    i15 = eVar.f10302e;
                    i16 = eVar.f10299b;
                    i12 = eVar.f10300c;
                }
            }
        } else {
            int i26 = hVar.i();
            if (i26 == 3) {
                hVar.l();
            }
            int i27 = hVar.i();
            int i28 = hVar.i();
            if (hVar.e()) {
                int i29 = hVar.i();
                int i30 = hVar.i();
                int i31 = hVar.i();
                int i32 = hVar.i();
                i27 = b(i27, i26, i29, i30);
                i28 = a(i28, i26, i31, i32);
            }
            int i33 = hVar.i();
            i12 = hVar.i();
            i13 = i26;
            i14 = i27;
            i15 = i28;
            i16 = i33;
        }
        int i34 = hVar.i();
        if (z10) {
            iMax = -1;
        } else {
            iMax = -1;
            for (int i35 = hVar.e() ? 0 : iF; i35 <= iF; i35++) {
                hVar.i();
                iMax = Math.max(hVar.i(), iMax);
                hVar.i();
            }
        }
        hVar.i();
        hVar.i();
        hVar.i();
        hVar.i();
        hVar.i();
        hVar.i();
        if (hVar.e()) {
            if (z10 ? hVar.e() : false) {
                hVar.m(6);
            } else if (hVar.e()) {
                G(hVar);
            }
        }
        int i36 = 2;
        hVar.m(2);
        if (hVar.e()) {
            hVar.m(8);
            hVar.i();
            hVar.i();
            hVar.l();
        }
        H(hVar);
        if (hVar.e()) {
            int i37 = hVar.i();
            int i38 = 0;
            while (i38 < i37) {
                hVar.m(i34 + 5);
                i38++;
                i36 = 2;
            }
        }
        hVar.m(i36);
        float f11 = 1.0f;
        if (hVar.e()) {
            if (hVar.e()) {
                int iF3 = hVar.f(8);
                if (iF3 == 255) {
                    int iF4 = hVar.f(16);
                    int iF5 = hVar.f(16);
                    if (iF4 != 0 && iF5 != 0) {
                        f11 = iF4 / iF5;
                    }
                } else {
                    float[] fArr = f10282b;
                    if (iF3 < fArr.length) {
                        f11 = fArr[iF3];
                    } else {
                        u.h("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iF3);
                    }
                }
            }
            if (hVar.e()) {
                hVar.l();
            }
            if (hVar.e()) {
                hVar.m(3);
                i21 = hVar.e() ? 1 : 2;
                if (hVar.e()) {
                    int iF6 = hVar.f(8);
                    int iF7 = hVar.f(8);
                    hVar.m(8);
                    iJ = androidx.media3.common.i.j(iF6);
                    iK = androidx.media3.common.i.k(iF7);
                } else {
                    iJ = -1;
                    iK = -1;
                }
            } else if (kVar == null || (jVar = kVar.f10337e) == null || jVar.f10331a.size() <= (i22 = jVar.f10332b[i23])) {
                i21 = -1;
                iJ = -1;
                iK = -1;
            } else {
                i iVar = (i) kVar.f10337e.f10331a.get(i22);
                iJ = iVar.f10328a;
                int i39 = iVar.f10329b;
                iK = iVar.f10330c;
                i21 = i39;
            }
            if (hVar.e()) {
                hVar.i();
                hVar.i();
            }
            hVar.l();
            if (hVar.e()) {
                i15 *= 2;
            }
            i19 = i21;
            i18 = iJ;
            i20 = iK;
            f10 = f11;
            i17 = i15;
        } else {
            f10 = 1.0f;
            i17 = i15;
            i18 = -1;
            i19 = -1;
            i20 = -1;
        }
        return new h(bVar, iF, cVarQ, i13, i16, i12, i25, i14, i17, f10, iMax, i18, i19, i20);
    }

    private static i w(androidx.media3.container.h hVar) {
        hVar.m(3);
        int i10 = hVar.e() ? 1 : 2;
        int iJ = androidx.media3.common.i.j(hVar.f(8));
        int iK = androidx.media3.common.i.k(hVar.f(8));
        hVar.m(8);
        return new i(iJ, i10, iK);
    }

    private static j x(androidx.media3.container.h hVar, int i10, int i11, int[] iArr) {
        if (!hVar.e() ? hVar.e() : true) {
            hVar.l();
        }
        boolean zE = hVar.e();
        boolean zE2 = hVar.e();
        if (zE || zE2) {
            for (int i12 = 0; i12 < i11; i12++) {
                for (int i13 = 0; i13 < iArr[i12]; i13++) {
                    boolean zE3 = zE ? hVar.e() : false;
                    boolean zE4 = zE2 ? hVar.e() : false;
                    if (zE3) {
                        hVar.m(32);
                    }
                    if (zE4) {
                        hVar.m(18);
                    }
                }
            }
        }
        boolean zE5 = hVar.e();
        int iF = zE5 ? hVar.f(4) + 1 : i10;
        ImmutableList.a aVarBuilderWithExpectedSize = ImmutableList.builderWithExpectedSize(iF);
        int[] iArr2 = new int[i10];
        for (int i14 = 0; i14 < iF; i14++) {
            aVarBuilderWithExpectedSize.a(w(hVar));
        }
        if (zE5 && iF > 1) {
            for (int i15 = 0; i15 < i10; i15++) {
                iArr2[i15] = hVar.f(4);
            }
        }
        return new j(aVarBuilderWithExpectedSize.e(), iArr2);
    }

    public static k y(byte[] bArr, int i10, int i11) {
        androidx.media3.container.h hVar = new androidx.media3.container.h(bArr, i10, i11);
        return z(hVar, p(hVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static k z(androidx.media3.container.h hVar, b bVar) {
        int[][] iArr;
        int i10;
        int i11;
        int i12;
        j jVarX;
        int i13;
        int i14;
        boolean[][] zArr;
        int i15;
        boolean[][] zArr2;
        int[] iArr2;
        int[] iArr3;
        hVar.m(4);
        boolean zE = hVar.e();
        boolean zE2 = hVar.e();
        int iF = hVar.f(6);
        int i16 = iF + 1;
        int iF2 = hVar.f(3);
        hVar.m(17);
        boolean z10 = true;
        c cVarQ = q(hVar, true, iF2, null);
        for (int i17 = hVar.e() ? 0 : iF2; i17 <= iF2; i17++) {
            hVar.i();
            hVar.i();
            hVar.i();
        }
        int iF3 = hVar.f(6);
        int i18 = hVar.i() + 1;
        d dVar = new d(ImmutableList.of(cVarQ), new int[1]);
        Object[] objArr = i16 >= 2 && i18 >= 2;
        Object[] objArr2 = zE && zE2;
        int i19 = iF3 + 1;
        Object[] objArr3 = i19 >= i16;
        if (objArr != true || objArr2 != true || objArr3 != true) {
            return new k(bVar, null, dVar, null, null);
        }
        int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i18, i19);
        int[] iArr5 = new int[i18];
        int[] iArr6 = new int[i18];
        iArr4[0][0] = 0;
        iArr5[0] = 1;
        iArr6[0] = 0;
        for (int i20 = 1; i20 < i18; i20++) {
            int i21 = 0;
            for (int i22 = 0; i22 <= iF3; i22++) {
                if (hVar.e()) {
                    iArr4[i20][i21] = i22;
                    iArr6[i20] = i22;
                    i21++;
                }
                iArr5[i20] = i21;
            }
        }
        if (hVar.e()) {
            hVar.m(64);
            if (hVar.e()) {
                hVar.i();
            }
            int i23 = hVar.i();
            int i24 = 0;
            while (i24 < i23) {
                hVar.i();
                if (i24 != 0 && !hVar.e()) {
                    z10 = false;
                }
                F(hVar, z10, iF2);
                i24++;
                z10 = true;
            }
        }
        if (!hVar.e()) {
            return new k(bVar, null, dVar, null, null);
        }
        hVar.b();
        c cVarQ2 = q(hVar, false, iF2, cVarQ);
        boolean zE3 = hVar.e();
        boolean[] zArr3 = new boolean[16];
        int i25 = 0;
        for (int i26 = 0; i26 < 16; i26++) {
            boolean zE4 = hVar.e();
            zArr3[i26] = zE4;
            if (zE4) {
                i25++;
            }
        }
        if (i25 == 0 || !zArr3[1]) {
            return new k(bVar, null, dVar, null, null);
        }
        int[] iArr7 = new int[i25];
        for (int i27 = 0; i27 < i25 - (zE3 ? 1 : 0); i27++) {
            iArr7[i27] = hVar.f(3);
        }
        int[] iArr8 = new int[i25 + 1];
        if (zE3) {
            int i28 = 1;
            while (i28 < i25) {
                int[][] iArr9 = iArr4;
                for (int i29 = 0; i29 < i28; i29++) {
                    iArr8[i28] = iArr8[i28] + iArr7[i29] + 1;
                }
                i28++;
                iArr4 = iArr9;
            }
            iArr = iArr4;
            iArr8[i25] = 6;
        } else {
            iArr = iArr4;
        }
        int[][] iArr10 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i16, i25);
        int[] iArr11 = new int[i16];
        iArr11[0] = 0;
        boolean zE5 = hVar.e();
        int i30 = 1;
        while (i30 < i16) {
            if (zE5) {
                iArr11[i30] = hVar.f(6);
            } else {
                iArr11[i30] = i30;
            }
            if (zE3) {
                iArr3 = iArr7;
                int i31 = 0;
                while (i31 < i25) {
                    int i32 = i31 + 1;
                    iArr10[i30][i31] = (iArr11[i30] & ((1 << iArr8[i32]) - 1)) >> iArr8[i31];
                    i31 = i32;
                }
            } else {
                int i33 = 0;
                while (i33 < i25) {
                    iArr10[i30][i33] = hVar.f(iArr7[i33] + 1);
                    i33++;
                    iArr7 = iArr7;
                }
                iArr3 = iArr7;
            }
            i30++;
            iF2 = iF2;
            iArr7 = iArr3;
        }
        int i34 = iF2;
        int[] iArr12 = new int[i19];
        int i35 = 1;
        for (int i36 = 0; i36 < i16; i36++) {
            iArr12[iArr11[i36]] = -1;
            int i37 = 0;
            for (int i38 = 0; i38 < 16; i38++) {
                if (zArr3[i38]) {
                    if (i38 == 1) {
                        iArr12[iArr11[i36]] = iArr10[i36][i37];
                    }
                    i37++;
                }
            }
            if (i36 > 0) {
                int i39 = 0;
                while (true) {
                    if (i39 >= i36) {
                        i35++;
                        break;
                    }
                    if (iArr12[iArr11[i36]] == iArr12[iArr11[i39]]) {
                        break;
                    }
                    i39++;
                }
            }
        }
        int iF4 = hVar.f(4);
        if (i35 < 2 || iF4 == 0) {
            return new k(bVar, null, dVar, null, null);
        }
        int[] iArr13 = new int[i35];
        for (int i40 = 0; i40 < i35; i40++) {
            iArr13[i40] = hVar.f(iF4);
        }
        int[] iArr14 = new int[i19];
        for (int i41 = 0; i41 < i16; i41++) {
            iArr14[Math.min(iArr11[i41], iF3)] = i41;
        }
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        int i42 = 0;
        while (i42 <= iF3) {
            int iMin = Math.min(iArr12[i42], i35 - 1);
            aVarBuilder.a(new a(iArr14[i42], iMin >= 0 ? iArr13[iMin] : -1));
            i42++;
            iArr12 = iArr12;
        }
        ImmutableList immutableListE = aVarBuilder.e();
        if (((a) immutableListE.get(0)).f10286b == -1) {
            return new k(bVar, null, dVar, null, null);
        }
        int i43 = 1;
        while (true) {
            if (i43 > iF3) {
                i10 = -1;
                i11 = -1;
                break;
            }
            i10 = -1;
            if (((a) immutableListE.get(i43)).f10286b != -1) {
                i11 = i43;
                break;
            }
            i43++;
        }
        if (i11 == i10) {
            return new k(bVar, null, dVar, null, null);
        }
        Class cls = Boolean.TYPE;
        boolean[][] zArr4 = (boolean[][]) Array.newInstance((Class<?>) cls, i16, i16);
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) cls, i16, i16);
        for (int i44 = 1; i44 < i16; i44++) {
            for (int i45 = 0; i45 < i44; i45++) {
                boolean[] zArr6 = zArr4[i44];
                boolean[] zArr7 = zArr5[i44];
                boolean zE6 = hVar.e();
                zArr7[i45] = zE6;
                zArr6[i45] = zE6;
            }
        }
        for (int i46 = 1; i46 < i16; i46++) {
            for (int i47 = 0; i47 < iF; i47++) {
                for (int i48 = 0; i48 < i46; i48++) {
                    boolean[] zArr8 = zArr5[i46];
                    if (zArr8[i48] && zArr5[i48][i47]) {
                        zArr8[i47] = true;
                        break;
                    }
                }
            }
        }
        int[] iArr15 = new int[i19];
        for (int i49 = 0; i49 < i16; i49++) {
            int i50 = 0;
            for (int i51 = 0; i51 < i49; i51++) {
                i50 += zArr4[i49][i51] ? 1 : 0;
            }
            iArr15[iArr11[i49]] = i50;
        }
        int i52 = 0;
        for (int i53 = 0; i53 < i16; i53++) {
            if (iArr15[iArr11[i53]] == 0) {
                i52++;
            }
        }
        if (i52 > 1) {
            return new k(bVar, null, dVar, null, null);
        }
        int[] iArr16 = new int[i16];
        int[] iArr17 = new int[i18];
        if (hVar.e()) {
            for (int i54 = 0; i54 < i16; i54++) {
                iArr16[i54] = hVar.f(3);
            }
            i12 = i34;
        } else {
            i12 = i34;
            Arrays.fill(iArr16, 0, i16, i12);
        }
        int i55 = 0;
        while (i55 < i18) {
            boolean[][] zArr9 = zArr5;
            int[] iArr18 = iArr15;
            int[] iArr19 = iArr11;
            int iMax = 0;
            for (int i56 = 0; i56 < iArr5[i55]; i56++) {
                iMax = Math.max(iMax, iArr16[((a) immutableListE.get(iArr[i55][i56])).f10285a]);
            }
            iArr17[i55] = iMax + 1;
            i55++;
            iArr11 = iArr19;
            iArr15 = iArr18;
            zArr5 = zArr9;
        }
        boolean[][] zArr10 = zArr5;
        int[] iArr20 = iArr15;
        int[] iArr21 = iArr11;
        if (hVar.e()) {
            int i57 = 0;
            while (i57 < iF) {
                int i58 = i57 + 1;
                for (int i59 = i58; i59 < i16; i59++) {
                    if (zArr4[i59][i57]) {
                        hVar.m(3);
                    }
                }
                i57 = i58;
            }
        }
        hVar.l();
        int i60 = hVar.i() + 1;
        ImmutableList.a aVarBuilder2 = ImmutableList.builder();
        aVarBuilder2.a(cVarQ);
        if (i60 > 1) {
            c cVarQ3 = cVarQ2;
            aVarBuilder2.a(cVarQ3);
            for (int i61 = 2; i61 < i60; i61++) {
                cVarQ3 = q(hVar, hVar.e(), i12, cVarQ3);
                aVarBuilder2.a(cVarQ3);
            }
        }
        ImmutableList immutableListE2 = aVarBuilder2.e();
        int i62 = hVar.i() + i18;
        if (i62 > i18) {
            return new k(bVar, null, dVar, null, null);
        }
        int iF5 = hVar.f(2);
        boolean[][] zArr11 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i62, i19);
        int[] iArr22 = new int[i62];
        int[] iArr23 = new int[i62];
        int i63 = 0;
        while (i63 < i18) {
            int i64 = i18;
            iArr22[i63] = 0;
            iArr23[i63] = iArr6[i63];
            if (iF5 == 0) {
                zArr2 = zArr4;
                iArr2 = iArr17;
                i15 = i16;
                Arrays.fill(zArr11[i63], 0, iArr5[i63], true);
                iArr22[i63] = iArr5[i63];
            } else {
                i15 = i16;
                zArr2 = zArr4;
                iArr2 = iArr17;
                if (iF5 == 1) {
                    int i65 = iArr6[i63];
                    for (int i66 = 0; i66 < iArr5[i63]; i66++) {
                        zArr11[i63][i66] = iArr[i63][i66] == i65;
                    }
                    iArr22[i63] = 1;
                } else {
                    zArr11[0][0] = true;
                    iArr22[0] = 1;
                }
                i63++;
                i18 = i64;
                zArr4 = zArr2;
                iArr17 = iArr2;
                i16 = i15;
            }
            i63++;
            i18 = i64;
            zArr4 = zArr2;
            iArr17 = iArr2;
            i16 = i15;
        }
        int i67 = i16;
        boolean[][] zArr12 = zArr4;
        int[] iArr24 = iArr17;
        int i68 = i18;
        int[] iArr25 = new int[i19];
        int i69 = 2;
        boolean[][] zArr13 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i62, i19);
        int i70 = 1;
        int i71 = 0;
        while (i70 < i62) {
            if (iF5 == i69) {
                for (int i72 = 0; i72 < iArr5[i70]; i72++) {
                    zArr11[i70][i72] = hVar.e();
                    int i73 = iArr22[i70];
                    boolean z11 = zArr11[i70][i72];
                    iArr22[i70] = i73 + (z11 ? 1 : 0);
                    if (z11) {
                        iArr23[i70] = iArr[i70][i72];
                    }
                }
            }
            if (i71 == 0 && iArr[i70][0] == 0 && zArr11[i70][0]) {
                for (int i74 = 1; i74 < iArr5[i70]; i74++) {
                    if (iArr[i70][i74] == i11 && zArr11[i70][i11]) {
                        i71 = i70;
                    }
                }
            }
            int i75 = 0;
            while (i75 < iArr5[i70]) {
                if (i60 > 1) {
                    zArr13[i70][i75] = zArr11[i70][i75];
                    zArr = zArr11;
                    i13 = i60;
                    int iD = com.google.common.math.b.d(i60, RoundingMode.CEILING);
                    if (zArr13[i70][i75]) {
                        i14 = i11;
                        break;
                    }
                    int i76 = ((a) immutableListE.get(iArr[i70][i75])).f10285a;
                    int i77 = 0;
                    while (true) {
                        if (i77 >= i75) {
                            i14 = i11;
                            break;
                        }
                        i14 = i11;
                        if (zArr10[i76][((a) immutableListE.get(iArr[i70][i77])).f10285a]) {
                            zArr13[i70][i75] = true;
                            break;
                        }
                        i77++;
                        i11 = i14;
                    }
                    if (zArr13[i70][i75]) {
                        if (i71 <= 0 || i70 != i71) {
                            hVar.m(iD);
                        } else {
                            iArr25[i75] = hVar.f(iD);
                        }
                    }
                } else {
                    i13 = i60;
                    i14 = i11;
                    zArr = zArr11;
                }
                i75++;
                zArr11 = zArr;
                i60 = i13;
                i11 = i14;
            }
            int i78 = i60;
            int i79 = i11;
            boolean[][] zArr14 = zArr11;
            if (iArr22[i70] == 1 && iArr20[iArr23[i70]] > 0) {
                hVar.l();
            }
            i70++;
            zArr11 = zArr14;
            i60 = i78;
            i11 = i79;
            i69 = 2;
        }
        if (i71 == 0) {
            return new k(bVar, null, dVar, null, null);
        }
        f fVarS = s(hVar, i67);
        hVar.m(2);
        for (int i80 = 1; i80 < i67; i80++) {
            if (iArr20[iArr21[i80]] == 0) {
                hVar.l();
            }
        }
        E(hVar, i62, iArr24, iArr5, zArr13);
        K(hVar, i67, zArr12);
        if (hVar.e()) {
            hVar.b();
            jVarX = x(hVar, i67, i68, iArr24);
        } else {
            jVarX = null;
        }
        return new k(bVar, immutableListE, new d(immutableListE2, iArr25), fVarS, jVarX);
    }
}
