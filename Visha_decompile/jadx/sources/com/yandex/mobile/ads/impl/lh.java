package com.yandex.mobile.ads.impl;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.OpusUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class lh {
    private static final byte[] a = f92.c("OpusHead");
    public static final int b = 0;

    public static final class a {
        public final int a;
        public int b;
        public int c;
        public long d;
        private final boolean e;
        private final ag1 f;
        private final ag1 g;
        private int h;
        private int i;

        public a(ag1 ag1Var, ag1 ag1Var2, boolean z) throws eg1 {
            this.g = ag1Var;
            this.f = ag1Var2;
            this.e = z;
            ag1Var2.e(12);
            this.a = ag1Var2.x();
            ag1Var.e(12);
            this.i = ag1Var.x();
            c80.a(ag1Var.h() == 1);
            this.b = -1;
        }

        public final boolean a() {
            int i = this.b + 1;
            this.b = i;
            if (i == this.a) {
                return false;
            }
            this.d = this.e ? this.f.y() : this.f.v();
            if (this.b == this.h) {
                this.c = this.g.x();
                this.g.f(4);
                int i2 = this.i - 1;
                this.i = i2;
                this.h = i2 > 0 ? this.g.x() - 1 : -1;
            }
            return true;
        }
    }

    public static final class b {
        private final String a;
        private final byte[] b;
        private final long c;
        private final long d;

        public b(String str, byte[] bArr, long j, long j2) {
            this.a = str;
            this.b = bArr;
            this.c = j;
            this.d = j2;
        }
    }

    public interface c {
        int a();

        int b();

        int c();
    }

    public static final class d implements c {
        private final int a;
        private final int b;
        private final ag1 c;

        public d(kh.b bVar, jc0 jc0Var) {
            ag1 ag1Var = bVar.b;
            this.c = ag1Var;
            ag1Var.e(12);
            int iX = ag1Var.x();
            if ("audio/raw".equals(jc0Var.m)) {
                int iB = f92.b(jc0Var.B, jc0Var.z);
                if (iX == 0 || iX % iB != 0) {
                    et0.d("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iB + ", stsz sample size: " + iX);
                    iX = iB;
                }
            }
            this.a = iX == 0 ? -1 : iX;
            this.b = ag1Var.x();
        }

        @Override
        public final int a() {
            return this.a;
        }

        @Override
        public final int b() {
            return this.b;
        }

        @Override
        public final int c() {
            int i = this.a;
            return i == -1 ? this.c.x() : i;
        }
    }

    public static final class e implements c {
        private final ag1 a;
        private final int b;
        private final int c;
        private int d;
        private int e;

        public e(kh.b bVar) {
            ag1 ag1Var = bVar.b;
            this.a = ag1Var;
            ag1Var.e(12);
            this.c = ag1Var.x() & 255;
            this.b = ag1Var.x();
        }

        @Override
        public final int a() {
            return -1;
        }

        @Override
        public final int b() {
            return this.b;
        }

        @Override
        public final int c() {
            int i = this.c;
            if (i == 8) {
                return this.a.t();
            }
            if (i == 16) {
                return this.a.z();
            }
            int i2 = this.d;
            this.d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.e & 15;
            }
            int iT = this.a.t();
            this.e = iT;
            return (iT & 240) >> 4;
        }
    }

    private static b a(int i, ag1 ag1Var) {
        ag1Var.e(i + 12);
        ag1Var.f(1);
        a(ag1Var);
        ag1Var.f(2);
        int iT = ag1Var.t();
        if ((iT & 128) != 0) {
            ag1Var.f(2);
        }
        if ((iT & 64) != 0) {
            ag1Var.f(ag1Var.t());
        }
        if ((iT & 32) != 0) {
            ag1Var.f(2);
        }
        ag1Var.f(1);
        a(ag1Var);
        String strA = w01.a(ag1Var.t());
        if ("audio/mpeg".equals(strA) || MimeTypes.AUDIO_DTS.equals(strA) || MimeTypes.AUDIO_DTS_HD.equals(strA)) {
            return new b(strA, null, -1L, -1L);
        }
        ag1Var.f(4);
        long jV = ag1Var.v();
        long jV2 = ag1Var.v();
        ag1Var.f(1);
        int iA = a(ag1Var);
        byte[] bArr = new byte[iA];
        ag1Var.a(bArr, 0, iA);
        return new b(strA, bArr, jV2 > 0 ? jV2 : -1L, jV > 0 ? jV : -1L);
    }

    private static int a(ag1 ag1Var) {
        int iT = ag1Var.t();
        int i = iT & 127;
        while ((iT & 128) == 128) {
            iT = ag1Var.t();
            i = (i << 7) | (iT & 127);
        }
        return i;
    }

    @Nullable
    private static Pair a(int i, int i2, ag1 ag1Var) throws eg1 {
        w52 w52Var;
        Pair pairCreate;
        int i3;
        int i4;
        byte[] bArr;
        int iD = ag1Var.d();
        while (iD - i < i2) {
            ag1Var.e(iD);
            int iH = ag1Var.h();
            if (iH > 0) {
                if (ag1Var.h() == 1936289382) {
                    int i5 = iD + 8;
                    int i6 = 0;
                    int i7 = -1;
                    String strA = null;
                    Integer numValueOf = null;
                    while (i5 - iD < iH) {
                        ag1Var.e(i5);
                        int iH2 = ag1Var.h();
                        int iH3 = ag1Var.h();
                        if (iH3 == 1718775137) {
                            numValueOf = Integer.valueOf(ag1Var.h());
                        } else if (iH3 == 1935894637) {
                            ag1Var.f(4);
                            strA = ag1Var.a(4, lo.c);
                        } else if (iH3 == 1935894633) {
                            i7 = i5;
                            i6 = iH2;
                        }
                        i5 += iH2;
                    }
                    if (C.CENC_TYPE_cenc.equals(strA) || C.CENC_TYPE_cbc1.equals(strA) || C.CENC_TYPE_cens.equals(strA) || C.CENC_TYPE_cbcs.equals(strA)) {
                        if (!(numValueOf != null)) {
                            throw eg1.a("frma atom is mandatory", (Exception) null);
                        }
                        if (!(i7 != -1)) {
                            throw eg1.a("schi atom is mandatory", (Exception) null);
                        }
                        int i8 = i7 + 8;
                        while (true) {
                            if (i8 - i7 >= i6) {
                                w52Var = null;
                                break;
                            }
                            ag1Var.e(i8);
                            int iH4 = ag1Var.h();
                            if (ag1Var.h() == 1952804451) {
                                int iH5 = (ag1Var.h() >> 24) & 255;
                                ag1Var.f(1);
                                if (iH5 == 0) {
                                    ag1Var.f(1);
                                    i3 = 0;
                                    i4 = 0;
                                } else {
                                    int iT = ag1Var.t();
                                    int i9 = (iT & 240) >> 4;
                                    i3 = iT & 15;
                                    i4 = i9;
                                }
                                boolean z = ag1Var.t() == 1;
                                int iT2 = ag1Var.t();
                                byte[] bArr2 = new byte[16];
                                ag1Var.a(bArr2, 0, 16);
                                if (z && iT2 == 0) {
                                    int iT3 = ag1Var.t();
                                    byte[] bArr3 = new byte[iT3];
                                    ag1Var.a(bArr3, 0, iT3);
                                    bArr = bArr3;
                                } else {
                                    bArr = null;
                                }
                                w52Var = new w52(z, strA, iT2, bArr2, i4, i3, bArr);
                                break;
                            }
                            i8 += iH4;
                        }
                        if (w52Var != null) {
                            int i10 = f92.a;
                            pairCreate = Pair.create(numValueOf, w52Var);
                        } else {
                            throw eg1.a("tenc atom is mandatory", (Exception) null);
                        }
                    } else {
                        pairCreate = null;
                    }
                    if (pairCreate != null) {
                        return pairCreate;
                    }
                }
                iD += iH;
            } else {
                throw eg1.a("childAtomSize must be positive", (Exception) null);
            }
        }
        return null;
    }

    private static b62 a(v52 v52Var, kh.a aVar, ie0 ie0Var) throws eg1 {
        c eVar;
        boolean z;
        int iX;
        int iX2;
        int iX3;
        int i;
        int i2;
        int i3;
        boolean z2;
        int i4;
        v52 v52Var2;
        int i5;
        long[] jArr;
        int[] iArr;
        long[] jArr2;
        int[] iArr2;
        int i6;
        long j;
        int iH;
        int i7;
        int i8;
        int[] iArr3;
        int i9;
        int i10;
        int i11;
        kh.b bVarC = aVar.c(Mp4Box.TYPE_stsz);
        if (bVarC != null) {
            eVar = new d(bVarC, v52Var.f);
        } else {
            kh.b bVarC2 = aVar.c(Mp4Box.TYPE_stz2);
            if (bVarC2 != null) {
                eVar = new e(bVarC2);
            } else {
                throw eg1.a("Track has no sample table size information", (Exception) null);
            }
        }
        int iB = eVar.b();
        if (iB == 0) {
            return new b62(v52Var, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        kh.b bVarC3 = aVar.c(Mp4Box.TYPE_stco);
        if (bVarC3 == null) {
            bVarC3 = aVar.c(Mp4Box.TYPE_co64);
            bVarC3.getClass();
            z = true;
        } else {
            z = false;
        }
        ag1 ag1Var = bVarC3.b;
        kh.b bVarC4 = aVar.c(Mp4Box.TYPE_stsc);
        bVarC4.getClass();
        ag1 ag1Var2 = bVarC4.b;
        kh.b bVarC5 = aVar.c(Mp4Box.TYPE_stts);
        bVarC5.getClass();
        ag1 ag1Var3 = bVarC5.b;
        kh.b bVarC6 = aVar.c(Mp4Box.TYPE_stss);
        ag1 ag1Var4 = bVarC6 != null ? bVarC6.b : null;
        kh.b bVarC7 = aVar.c(Mp4Box.TYPE_ctts);
        ag1 ag1Var5 = bVarC7 != null ? bVarC7.b : null;
        a aVar2 = new a(ag1Var2, ag1Var, z);
        ag1Var3.e(12);
        int iX4 = ag1Var3.x() - 1;
        int iX5 = ag1Var3.x();
        int iX6 = ag1Var3.x();
        if (ag1Var5 != null) {
            ag1Var5.e(12);
            iX = ag1Var5.x();
        } else {
            iX = 0;
        }
        if (ag1Var4 != null) {
            ag1Var4.e(12);
            iX3 = ag1Var4.x();
            if (iX3 > 0) {
                iX2 = ag1Var4.x() - 1;
            } else {
                iX2 = -1;
                ag1Var4 = null;
            }
        } else {
            iX2 = -1;
            iX3 = 0;
        }
        int iA = eVar.a();
        String str = v52Var.f.m;
        if (iA != -1 && ("audio/raw".equals(str) || "audio/g711-mlaw".equals(str) || "audio/g711-alaw".equals(str)) && iX4 == 0 && iX == 0 && iX3 == 0) {
            int i12 = aVar2.a;
            long[] jArr3 = new long[i12];
            int[] iArr4 = new int[i12];
            while (aVar2.a()) {
                int i13 = aVar2.b;
                jArr3[i13] = aVar2.d;
                iArr4[i13] = aVar2.c;
            }
            pb0.a aVarA = pb0.a(iA, jArr3, iArr4, iX6);
            long[] jArr4 = aVarA.a;
            int[] iArr5 = aVarA.b;
            int i14 = aVarA.c;
            long[] jArr5 = aVarA.d;
            int[] iArr6 = aVarA.e;
            long j2 = aVarA.f;
            v52Var2 = v52Var;
            i5 = iB;
            jArr = jArr4;
            iArr = iArr5;
            i6 = i14;
            jArr2 = jArr5;
            iArr2 = iArr6;
            j = j2;
        } else {
            long[] jArrCopyOf = new long[iB];
            int[] iArrCopyOf = new int[iB];
            long[] jArrCopyOf2 = new long[iB];
            int[] iArrCopyOf2 = new int[iB];
            int iX7 = iX2;
            int i15 = 0;
            int i16 = 0;
            int iH2 = 0;
            int i17 = 0;
            int iX8 = 0;
            long j3 = 0;
            long j4 = 0;
            int i18 = iX;
            int i19 = iX6;
            int i20 = iX5;
            int i21 = iX4;
            int i22 = iX3;
            while (true) {
                i = i21;
                if (i15 >= iB) {
                    i2 = i20;
                    i3 = i17;
                    break;
                }
                long j5 = j4;
                int i23 = i17;
                boolean zA = true;
                while (i23 == 0) {
                    zA = aVar2.a();
                    if (!zA) {
                        break;
                    }
                    int i24 = i20;
                    long j6 = aVar2.d;
                    i23 = aVar2.c;
                    j5 = j6;
                    i20 = i24;
                    i19 = i19;
                    iB = iB;
                }
                int i25 = iB;
                i2 = i20;
                int i26 = i19;
                if (!zA) {
                    et0.d("AtomParsers", "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i15);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i15);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i15);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i15);
                    iB = i15;
                    i3 = i23;
                    break;
                }
                if (ag1Var5 != null) {
                    while (iX8 == 0 && i18 > 0) {
                        iX8 = ag1Var5.x();
                        iH2 = ag1Var5.h();
                        i18--;
                    }
                    iX8--;
                }
                int i27 = iH2;
                jArrCopyOf[i15] = j5;
                int iC = eVar.c();
                iArrCopyOf[i15] = iC;
                if (iC > i16) {
                    i16 = iC;
                }
                jArrCopyOf2[i15] = j3 + ((long) i27);
                iArrCopyOf2[i15] = ag1Var4 == null ? 1 : 0;
                if (i15 == iX7) {
                    iArrCopyOf2[i15] = 1;
                    i22--;
                    if (i22 > 0) {
                        ag1Var4.getClass();
                        iX7 = ag1Var4.x() - 1;
                    }
                }
                int i28 = iX7;
                j3 += (long) i26;
                int iX9 = i2 - 1;
                if (iX9 != 0 || i <= 0) {
                    iH = i26;
                    i7 = i;
                } else {
                    iX9 = ag1Var3.x();
                    iH = ag1Var3.h();
                    i7 = i - 1;
                }
                int i29 = iX9;
                long j7 = j5 + ((long) iArrCopyOf[i15]);
                i17 = i23 - 1;
                i15++;
                j4 = j7;
                iX7 = i28;
                i19 = iH;
                iB = i25;
                iH2 = i27;
                i21 = i7;
                i20 = i29;
            }
            long j8 = j3 + ((long) iH2);
            if (ag1Var5 == null) {
                z2 = true;
                break;
            }
            while (true) {
                if (i18 <= 0) {
                    z2 = true;
                    break;
                }
                if (ag1Var5.x() != 0) {
                    z2 = false;
                    break;
                }
                ag1Var5.h();
                i18--;
            }
            if (i22 == 0 && i2 == 0 && i3 == 0 && i == 0) {
                i4 = iX8;
                if (i4 == 0 && z2) {
                    v52Var2 = v52Var;
                }
                i5 = iB;
                jArr = jArrCopyOf;
                iArr = iArrCopyOf;
                jArr2 = jArrCopyOf2;
                iArr2 = iArrCopyOf2;
                i6 = i16;
                j = j8;
            } else {
                i4 = iX8;
            }
            StringBuilder sb = new StringBuilder("Inconsistent stbl box for track ");
            v52Var2 = v52Var;
            sb.append(v52Var2.a);
            sb.append(": remainingSynchronizationSamples ");
            sb.append(i22);
            sb.append(", remainingSamplesAtTimestampDelta ");
            sb.append(i2);
            sb.append(", remainingSamplesInChunk ");
            sb.append(i3);
            sb.append(", remainingTimestampDeltaChanges ");
            sb.append(i);
            sb.append(", remainingSamplesAtTimestampOffset ");
            sb.append(i4);
            sb.append(!z2 ? ", ctts invalid" : "");
            et0.d("AtomParsers", sb.toString());
            i5 = iB;
            jArr = jArrCopyOf;
            iArr = iArrCopyOf;
            jArr2 = jArrCopyOf2;
            iArr2 = iArrCopyOf2;
            i6 = i16;
            j = j8;
        }
        long jA = f92.a(j, 1000000L, v52Var2.c);
        long[] jArr6 = v52Var2.h;
        if (jArr6 == null) {
            f92.a(jArr2, v52Var2.c);
            return new b62(v52Var, jArr, iArr, i6, jArr2, iArr2, jA);
        }
        if (jArr6.length == 1 && v52Var2.b == 1 && jArr2.length >= 2) {
            long[] jArr7 = v52Var2.i;
            jArr7.getClass();
            long j9 = jArr7[0];
            long jA2 = f92.a(v52Var2.h[0], v52Var2.c, v52Var2.d) + j9;
            int length = jArr2.length - 1;
            int iMax = Math.max(0, Math.min(4, length));
            int iMax2 = Math.max(0, Math.min(jArr2.length - 4, length));
            long j10 = jArr2[0];
            if (j10 <= j9 && j9 < jArr2[iMax] && jArr2[iMax2] < jA2 && jA2 <= j) {
                long jA3 = f92.a(j9 - j10, v52Var2.f.A, v52Var2.c);
                long jA4 = f92.a(j - jA2, v52Var2.f.A, v52Var2.c);
                if ((jA3 != 0 || jA4 != 0) && jA3 <= 2147483647L && jA4 <= 2147483647L) {
                    ie0Var.a = (int) jA3;
                    ie0Var.b = (int) jA4;
                    f92.a(jArr2, v52Var2.c);
                    return new b62(v52Var, jArr, iArr, i6, jArr2, iArr2, f92.a(v52Var2.h[0], 1000000L, v52Var2.d));
                }
            }
        }
        long[] jArr8 = v52Var2.h;
        if (jArr8.length == 1 && jArr8[0] == 0) {
            long[] jArr9 = v52Var2.i;
            jArr9.getClass();
            long j11 = jArr9[0];
            for (int i30 = 0; i30 < jArr2.length; i30++) {
                jArr2[i30] = f92.a(jArr2[i30] - j11, 1000000L, v52Var2.c);
            }
            return new b62(v52Var, jArr, iArr, i6, jArr2, iArr2, f92.a(j - j11, 1000000L, v52Var2.c));
        }
        boolean z3 = v52Var2.b == 1;
        int[] iArr7 = new int[jArr8.length];
        int[] iArr8 = new int[jArr8.length];
        long[] jArr10 = v52Var2.i;
        jArr10.getClass();
        int i31 = 0;
        int i32 = 0;
        boolean z4 = false;
        int i33 = 0;
        while (true) {
            long[] jArr11 = v52Var2.h;
            i8 = i6;
            if (i31 >= jArr11.length) {
                break;
            }
            int[] iArr9 = iArr;
            long j12 = jArr10[i31];
            if (j12 != -1) {
                int i34 = i32;
                boolean z5 = z4;
                long jA5 = f92.a(jArr11[i31], v52Var2.c, v52Var2.d);
                iArr7[i31] = f92.b(jArr2, j12, true);
                iArr8[i31] = f92.a(jArr2, j12 + jA5, z3);
                while (true) {
                    i10 = iArr7[i31];
                    i11 = iArr8[i31];
                    if (i10 >= i11 || (iArr2[i10] & 1) != 0) {
                        break;
                    }
                    iArr7[i31] = i10 + 1;
                }
                i9 = (i11 - i10) + i34;
                z4 = z5 | (i33 != i10);
                i33 = i11;
            } else {
                i9 = i32;
            }
            i31++;
            i6 = i8;
            i32 = i9;
            iArr = iArr9;
            jArr10 = jArr10;
        }
        int[] iArr10 = iArr;
        int i35 = i32;
        boolean z6 = z4 | (i35 != i5);
        long[] jArr12 = z6 ? new long[i35] : jArr;
        int[] iArr11 = z6 ? new int[i35] : iArr10;
        int i36 = z6 ? 0 : i8;
        int[] iArr12 = z6 ? new int[i35] : iArr2;
        long[] jArr13 = new long[i35];
        int i37 = 0;
        int i38 = 0;
        long j13 = 0;
        while (i37 < v52Var2.h.length) {
            long j14 = v52Var2.i[i37];
            int i39 = iArr7[i37];
            int i40 = iArr8[i37];
            int[] iArr13 = iArr8;
            if (z6) {
                int i41 = i40 - i39;
                System.arraycopy(jArr, i39, jArr12, i38, i41);
                iArr3 = iArr10;
                System.arraycopy(iArr3, i39, iArr11, i38, i41);
                System.arraycopy(iArr2, i39, iArr12, i38, i41);
            } else {
                iArr3 = iArr10;
            }
            while (i39 < i40) {
                int[] iArr14 = iArr12;
                int i42 = i37;
                long[] jArr14 = jArr2;
                int[] iArr15 = iArr2;
                int[] iArr16 = iArr3;
                jArr13[i38] = f92.a(j13, 1000000L, v52Var2.d) + f92.a(Math.max(0L, jArr2[i39] - j14), 1000000L, v52Var2.c);
                if (z6 && iArr11[i38] > i36) {
                    i36 = iArr16[i39];
                }
                i38++;
                i39++;
                i37 = i42;
                iArr12 = iArr14;
                iArr3 = iArr16;
                jArr2 = jArr14;
                iArr2 = iArr15;
            }
            int[] iArr17 = iArr3;
            int i43 = i37;
            j13 += v52Var2.h[i43];
            i37 = i43 + 1;
            jArr = jArr;
            iArr10 = iArr17;
            jArr2 = jArr2;
            iArr2 = iArr2;
            iArr8 = iArr13;
        }
        return new b62(v52Var, jArr12, iArr11, i36, jArr13, iArr12, f92.a(j13, 1000000L, v52Var2.d));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0226  */
    /* JADX WARN: Code duplicated, block: B:333:0x05a4  */
    /* JADX WARN: Code duplicated, block: B:335:0x05ad  */
    /* JADX WARN: Code duplicated, block: B:336:0x05b0  */
    /* JADX WARN: Code duplicated, block: B:338:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:340:0x05c1  */
    /* JADX WARN: Code duplicated, block: B:342:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:344:0x05dd A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:347:0x05e4  */
    /* JADX WARN: Code duplicated, block: B:381:0x076d A[PHI: r47 r48
      0x076d: PHI (r47v8 java.util.List<byte[]>) = (r47v6 java.util.List<byte[]>), (r47v9 java.util.List<byte[]>) binds: [B:404:0x07ad, B:379:0x0723] A[DONT_GENERATE, DONT_INLINE]
      0x076d: PHI (r48v10 int) = (r48v8 int), (r48v11 int) binds: [B:404:0x07ad, B:379:0x0723] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:383:0x0772  */
    /* JADX WARN: Code duplicated, block: B:385:0x0775  */
    /* JADX WARN: Code duplicated, block: B:387:0x077b  */
    /* JADX WARN: Code duplicated, block: B:388:0x077d  */
    /* JADX WARN: Code duplicated, block: B:390:0x0780 A[LOOP:6: B:390:0x0780->B:400:0x079e, LOOP_START, PHI: r12
      0x0780: PHI (r12v24 int) = (r12v23 int), (r12v26 int) binds: [B:389:0x077e, B:400:0x079e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:392:0x0784  */
    /* JADX WARN: Code duplicated, block: B:394:0x078d  */
    /* JADX WARN: Code duplicated, block: B:395:0x0790  */
    /* JADX WARN: Code duplicated, block: B:397:0x0794  */
    /* JADX WARN: Code duplicated, block: B:400:0x079e A[LOOP:6: B:390:0x0780->B:400:0x079e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:405:0x07af  */
    /* JADX WARN: Code duplicated, block: B:407:0x07bd  */
    /* JADX WARN: Code duplicated, block: B:409:0x07c5  */
    /* JADX WARN: Code duplicated, block: B:410:0x07dc  */
    /* JADX WARN: Code duplicated, block: B:412:0x07e6  */
    /* JADX WARN: Code duplicated, block: B:421:0x080a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:427:0x085e  */
    /* JADX WARN: Code duplicated, block: B:428:0x0863  */
    /* JADX WARN: Code duplicated, block: B:431:0x0894  */
    /* JADX WARN: Code duplicated, block: B:433:0x089e  */
    /* JADX WARN: Code duplicated, block: B:435:0x08aa  */
    /* JADX WARN: Code duplicated, block: B:436:0x08ac  */
    /* JADX WARN: Code duplicated, block: B:438:0x08bd  */
    /* JADX WARN: Code duplicated, block: B:441:0x08c7  */
    /* JADX WARN: Code duplicated, block: B:443:0x08d1  */
    /* JADX WARN: Code duplicated, block: B:444:0x08d9  */
    /* JADX WARN: Code duplicated, block: B:446:0x08de  */
    /* JADX WARN: Code duplicated, block: B:447:0x08e1  */
    /* JADX WARN: Code duplicated, block: B:451:0x0904  */
    /* JADX WARN: Code duplicated, block: B:453:0x0913  */
    /* JADX WARN: Code duplicated, block: B:457:0x0932  */
    /* JADX WARN: Code duplicated, block: B:459:0x0936  */
    /* JADX WARN: Code duplicated, block: B:460:0x0938  */
    /* JADX WARN: Code duplicated, block: B:462:0x093b  */
    /* JADX WARN: Code duplicated, block: B:464:0x0946 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:465:0x0948  */
    /* JADX WARN: Code duplicated, block: B:466:0x094a  */
    /* JADX WARN: Code duplicated, block: B:468:0x094d  */
    /* JADX WARN: Code duplicated, block: B:470:0x095d  */
    /* JADX WARN: Code duplicated, block: B:479:0x0987  */
    /* JADX WARN: Code duplicated, block: B:481:0x098c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:482:0x098e  */
    /* JADX WARN: Code duplicated, block: B:483:0x0990  */
    /* JADX WARN: Code duplicated, block: B:485:0x0993  */
    /* JADX WARN: Code duplicated, block: B:487:0x09a3  */
    /* JADX WARN: Code duplicated, block: B:491:0x09b0  */
    /* JADX WARN: Code duplicated, block: B:493:0x09b5  */
    /* JADX WARN: Code duplicated, block: B:495:0x09ba  */
    /* JADX WARN: Code duplicated, block: B:631:0x0c46  */
    /* JADX WARN: Code duplicated, block: B:637:0x0c7b  */
    /* JADX WARN: Code duplicated, block: B:638:0x0c82  */
    /* JADX WARN: Code duplicated, block: B:640:0x0cca  */
    /* JADX WARN: Code duplicated, block: B:642:0x0cd0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:645:0x0cd5  */
    /* JADX WARN: Code duplicated, block: B:648:0x0cdd  */
    /* JADX WARN: Code duplicated, block: B:649:0x0ce2  */
    /* JADX WARN: Code duplicated, block: B:652:0x0ceb  */
    /* JADX WARN: Code duplicated, block: B:659:0x0d42  */
    /* JADX WARN: Code duplicated, block: B:661:0x0d4d  */
    /* JADX WARN: Code duplicated, block: B:663:0x0d56  */
    /* JADX WARN: Code duplicated, block: B:664:0x0d58  */
    /* JADX WARN: Code duplicated, block: B:666:0x0d72  */
    /* JADX WARN: Code duplicated, block: B:668:0x0d75  */
    /* JADX WARN: Code duplicated, block: B:669:0x0d7a  */
    /* JADX WARN: Code duplicated, block: B:672:0x0d82  */
    /* JADX WARN: Code duplicated, block: B:673:0x0d88  */
    /* JADX WARN: Code duplicated, block: B:676:0x0d98 A[LOOP:7: B:665:0x0d70->B:676:0x0d98, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:681:0x0daf  */
    /* JADX WARN: Code duplicated, block: B:682:0x0dba  */
    /* JADX WARN: Code duplicated, block: B:687:0x0dc5  */
    /* JADX WARN: Code duplicated, block: B:690:0x0de7  */
    /* JADX WARN: Code duplicated, block: B:691:0x0df6  */
    /* JADX WARN: Code duplicated, block: B:696:0x0d28 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:698:0x07fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:700:0x07f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:701:0x07a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:702:0x0c61 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:703:0x0981 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:704:0x09aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:709:0x0da1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:719:0x0c67 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0139  */
    /* JADX WARN: Code duplicated, block: B:720:0x091d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:731:0x07ab A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:732:0x0773 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x013e  */
    /* JADX WARN: Code duplicated, block: B:75:0x0141  */
    /* JADX WARN: Code duplicated, block: B:78:0x0154  */
    /* JADX WARN: Code duplicated, block: B:79:0x0157  */
    /* JADX WARN: Code duplicated, block: B:82:0x0164  */
    /* JADX WARN: Code duplicated, block: B:84:0x016a  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:88:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:91:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:92:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:95:0x020f  */
    /* JADX WARN: Code duplicated, block: B:97:0x021d  */
    /* JADX WARN: Code duplicated, block: B:98:0x0220  */
    public static ArrayList a(kh.a aVar, ie0 ie0Var, long j, @Nullable f40 f40Var, boolean z, boolean z2, fe0 fe0Var) throws eg1 {
        int i;
        long jV;
        int i2;
        int i3;
        long j2;
        ag1 ag1Var;
        int i4;
        long jV2;
        long jA;
        int iH;
        int i5;
        int i6;
        Pair pairCreate;
        ag1 ag1Var2;
        String str;
        int iH2;
        w52[] w52VarArr;
        int i7;
        jc0 jc0VarA;
        int i8;
        int i9;
        long j3;
        int i10;
        Pair pair;
        ArrayList arrayList;
        int i11;
        kh.a aVar2;
        w52[] w52VarArr2;
        v52 v52Var;
        int i12;
        long[] jArr;
        long[] jArr2;
        v52 v52Var2;
        kh.a aVarB;
        kh.b bVarC;
        ag1 ag1Var3;
        int iH3;
        int iX;
        long[] jArr3;
        long[] jArr4;
        int i13;
        Pair pairCreate2;
        long jV3;
        long jH;
        int iD;
        int i14;
        int iH4;
        int i15;
        boolean z3;
        int iH5;
        boolean z4;
        int i16;
        int i17;
        int iZ;
        int iZ2;
        int iD2;
        f40 f40VarA;
        String str2;
        int i18;
        boolean z5;
        f40 f40Var2;
        String str3;
        float fX;
        int i19;
        int i20;
        byte[] bArrCopyOfRange;
        List<byte[]> list;
        String str4;
        ByteBuffer byteBufferOrder;
        b bVar;
        int i21;
        int i22;
        int i23;
        List<byte[]> listA;
        String str5;
        int i24;
        float f;
        jc0.a aVarA;
        int i25;
        int i26;
        int i27;
        byte[] bArrArray;
        int iD3;
        int iH6;
        boolean z6;
        int iH7;
        float f2;
        String str6;
        t30 t30VarA;
        int i28;
        String str7;
        boolean z7;
        tf0 tf0VarA;
        List<byte[]> list2;
        int i29;
        String str8;
        String str9;
        boolean z8;
        ni niVarA;
        Pair pairA;
        int iZ3;
        int iX2;
        int i30;
        int i31;
        f40 f40Var3;
        String str10;
        String str11;
        int i32;
        String str12;
        int i33;
        String str13;
        List<byte[]> listA2;
        String str14;
        int i34;
        jc0 jc0VarB;
        b bVar2;
        int iIntValue;
        int iH8;
        boolean z9;
        int iH9;
        List<byte[]> list3;
        int iD4;
        boolean z10;
        int i35;
        int iH10;
        boolean z11;
        b bVarA;
        String str15;
        byte[] bArr;
        jc0 jc0VarA2;
        String str16;
        kk0 kk0VarA;
        v52 v52Var3;
        int i36;
        ArrayList arrayList2;
        int i37;
        int i38 = Mp4Box.TYPE_mdia;
        int i39 = 1;
        int i40 = 16;
        int i41 = 8;
        ArrayList arrayList3 = new ArrayList();
        int i42 = 0;
        while (i42 < aVar.d.size()) {
            kh.a aVar3 = (kh.a) aVar.d.get(i42);
            if (aVar3.a != 1953653099) {
                i36 = i38;
                i37 = i39;
                i12 = i40;
                arrayList2 = arrayList3;
                i11 = i42;
            } else {
                kh.b bVarC2 = aVar.c(Mp4Box.TYPE_mvhd);
                bVarC2.getClass();
                kh.a aVarB2 = aVar3.b(i38);
                aVarB2.getClass();
                kh.b bVarC3 = aVarB2.c(Mp4Box.TYPE_hdlr);
                bVarC3.getClass();
                ag1 ag1Var4 = bVarC3.b;
                ag1Var4.e(i40);
                int iH11 = ag1Var4.h();
                if (iH11 == 1936684398) {
                    i = i39;
                } else if (iH11 == 1986618469) {
                    i = 2;
                } else if (iH11 == 1952807028 || iH11 == 1935832172 || iH11 == 1937072756 || iH11 == 1668047728) {
                    i = 3;
                } else {
                    i = iH11 == 1835365473 ? 5 : -1;
                }
                if (i == -1) {
                    i12 = i40;
                    arrayList = arrayList3;
                    i11 = i42;
                    v52Var = null;
                } else {
                    kh.b bVarC4 = aVar3.c(Mp4Box.TYPE_tkhd);
                    bVarC4.getClass();
                    ag1 ag1Var5 = bVarC4.b;
                    ag1Var5.e(i41);
                    int iH12 = (ag1Var5.h() >> 24) & 255;
                    ag1Var5.f(iH12 == 0 ? i41 : i40);
                    int iH13 = ag1Var5.h();
                    ag1Var5.f(4);
                    int iD5 = ag1Var5.d();
                    if (iH12 == 0) {
                        i41 = 4;
                    }
                    int i43 = 0;
                    while (true) {
                        if (i43 < i41) {
                            if (ag1Var5.c()[iD5 + i43] != -1) {
                                jV = iH12 == 0 ? ag1Var5.v() : ag1Var5.y();
                                if (jV != 0) {
                                    break;
                                }
                                break;
                            }
                            i43 += i39;
                        } else {
                            ag1Var5.f(i41);
                        }
                        jV = -9223372036854775807L;
                        break;
                    }
                    ag1Var5.f(16);
                    int iH14 = ag1Var5.h();
                    int iH15 = ag1Var5.h();
                    ag1Var5.f(4);
                    int iH16 = ag1Var5.h();
                    int iH17 = ag1Var5.h();
                    if (iH14 == 0 && iH15 == 65536) {
                        i2 = SupportMenu.CATEGORY_MASK;
                        if (iH16 == -65536 && iH17 == 0) {
                            i3 = 90;
                        }
                        if (j == C.TIME_UNSET) {
                            j2 = jV;
                        } else {
                            j2 = j;
                        }
                        ag1Var = bVarC2.b;
                        ag1Var.e(8);
                        if (((ag1Var.h() >> 24) & 255) == 0) {
                            i4 = 8;
                        } else {
                            i4 = 16;
                        }
                        ag1Var.f(i4);
                        jV2 = ag1Var.v();
                        if (j2 == C.TIME_UNSET) {
                            jA = -9223372036854775807L;
                        } else {
                            jA = f92.a(j2, 1000000L, jV2);
                        }
                        kh.a aVarB3 = aVarB2.b(Mp4Box.TYPE_minf);
                        aVarB3.getClass();
                        kh.a aVarB4 = aVarB3.b(Mp4Box.TYPE_stbl);
                        aVarB4.getClass();
                        kh.b bVarC5 = aVarB2.c(Mp4Box.TYPE_mdhd);
                        bVarC5.getClass();
                        ag1 ag1Var6 = bVarC5.b;
                        ag1Var6.e(8);
                        iH = (ag1Var6.h() >> 24) & 255;
                        if (iH == 0) {
                            i5 = 8;
                        } else {
                            i5 = 16;
                        }
                        ag1Var6.f(i5);
                        long jV4 = ag1Var6.v();
                        if (iH == 0) {
                            i6 = 4;
                        } else {
                            i6 = 8;
                        }
                        ag1Var6.f(i6);
                        int iZ4 = ag1Var6.z();
                        pairCreate = Pair.create(Long.valueOf(jV4), "" + ((char) (((iZ4 >> 10) & 31) + 96)) + ((char) (((iZ4 >> 5) & 31) + 96)) + ((char) ((iZ4 & 31) + 96)));
                        kh.b bVarC6 = aVarB4.c(Mp4Box.TYPE_stsd);
                        bVarC6.getClass();
                        ag1Var2 = bVarC6.b;
                        str = (String) pairCreate.second;
                        ag1Var2.e(12);
                        iH2 = ag1Var2.h();
                        w52VarArr = new w52[iH2];
                        i7 = 0;
                        jc0VarA = null;
                        i8 = 0;
                        i9 = 0;
                        while (i7 < iH2) {
                            iD = ag1Var2.d();
                            i14 = iH2;
                            iH4 = ag1Var2.h();
                            i15 = i42;
                            if (iH4 > 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z3) {
                                ArrayList arrayList4 = arrayList3;
                                iH5 = ag1Var2.h();
                                long j4 = jV2;
                                if (iH5 != 1635148593 || iH5 == 1635148595 || iH5 == 1701733238 || iH5 == 1831958048 || iH5 == 1836070006 || iH5 == 1752589105 || iH5 == 1751479857 || iH5 == 1932670515 || iH5 == 1211250227 || iH5 == 1987063864 || iH5 == 1987063865 || iH5 == 1635135537 || iH5 == 1685479798 || iH5 == 1685479729 || iH5 == 1685481573) {
                                    z4 = false;
                                    i16 = 16;
                                } else {
                                    if (iH5 == 1685481521) {
                                        i16 = 16;
                                        z4 = false;
                                    } else {
                                        if (iH5 == 1836069985 || iH5 == 1701733217 || iH5 == 1633889587 || iH5 == 1700998451 || iH5 == 1633889588 || iH5 == 1835823201 || iH5 == 1685353315 || iH5 == 1685353317 || iH5 == 1685353320 || iH5 == 1685353324 || iH5 == 1685353336 || iH5 == 1935764850 || iH5 == 1935767394 || iH5 == 1819304813 || iH5 == 1936684916 || iH5 == 1953984371 || iH5 == 778924082 || iH5 == 778924083 || iH5 == 1835557169 || iH5 == 1835560241 || iH5 == 1634492771 || iH5 == 1634492791 || iH5 == 1970037111 || iH5 == 1332770163 || iH5 == 1716281667) {
                                            i = i;
                                            ag1Var2.e(iD + 16);
                                            if (z2) {
                                                iZ3 = ag1Var2.z();
                                                ag1Var2.f(6);
                                            } else {
                                                ag1Var2.f(8);
                                                iZ3 = 0;
                                            }
                                            if (iZ3 == 0 || iZ3 == 1) {
                                                int iZ5 = ag1Var2.z();
                                                ag1Var2.f(6);
                                                int iU = ag1Var2.u();
                                                ag1Var2.e(ag1Var2.d() - 4);
                                                int iH18 = ag1Var2.h();
                                                if (iZ3 == 1) {
                                                    ag1Var2.f(16);
                                                }
                                                iX2 = iZ5;
                                                i30 = iU;
                                                i31 = iH18;
                                            } else if (iZ3 == 2) {
                                                ag1Var2.f(16);
                                                int iRound = (int) Math.round(Double.longBitsToDouble(ag1Var2.p()));
                                                iX2 = ag1Var2.x();
                                                ag1Var2.f(20);
                                                i30 = iRound;
                                                i31 = 0;
                                            }
                                            int iD6 = ag1Var2.d();
                                            int i44 = iX2;
                                            if (iH5 == 1701733217) {
                                                Pair pairA2 = a(iD, iH4, ag1Var2);
                                                if (pairA2 != null) {
                                                    int iIntValue2 = ((Integer) pairA2.first).intValue();
                                                    f40 f40VarA2 = f40Var == null ? null : f40Var.a(((w52) pairA2.second).b);
                                                    w52VarArr[i7] = (w52) pairA2.second;
                                                    f40Var3 = f40VarA2;
                                                    iH5 = iIntValue2;
                                                } else {
                                                    f40Var3 = f40Var;
                                                }
                                                ag1Var2.e(iD6);
                                            } else {
                                                f40Var3 = f40Var;
                                            }
                                            if (iH5 == 1633889587) {
                                                str10 = "audio/ac3";
                                            } else if (iH5 == 1700998451) {
                                                str10 = "audio/eac3";
                                            } else if (iH5 == 1633889588) {
                                                str10 = MimeTypes.AUDIO_AC4;
                                            } else if (iH5 == 1685353315) {
                                                str10 = MimeTypes.AUDIO_DTS;
                                            } else {
                                                if (iH5 == 1685353320 || iH5 == 1685353324) {
                                                    str10 = MimeTypes.AUDIO_DTS_HD;
                                                } else if (iH5 == 1685353317) {
                                                    str10 = MimeTypes.AUDIO_DTS_EXPRESS;
                                                } else {
                                                    if (iH5 == 1685353336) {
                                                        str12 = MimeTypes.AUDIO_DTS_X;
                                                    } else if (iH5 == 1935764850) {
                                                        str12 = "audio/3gpp";
                                                    } else if (iH5 == 1935767394) {
                                                        str12 = "audio/amr-wb";
                                                    } else {
                                                        if (iH5 == 1819304813 || iH5 == 1936684916) {
                                                            str11 = "audio/raw";
                                                            i32 = 2;
                                                        } else if (iH5 == 1953984371) {
                                                            i32 = 268435456;
                                                            str11 = "audio/raw";
                                                        } else if (iH5 == 778924082 || iH5 == 778924083) {
                                                            str10 = "audio/mpeg";
                                                        } else if (iH5 == 1835557169) {
                                                            str12 = MimeTypes.AUDIO_MPEGH_MHA1;
                                                        } else if (iH5 == 1835560241) {
                                                            str12 = MimeTypes.AUDIO_MPEGH_MHM1;
                                                        } else if (iH5 == 1634492771) {
                                                            str12 = MimeTypes.AUDIO_ALAC;
                                                        } else if (iH5 == 1634492791) {
                                                            str12 = "audio/g711-alaw";
                                                        } else if (iH5 == 1970037111) {
                                                            str12 = "audio/g711-mlaw";
                                                        } else if (iH5 == 1332770163) {
                                                            str12 = "audio/opus";
                                                        } else if (iH5 == 1716281667) {
                                                            str12 = "audio/flac";
                                                        } else if (iH5 == 1835823201) {
                                                            str10 = MimeTypes.AUDIO_TRUEHD;
                                                        } else {
                                                            i32 = -1;
                                                            str11 = null;
                                                        }
                                                        i33 = iD6;
                                                        str13 = null;
                                                        listA2 = null;
                                                        str14 = str11;
                                                        i34 = i30;
                                                        jc0VarB = jc0VarA;
                                                        bVar2 = null;
                                                        int i45 = i3;
                                                        iIntValue = i44;
                                                        while (i33 - iD < iH4) {
                                                            ag1Var2.e(i33);
                                                            iH8 = ag1Var2.h();
                                                            if (iH8 > 0) {
                                                                z9 = true;
                                                            } else {
                                                                z9 = false;
                                                            }
                                                            if (z9) {
                                                                int i46 = iH4;
                                                                iH9 = ag1Var2.h();
                                                                int i47 = iD;
                                                                if (iH9 == 1835557187) {
                                                                    int i48 = iH8 - 13;
                                                                    byte[] bArr2 = new byte[i48];
                                                                    ag1Var2.e(i33 + 13);
                                                                    ag1Var2.a(bArr2, 0, i48);
                                                                    listA2 = kk0.a(bArr2);
                                                                    i31 = i31;
                                                                } else {
                                                                    if (iH9 != 1702061171 || (z2 && iH9 == 2002876005)) {
                                                                        i31 = i31;
                                                                        list3 = listA2;
                                                                        if (iH9 == 1702061171) {
                                                                            iD4 = i33;
                                                                        } else {
                                                                            iD4 = ag1Var2.d();
                                                                            if (iD4 >= i33) {
                                                                                z10 = true;
                                                                            } else {
                                                                                z10 = false;
                                                                            }
                                                                            if (!z10) {
                                                                                throw eg1.a((String) null, (Exception) null);
                                                                            }
                                                                            while (true) {
                                                                                if (iD4 - i33 >= iH8) {
                                                                                    i35 = -1;
                                                                                    iD4 = -1;
                                                                                    break;
                                                                                }
                                                                                ag1Var2.e(iD4);
                                                                                iH10 = ag1Var2.h();
                                                                                if (iH10 > 0) {
                                                                                    z11 = true;
                                                                                } else {
                                                                                    z11 = false;
                                                                                }
                                                                                if (z11) {
                                                                                    if (ag1Var2.h() != 1702061171) {
                                                                                        iD4 += iH10;
                                                                                    }
                                                                                } else {
                                                                                    throw eg1.a("childAtomSize must be positive", (Exception) null);
                                                                                }
                                                                            }
                                                                            if (iD4 != i35) {
                                                                                bVarA = a(iD4, ag1Var2);
                                                                                str15 = bVarA.a;
                                                                                bArr = bVarA.b;
                                                                                if (bArr != null) {
                                                                                    if ("audio/mp4a-latm".equals(str15)) {
                                                                                        com.yandex.mobile.ads.impl.e.a aVarA2 = com.yandex.mobile.ads.impl.e.a(new zf1(bArr.length, bArr), false);
                                                                                        i34 = aVarA2.a;
                                                                                        int i49 = aVarA2.b;
                                                                                        str13 = aVarA2.c;
                                                                                        iIntValue = i49;
                                                                                    }
                                                                                    bVar2 = bVarA;
                                                                                    listA2 = kk0.a(bArr);
                                                                                    str14 = str15;
                                                                                } else {
                                                                                    bVar2 = bVarA;
                                                                                    str14 = str15;
                                                                                }
                                                                                i33 += iH8;
                                                                                iH4 = i46;
                                                                                iD = i47;
                                                                                i31 = i31;
                                                                            }
                                                                            listA2 = list3;
                                                                            i33 += iH8;
                                                                            iH4 = i46;
                                                                            iD = i47;
                                                                            i31 = i31;
                                                                        }
                                                                        i35 = -1;
                                                                        if (iD4 != i35) {
                                                                            bVarA = a(iD4, ag1Var2);
                                                                            str15 = bVarA.a;
                                                                            bArr = bVarA.b;
                                                                            if (bArr != null) {
                                                                                if ("audio/mp4a-latm".equals(str15)) {
                                                                                    com.yandex.mobile.ads.impl.e.a aVarA3 = com.yandex.mobile.ads.impl.e.a(new zf1(bArr.length, bArr), false);
                                                                                    i34 = aVarA3.a;
                                                                                    int i410 = aVarA3.b;
                                                                                    str13 = aVarA3.c;
                                                                                    iIntValue = i410;
                                                                                }
                                                                                bVar2 = bVarA;
                                                                                listA2 = kk0.a(bArr);
                                                                                str14 = str15;
                                                                            } else {
                                                                                bVar2 = bVarA;
                                                                                str14 = str15;
                                                                            }
                                                                            i33 += iH8;
                                                                            iH4 = i46;
                                                                            iD = i47;
                                                                            i31 = i31;
                                                                        }
                                                                        listA2 = list3;
                                                                        i33 += iH8;
                                                                        iH4 = i46;
                                                                        iD = i47;
                                                                        i31 = i31;
                                                                    } else if (iH9 == 1684103987) {
                                                                        ag1Var2.e(i33 + 8);
                                                                        i31 = i31;
                                                                        jc0VarB = t.a(ag1Var2, Integer.toString(iH13), str, f40Var3);
                                                                    } else {
                                                                        list3 = listA2;
                                                                        if (iH9 == 1684366131) {
                                                                            ag1Var2.e(i33 + 8);
                                                                            jc0VarB = t.b(ag1Var2, Integer.toString(iH13), str, f40Var3);
                                                                        } else {
                                                                            if (iH9 == 1684103988) {
                                                                                ag1Var2.e(i33 + 8);
                                                                                String string = Integer.toString(iH13);
                                                                                ag1Var2.f(1);
                                                                                jc0VarA2 = new jc0.a().b(string).e(MimeTypes.AUDIO_AC4).c(2).l(((ag1Var2.t() & 32) >> 5) == 1 ? OpusUtil.SAMPLE_RATE : 44100).a(f40Var3).d(str).a();
                                                                            } else if (iH9 == 1684892784) {
                                                                                if (i31 <= 0) {
                                                                                    throw eg1.a("Invalid sample rate for Dolby TrueHD MLP stream: " + i31, (Exception) null);
                                                                                }
                                                                                i34 = i31;
                                                                                i31 = i34;
                                                                                listA2 = list3;
                                                                                iIntValue = 2;
                                                                            } else if (iH9 == 1684305011) {
                                                                                jc0VarA2 = new jc0.a().g(iH13).e(str14).c(iIntValue).l(i34).a(f40Var3).d(str).a();
                                                                            } else if (iH9 == 1682927731) {
                                                                                int i50 = iH8 - 8;
                                                                                byte[] bArr3 = a;
                                                                                byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i50);
                                                                                i31 = i31;
                                                                                ag1Var2.e(i33 + 8);
                                                                                ag1Var2.a(bArrCopyOf, bArr3.length, i50);
                                                                                listA2 = if1.a(bArrCopyOf);
                                                                            } else {
                                                                                i31 = i31;
                                                                                if (iH9 == 1684425825) {
                                                                                    byte[] bArr4 = new byte[iH8 - 8];
                                                                                    bArr4[0] = 102;
                                                                                    bArr4[1] = 76;
                                                                                    bArr4[2] = 97;
                                                                                    bArr4[3] = 67;
                                                                                    ag1Var2.e(i33 + 12);
                                                                                    ag1Var2.a(bArr4, 4, iH8 - 12);
                                                                                    listA2 = kk0.a(bArr4);
                                                                                } else if (iH9 == 1634492771) {
                                                                                    int i51 = iH8 - 12;
                                                                                    byte[] bArr5 = new byte[i51];
                                                                                    ag1Var2.e(i33 + 12);
                                                                                    ag1Var2.a(bArr5, 0, i51);
                                                                                    ag1 ag1Var7 = new ag1(bArr5);
                                                                                    ag1Var7.e(9);
                                                                                    int iT = ag1Var7.t();
                                                                                    ag1Var7.e(20);
                                                                                    Pair pairCreate3 = Pair.create(Integer.valueOf(ag1Var7.x()), Integer.valueOf(iT));
                                                                                    int iIntValue3 = ((Integer) pairCreate3.first).intValue();
                                                                                    iIntValue = ((Integer) pairCreate3.second).intValue();
                                                                                    listA2 = kk0.a(bArr5);
                                                                                    i34 = iIntValue3;
                                                                                }
                                                                            }
                                                                            jc0VarB = jc0VarA2;
                                                                        }
                                                                        listA2 = list3;
                                                                    }
                                                                    listA2 = list3;
                                                                    i33 += iH8;
                                                                    iH4 = i46;
                                                                    iD = i47;
                                                                    i31 = i31;
                                                                }
                                                                i33 += iH8;
                                                                iH4 = i46;
                                                                iD = i47;
                                                                i31 = i31;
                                                            } else {
                                                                throw eg1.a("childAtomSize must be positive", (Exception) null);
                                                            }
                                                        }
                                                        int i52 = iD;
                                                        int i53 = iH4;
                                                        List<byte[]> list4 = listA2;
                                                        if (jc0VarB == null || str14 == null) {
                                                            jc0VarA = jc0VarB;
                                                        } else {
                                                            jc0.a aVarD = new jc0.a().g(iH13).e(str14).a(str13).c(iIntValue).l(i34).i(i32).a(list4).a(f40Var3).d(str);
                                                            if (bVar2 != null) {
                                                                aVarD.b(hq0.b(bVar2.c)).j(hq0.b(bVar2.d));
                                                            }
                                                            jc0VarA = aVarD.a();
                                                        }
                                                        i3 = i45;
                                                        i17 = i53;
                                                        iD = i52;
                                                    }
                                                    str10 = str12;
                                                }
                                                str11 = str10;
                                                i32 = -1;
                                                i33 = iD6;
                                                str13 = null;
                                                listA2 = null;
                                                str14 = str11;
                                                i34 = i30;
                                                jc0VarB = jc0VarA;
                                                bVar2 = null;
                                                int i411 = i3;
                                                iIntValue = i44;
                                                while (i33 - iD < iH4) {
                                                    ag1Var2.e(i33);
                                                    iH8 = ag1Var2.h();
                                                    if (iH8 > 0) {
                                                        z9 = true;
                                                    } else {
                                                        z9 = false;
                                                    }
                                                    if (z9) {
                                                        int i412 = iH4;
                                                        iH9 = ag1Var2.h();
                                                        int i413 = iD;
                                                        if (iH9 == 1835557187) {
                                                            int i414 = iH8 - 13;
                                                            byte[] bArr6 = new byte[i414];
                                                            ag1Var2.e(i33 + 13);
                                                            ag1Var2.a(bArr6, 0, i414);
                                                            listA2 = kk0.a(bArr6);
                                                            i31 = i31;
                                                        } else {
                                                            if (iH9 != 1702061171) {
                                                                i31 = i31;
                                                                list3 = listA2;
                                                                if (iH9 == 1702061171) {
                                                                    iD4 = i33;
                                                                } else {
                                                                    iD4 = ag1Var2.d();
                                                                    if (iD4 >= i33) {
                                                                        z10 = true;
                                                                    } else {
                                                                        z10 = false;
                                                                    }
                                                                    if (!z10) {
                                                                        throw eg1.a((String) null, (Exception) null);
                                                                    }
                                                                    while (true) {
                                                                        if (iD4 - i33 >= iH8) {
                                                                            i35 = -1;
                                                                            iD4 = -1;
                                                                            break;
                                                                        }
                                                                        ag1Var2.e(iD4);
                                                                        iH10 = ag1Var2.h();
                                                                        if (iH10 > 0) {
                                                                            z11 = true;
                                                                        } else {
                                                                            z11 = false;
                                                                        }
                                                                        if (z11) {
                                                                            if (ag1Var2.h() != 1702061171) {
                                                                                iD4 += iH10;
                                                                            }
                                                                        } else {
                                                                            throw eg1.a("childAtomSize must be positive", (Exception) null);
                                                                        }
                                                                    }
                                                                    if (iD4 != i35) {
                                                                        bVarA = a(iD4, ag1Var2);
                                                                        str15 = bVarA.a;
                                                                        bArr = bVarA.b;
                                                                        if (bArr != null) {
                                                                            if ("audio/mp4a-latm".equals(str15)) {
                                                                                com.yandex.mobile.ads.impl.e.a aVarA4 = com.yandex.mobile.ads.impl.e.a(new zf1(bArr.length, bArr), false);
                                                                                i34 = aVarA4.a;
                                                                                int i415 = aVarA4.b;
                                                                                str13 = aVarA4.c;
                                                                                iIntValue = i415;
                                                                            }
                                                                            bVar2 = bVarA;
                                                                            listA2 = kk0.a(bArr);
                                                                            str14 = str15;
                                                                        } else {
                                                                            bVar2 = bVarA;
                                                                            str14 = str15;
                                                                        }
                                                                    }
                                                                    listA2 = list3;
                                                                }
                                                                i35 = -1;
                                                                if (iD4 != i35) {
                                                                    bVarA = a(iD4, ag1Var2);
                                                                    str15 = bVarA.a;
                                                                    bArr = bVarA.b;
                                                                    if (bArr != null) {
                                                                        if ("audio/mp4a-latm".equals(str15)) {
                                                                            com.yandex.mobile.ads.impl.e.a aVarA5 = com.yandex.mobile.ads.impl.e.a(new zf1(bArr.length, bArr), false);
                                                                            i34 = aVarA5.a;
                                                                            int i416 = aVarA5.b;
                                                                            str13 = aVarA5.c;
                                                                            iIntValue = i416;
                                                                        }
                                                                        bVar2 = bVarA;
                                                                        listA2 = kk0.a(bArr);
                                                                        str14 = str15;
                                                                    } else {
                                                                        bVar2 = bVarA;
                                                                        str14 = str15;
                                                                    }
                                                                }
                                                                listA2 = list3;
                                                            } else {
                                                                i31 = i31;
                                                                list3 = listA2;
                                                                if (iH9 == 1702061171) {
                                                                    iD4 = i33;
                                                                } else {
                                                                    iD4 = ag1Var2.d();
                                                                    if (iD4 >= i33) {
                                                                        z10 = true;
                                                                    } else {
                                                                        z10 = false;
                                                                    }
                                                                    if (!z10) {
                                                                        throw eg1.a((String) null, (Exception) null);
                                                                    }
                                                                    while (true) {
                                                                        if (iD4 - i33 >= iH8) {
                                                                            i35 = -1;
                                                                            iD4 = -1;
                                                                            break;
                                                                        }
                                                                        ag1Var2.e(iD4);
                                                                        iH10 = ag1Var2.h();
                                                                        if (iH10 > 0) {
                                                                            z11 = true;
                                                                        } else {
                                                                            z11 = false;
                                                                        }
                                                                        if (z11) {
                                                                            if (ag1Var2.h() != 1702061171) {
                                                                                iD4 += iH10;
                                                                            }
                                                                        } else {
                                                                            throw eg1.a("childAtomSize must be positive", (Exception) null);
                                                                        }
                                                                    }
                                                                    if (iD4 != i35) {
                                                                        bVarA = a(iD4, ag1Var2);
                                                                        str15 = bVarA.a;
                                                                        bArr = bVarA.b;
                                                                        if (bArr != null) {
                                                                            if ("audio/mp4a-latm".equals(str15)) {
                                                                                com.yandex.mobile.ads.impl.e.a aVarA6 = com.yandex.mobile.ads.impl.e.a(new zf1(bArr.length, bArr), false);
                                                                                i34 = aVarA6.a;
                                                                                int i417 = aVarA6.b;
                                                                                str13 = aVarA6.c;
                                                                                iIntValue = i417;
                                                                            }
                                                                            bVar2 = bVarA;
                                                                            listA2 = kk0.a(bArr);
                                                                            str14 = str15;
                                                                        } else {
                                                                            bVar2 = bVarA;
                                                                            str14 = str15;
                                                                        }
                                                                    }
                                                                    listA2 = list3;
                                                                }
                                                                i35 = -1;
                                                                if (iD4 != i35) {
                                                                    bVarA = a(iD4, ag1Var2);
                                                                    str15 = bVarA.a;
                                                                    bArr = bVarA.b;
                                                                    if (bArr != null) {
                                                                        if ("audio/mp4a-latm".equals(str15)) {
                                                                            com.yandex.mobile.ads.impl.e.a aVarA7 = com.yandex.mobile.ads.impl.e.a(new zf1(bArr.length, bArr), false);
                                                                            i34 = aVarA7.a;
                                                                            int i418 = aVarA7.b;
                                                                            str13 = aVarA7.c;
                                                                            iIntValue = i418;
                                                                        }
                                                                        bVar2 = bVarA;
                                                                        listA2 = kk0.a(bArr);
                                                                        str14 = str15;
                                                                    } else {
                                                                        bVar2 = bVarA;
                                                                        str14 = str15;
                                                                    }
                                                                }
                                                                listA2 = list3;
                                                            }
                                                            i33 += iH8;
                                                            iH4 = i412;
                                                            iD = i413;
                                                            i31 = i31;
                                                        }
                                                        i33 += iH8;
                                                        iH4 = i412;
                                                        iD = i413;
                                                        i31 = i31;
                                                    } else {
                                                        throw eg1.a("childAtomSize must be positive", (Exception) null);
                                                    }
                                                }
                                                int i54 = iD;
                                                int i55 = iH4;
                                                List<byte[]> list5 = listA2;
                                                if (jc0VarB == null) {
                                                    jc0VarA = jc0VarB;
                                                } else {
                                                    jc0VarA = jc0VarB;
                                                }
                                                i3 = i411;
                                                i17 = i55;
                                                iD = i54;
                                            }
                                            str11 = str10;
                                            i32 = -1;
                                            i33 = iD6;
                                            str13 = null;
                                            listA2 = null;
                                            str14 = str11;
                                            i34 = i30;
                                            jc0VarB = jc0VarA;
                                            bVar2 = null;
                                            int i419 = i3;
                                            iIntValue = i44;
                                            while (i33 - iD < iH4) {
                                                ag1Var2.e(i33);
                                                iH8 = ag1Var2.h();
                                                if (iH8 > 0) {
                                                    z9 = true;
                                                } else {
                                                    z9 = false;
                                                }
                                                if (z9) {
                                                    int i4110 = iH4;
                                                    iH9 = ag1Var2.h();
                                                    int i4111 = iD;
                                                    if (iH9 == 1835557187) {
                                                        int i4112 = iH8 - 13;
                                                        byte[] bArr7 = new byte[i4112];
                                                        ag1Var2.e(i33 + 13);
                                                        ag1Var2.a(bArr7, 0, i4112);
                                                        listA2 = kk0.a(bArr7);
                                                        i31 = i31;
                                                    } else {
                                                        if (iH9 != 1702061171) {
                                                            i31 = i31;
                                                            list3 = listA2;
                                                            if (iH9 == 1702061171) {
                                                                iD4 = i33;
                                                            } else {
                                                                iD4 = ag1Var2.d();
                                                                if (iD4 >= i33) {
                                                                    z10 = true;
                                                                } else {
                                                                    z10 = false;
                                                                }
                                                                if (!z10) {
                                                                    throw eg1.a((String) null, (Exception) null);
                                                                }
                                                                while (true) {
                                                                    if (iD4 - i33 >= iH8) {
                                                                        i35 = -1;
                                                                        iD4 = -1;
                                                                        break;
                                                                    }
                                                                    ag1Var2.e(iD4);
                                                                    iH10 = ag1Var2.h();
                                                                    if (iH10 > 0) {
                                                                        z11 = true;
                                                                    } else {
                                                                        z11 = false;
                                                                    }
                                                                    if (z11) {
                                                                        if (ag1Var2.h() != 1702061171) {
                                                                            iD4 += iH10;
                                                                        }
                                                                    } else {
                                                                        throw eg1.a("childAtomSize must be positive", (Exception) null);
                                                                    }
                                                                }
                                                                if (iD4 != i35) {
                                                                    bVarA = a(iD4, ag1Var2);
                                                                    str15 = bVarA.a;
                                                                    bArr = bVarA.b;
                                                                    if (bArr != null) {
                                                                        if ("audio/mp4a-latm".equals(str15)) {
                                                                            com.yandex.mobile.ads.impl.e.a aVarA8 = com.yandex.mobile.ads.impl.e.a(new zf1(bArr.length, bArr), false);
                                                                            i34 = aVarA8.a;
                                                                            int i4113 = aVarA8.b;
                                                                            str13 = aVarA8.c;
                                                                            iIntValue = i4113;
                                                                        }
                                                                        bVar2 = bVarA;
                                                                        listA2 = kk0.a(bArr);
                                                                        str14 = str15;
                                                                    } else {
                                                                        bVar2 = bVarA;
                                                                        str14 = str15;
                                                                    }
                                                                }
                                                                listA2 = list3;
                                                            }
                                                            i35 = -1;
                                                            if (iD4 != i35) {
                                                                bVarA = a(iD4, ag1Var2);
                                                                str15 = bVarA.a;
                                                                bArr = bVarA.b;
                                                                if (bArr != null) {
                                                                    if ("audio/mp4a-latm".equals(str15)) {
                                                                        com.yandex.mobile.ads.impl.e.a aVarA9 = com.yandex.mobile.ads.impl.e.a(new zf1(bArr.length, bArr), false);
                                                                        i34 = aVarA9.a;
                                                                        int i4114 = aVarA9.b;
                                                                        str13 = aVarA9.c;
                                                                        iIntValue = i4114;
                                                                    }
                                                                    bVar2 = bVarA;
                                                                    listA2 = kk0.a(bArr);
                                                                    str14 = str15;
                                                                } else {
                                                                    bVar2 = bVarA;
                                                                    str14 = str15;
                                                                }
                                                            }
                                                            listA2 = list3;
                                                        } else {
                                                            i31 = i31;
                                                            list3 = listA2;
                                                            if (iH9 == 1702061171) {
                                                                iD4 = i33;
                                                            } else {
                                                                iD4 = ag1Var2.d();
                                                                if (iD4 >= i33) {
                                                                    z10 = true;
                                                                } else {
                                                                    z10 = false;
                                                                }
                                                                if (!z10) {
                                                                    throw eg1.a((String) null, (Exception) null);
                                                                }
                                                                while (true) {
                                                                    if (iD4 - i33 >= iH8) {
                                                                        i35 = -1;
                                                                        iD4 = -1;
                                                                        break;
                                                                    }
                                                                    ag1Var2.e(iD4);
                                                                    iH10 = ag1Var2.h();
                                                                    if (iH10 > 0) {
                                                                        z11 = true;
                                                                    } else {
                                                                        z11 = false;
                                                                    }
                                                                    if (z11) {
                                                                        if (ag1Var2.h() != 1702061171) {
                                                                            iD4 += iH10;
                                                                        }
                                                                    } else {
                                                                        throw eg1.a("childAtomSize must be positive", (Exception) null);
                                                                    }
                                                                }
                                                                if (iD4 != i35) {
                                                                    bVarA = a(iD4, ag1Var2);
                                                                    str15 = bVarA.a;
                                                                    bArr = bVarA.b;
                                                                    if (bArr != null) {
                                                                        if ("audio/mp4a-latm".equals(str15)) {
                                                                            com.yandex.mobile.ads.impl.e.a aVarA10 = com.yandex.mobile.ads.impl.e.a(new zf1(bArr.length, bArr), false);
                                                                            i34 = aVarA10.a;
                                                                            int i4115 = aVarA10.b;
                                                                            str13 = aVarA10.c;
                                                                            iIntValue = i4115;
                                                                        }
                                                                        bVar2 = bVarA;
                                                                        listA2 = kk0.a(bArr);
                                                                        str14 = str15;
                                                                    } else {
                                                                        bVar2 = bVarA;
                                                                        str14 = str15;
                                                                    }
                                                                }
                                                                listA2 = list3;
                                                            }
                                                            i35 = -1;
                                                            if (iD4 != i35) {
                                                                bVarA = a(iD4, ag1Var2);
                                                                str15 = bVarA.a;
                                                                bArr = bVarA.b;
                                                                if (bArr != null) {
                                                                    if ("audio/mp4a-latm".equals(str15)) {
                                                                        com.yandex.mobile.ads.impl.e.a aVarA11 = com.yandex.mobile.ads.impl.e.a(new zf1(bArr.length, bArr), false);
                                                                        i34 = aVarA11.a;
                                                                        int i4116 = aVarA11.b;
                                                                        str13 = aVarA11.c;
                                                                        iIntValue = i4116;
                                                                    }
                                                                    bVar2 = bVarA;
                                                                    listA2 = kk0.a(bArr);
                                                                    str14 = str15;
                                                                } else {
                                                                    bVar2 = bVarA;
                                                                    str14 = str15;
                                                                }
                                                            }
                                                            listA2 = list3;
                                                        }
                                                        i33 += iH8;
                                                        iH4 = i4110;
                                                        iD = i4111;
                                                        i31 = i31;
                                                    }
                                                    i33 += iH8;
                                                    iH4 = i4110;
                                                    iD = i4111;
                                                    i31 = i31;
                                                } else {
                                                    throw eg1.a("childAtomSize must be positive", (Exception) null);
                                                }
                                            }
                                            int i56 = iD;
                                            int i57 = iH4;
                                            List<byte[]> list6 = listA2;
                                            if (jc0VarB == null) {
                                                jc0VarA = jc0VarB;
                                            } else {
                                                jc0VarA = jc0VarB;
                                            }
                                            i3 = i419;
                                            i17 = i57;
                                            iD = i56;
                                        } else if (iH5 == 1414810956 || iH5 == 1954034535 || iH5 == 2004251764 || iH5 == 1937010800 || iH5 == 1664495672) {
                                            ag1Var2.e(iD + 16);
                                            long j5 = Long.MAX_VALUE;
                                            if (iH5 == 1414810956) {
                                                str16 = MimeTypes.APPLICATION_TTML;
                                            } else {
                                                if (iH5 == 1954034535) {
                                                    int i58 = iH4 - 16;
                                                    byte[] bArr8 = new byte[i58];
                                                    ag1Var2.a(bArr8, 0, i58);
                                                    kk0VarA = kk0.a(bArr8);
                                                    str16 = MimeTypes.APPLICATION_TX3G;
                                                } else {
                                                    if (iH5 == 2004251764) {
                                                        str16 = MimeTypes.APPLICATION_MP4VTT;
                                                    } else if (iH5 == 1937010800) {
                                                        str16 = MimeTypes.APPLICATION_TTML;
                                                        j5 = 0;
                                                        kk0VarA = null;
                                                    } else if (iH5 == 1664495672) {
                                                        str16 = MimeTypes.APPLICATION_MP4CEA608;
                                                        kk0VarA = null;
                                                        i8 = 1;
                                                    } else {
                                                        throw new IllegalStateException();
                                                    }
                                                    jc0VarA = new jc0.a().g(iH13).e(str16).d(str).a(j5).a(kk0VarA).a();
                                                }
                                                jc0VarA = new jc0.a().g(iH13).e(str16).d(str).a(j5).a(kk0VarA).a();
                                            }
                                            kk0VarA = null;
                                            jc0VarA = new jc0.a().g(iH13).e(str16).d(str).a(j5).a(kk0VarA).a();
                                        } else if (iH5 == 1835365492) {
                                            ag1Var2.e(iD + 16);
                                            if (iH5 == 1835365492) {
                                                ag1Var2.q();
                                                String strQ = ag1Var2.q();
                                                if (strQ != null) {
                                                    jc0VarA = new jc0.a().g(iH13).e(strQ).a();
                                                    i = i;
                                                    str = str;
                                                    i17 = iH4;
                                                }
                                            }
                                            i = i;
                                        } else {
                                            if (iH5 == 1667329389) {
                                                jc0VarA = new jc0.a().g(iH13).e(MimeTypes.APPLICATION_CAMERA_MOTION).a();
                                                i = i;
                                                str = str;
                                                i17 = iH4;
                                            }
                                            i = i;
                                        }
                                        str = str;
                                        i17 = iH4;
                                    }
                                    ag1Var2.e(iD + i17);
                                    i7++;
                                    f40Var = f40Var;
                                    pairCreate = pairCreate;
                                    aVar3 = aVar3;
                                    iH2 = i14;
                                    jV2 = j4;
                                    i = i;
                                    str = str;
                                    i42 = i15;
                                    arrayList3 = arrayList4;
                                    w52VarArr = w52VarArr;
                                }
                                ag1Var2.e(iD + 16);
                                ag1Var2.f(i16);
                                iZ = ag1Var2.z();
                                iZ2 = ag1Var2.z();
                                ag1Var2.f(50);
                                iD2 = ag1Var2.d();
                                if (iH5 == 1701733238) {
                                    i17 = iH4;
                                    iD = iD;
                                    pairA = a(iD, i17, ag1Var2);
                                    if (pairA != null) {
                                        iH5 = ((Integer) pairA.first).intValue();
                                        if (f40Var == null) {
                                            f40VarA = null;
                                        } else {
                                            f40VarA = f40Var.a(((w52) pairA.second).b);
                                        }
                                        w52VarArr[i7] = (w52) pairA.second;
                                    } else {
                                        f40VarA = f40Var;
                                    }
                                    ag1Var2.e(iD2);
                                } else {
                                    i17 = iH4;
                                    iD = iD;
                                    f40VarA = f40Var;
                                }
                                if (iH5 == 1831958048) {
                                    str2 = MimeTypes.VIDEO_MPEG;
                                } else if (iH5 == 1211250227) {
                                    str2 = "video/3gpp";
                                } else {
                                    str2 = null;
                                }
                                i18 = iD2;
                                str = str;
                                z5 = z4;
                                f40Var2 = f40VarA;
                                str3 = str2;
                                fX = 1.0f;
                                i19 = i9;
                                i20 = -1;
                                bArrCopyOfRange = null;
                                list = null;
                                str4 = null;
                                byteBufferOrder = null;
                                bVar = null;
                                i21 = -1;
                                i22 = -1;
                                i23 = -1;
                                while (true) {
                                    if (i18 - iD >= i17) {
                                        i20 = i20;
                                        listA = list;
                                        break;
                                    }
                                    ag1Var2.e(i18);
                                    iD3 = ag1Var2.d();
                                    listA = list;
                                    iH6 = ag1Var2.h();
                                    if (iH6 == 0) {
                                        i20 = i20;
                                        if (ag1Var2.d() - iD == i17) {
                                            break;
                                        }
                                    } else {
                                        i20 = i20;
                                    }
                                    if (iH6 > 0) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    if (z6) {
                                        iH7 = ag1Var2.h();
                                        int i59 = iD;
                                        if (iH7 == 1635148611) {
                                            if (str3 == null) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            if (z8) {
                                                ag1Var2.e(iD3 + 8);
                                                niVarA = ni.a(ag1Var2);
                                                list2 = niVarA.a;
                                                i29 = niVarA.b;
                                                if (!z5) {
                                                    fX = niVarA.e;
                                                }
                                                str8 = niVarA.f;
                                                str9 = "video/avc";
                                            } else {
                                                throw eg1.a((String) null, (Exception) null);
                                            }
                                        } else {
                                            if (iH7 == 1752589123) {
                                                if (str3 == null) {
                                                    z7 = true;
                                                } else {
                                                    z7 = false;
                                                }
                                                if (z7) {
                                                    ag1Var2.e(iD3 + 8);
                                                    tf0VarA = tf0.a(ag1Var2);
                                                    list2 = tf0VarA.a;
                                                    i29 = tf0VarA.b;
                                                    if (!z5) {
                                                        fX = tf0VarA.c;
                                                    }
                                                    str8 = tf0VarA.d;
                                                    str9 = "video/hevc";
                                                } else {
                                                    throw eg1.a((String) null, (Exception) null);
                                                }
                                            } else {
                                                if (iH7 != 1685480259 || iH7 == 1685485123) {
                                                    iZ = iZ;
                                                    iZ2 = iZ2;
                                                    f2 = fX;
                                                    i17 = i17;
                                                    bArrCopyOfRange = bArrCopyOfRange;
                                                    iH5 = iH5;
                                                    str6 = str4;
                                                    t30VarA = t30.a(ag1Var2);
                                                    if (t30VarA != null) {
                                                        str6 = t30VarA.a;
                                                        str3 = "video/dolby-vision";
                                                    }
                                                } else {
                                                    if (iH7 == 1987076931) {
                                                        if (str3 == null) {
                                                            str7 = iH5 == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                                                        } else {
                                                            throw eg1.a((String) null, (Exception) null);
                                                        }
                                                    } else if (iH7 == 1635135811) {
                                                        if (str3 == null) {
                                                            str7 = MimeTypes.VIDEO_AV1;
                                                        } else {
                                                            throw eg1.a((String) null, (Exception) null);
                                                        }
                                                    } else if (iH7 == 1668050025) {
                                                        if (byteBufferOrder == null) {
                                                            byteBufferOrder = ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
                                                        }
                                                        ByteBuffer byteBuffer = byteBufferOrder;
                                                        byteBuffer.position(21);
                                                        byteBuffer.putShort(ag1Var2.r());
                                                        byteBuffer.putShort(ag1Var2.r());
                                                        byteBufferOrder = byteBuffer;
                                                        str6 = str4;
                                                    } else {
                                                        if (iH7 == 1835295606) {
                                                            if (byteBufferOrder == null) {
                                                                byteBufferOrder = ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
                                                            }
                                                            ByteBuffer byteBuffer2 = byteBufferOrder;
                                                            short sR = ag1Var2.r();
                                                            short sR2 = ag1Var2.r();
                                                            iH5 = iH5;
                                                            short sR3 = ag1Var2.r();
                                                            i17 = i17;
                                                            short sR4 = ag1Var2.r();
                                                            bArrCopyOfRange = bArrCopyOfRange;
                                                            short sR5 = ag1Var2.r();
                                                            f2 = fX;
                                                            short sR6 = ag1Var2.r();
                                                            iZ2 = iZ2;
                                                            short sR7 = ag1Var2.r();
                                                            iZ = iZ;
                                                            short sR8 = ag1Var2.r();
                                                            long jV5 = ag1Var2.v();
                                                            long jV6 = ag1Var2.v();
                                                            str6 = str4;
                                                            byteBuffer2.position(1);
                                                            byteBuffer2.putShort(sR5);
                                                            byteBuffer2.putShort(sR6);
                                                            byteBuffer2.putShort(sR);
                                                            byteBuffer2.putShort(sR2);
                                                            byteBuffer2.putShort(sR3);
                                                            byteBuffer2.putShort(sR4);
                                                            byteBuffer2.putShort(sR7);
                                                            byteBuffer2.putShort(sR8);
                                                            byteBuffer2.putShort((short) (jV5 / 10000));
                                                            byteBuffer2.putShort((short) (jV6 / 10000));
                                                            byteBufferOrder = byteBuffer2;
                                                        } else {
                                                            iZ = iZ;
                                                            iZ2 = iZ2;
                                                            f2 = fX;
                                                            i17 = i17;
                                                            bArrCopyOfRange = bArrCopyOfRange;
                                                            iH5 = iH5;
                                                            str6 = str4;
                                                            if (iH7 == 1681012275) {
                                                                if (str3 == null) {
                                                                    str3 = "video/3gpp";
                                                                } else {
                                                                    throw eg1.a((String) null, (Exception) null);
                                                                }
                                                            } else {
                                                                if (iH7 == 1702061171) {
                                                                    if (str3 == null) {
                                                                        b bVarA2 = a(iD3, ag1Var2);
                                                                        String str17 = bVarA2.a;
                                                                        byte[] bArr9 = bVarA2.b;
                                                                        bVar = bVarA2;
                                                                        str3 = str17;
                                                                        listA = bArr9 != null ? kk0.a(bArr9) : listA;
                                                                    } else {
                                                                        throw eg1.a((String) null, (Exception) null);
                                                                    }
                                                                } else if (iH7 == 1885434736) {
                                                                    ag1Var2.e(iD3 + 8);
                                                                    fX = ag1Var2.x() / ag1Var2.x();
                                                                    i20 = i20;
                                                                    z5 = true;
                                                                } else if (iH7 == 1937126244) {
                                                                    int i60 = iD3 + 8;
                                                                    while (true) {
                                                                        if (i60 - iD3 < iH6) {
                                                                            ag1Var2.e(i60);
                                                                            int iH19 = ag1Var2.h();
                                                                            if (ag1Var2.h() == 1886547818) {
                                                                                bArrCopyOfRange = Arrays.copyOfRange(ag1Var2.c(), i60, iH19 + i60);
                                                                            } else {
                                                                                i60 += iH19;
                                                                            }
                                                                        } else {
                                                                            i20 = i20;
                                                                            fX = f2;
                                                                            bArrCopyOfRange = null;
                                                                        }
                                                                    }
                                                                } else if (iH7 == 1936995172) {
                                                                    int iT2 = ag1Var2.t();
                                                                    ag1Var2.f(3);
                                                                    if (iT2 == 0) {
                                                                        int iT3 = ag1Var2.t();
                                                                        if (iT3 == 0) {
                                                                            fX = f2;
                                                                            i20 = 0;
                                                                        } else if (iT3 == 1) {
                                                                            fX = f2;
                                                                            i20 = 1;
                                                                        } else if (iT3 == 2) {
                                                                            fX = f2;
                                                                            i20 = 2;
                                                                        } else if (iT3 == 3) {
                                                                            i20 = 3;
                                                                            fX = f2;
                                                                        }
                                                                    }
                                                                } else if (iH7 == 1668246642) {
                                                                    int iH20 = ag1Var2.h();
                                                                    if (iH20 != 1852009592 && iH20 != 1852009571) {
                                                                        et0.d("AtomParsers", "Unsupported color type: " + kh.a(iH20));
                                                                    } else {
                                                                        int iZ6 = ag1Var2.z();
                                                                        int iZ7 = ag1Var2.z();
                                                                        ag1Var2.f(2);
                                                                        boolean z12 = iH6 == 19 && (ag1Var2.t() & 128) != 0;
                                                                        km.a<rq> aVar4 = rq.g;
                                                                        int i61 = 7;
                                                                        if (iZ6 == 1) {
                                                                            i28 = 1;
                                                                        } else if (iZ6 != 9) {
                                                                            i28 = (iZ6 == 4 || iZ6 == 5 || iZ6 == 6 || iZ6 == 7) ? 2 : -1;
                                                                        } else {
                                                                            i28 = 6;
                                                                        }
                                                                        int i62 = z12 ? 1 : 2;
                                                                        if (iZ7 != 1) {
                                                                            if (iZ7 == 16) {
                                                                                i61 = 6;
                                                                            } else if (iZ7 != 18) {
                                                                                if (iZ7 != 6 && iZ7 != 7) {
                                                                                    i61 = -1;
                                                                                }
                                                                            }
                                                                            i23 = i28;
                                                                            i22 = i62;
                                                                            i21 = i61;
                                                                        }
                                                                        i61 = 3;
                                                                        i23 = i28;
                                                                        i22 = i62;
                                                                        i21 = i61;
                                                                    }
                                                                }
                                                                i20 = i20;
                                                                fX = f2;
                                                            }
                                                        }
                                                        fX = f2;
                                                    }
                                                    str3 = str7;
                                                    str6 = str4;
                                                }
                                                i20 = i20;
                                                fX = f2;
                                            }
                                            i18 += iH6;
                                            list = listA;
                                            iD = i59;
                                            iH5 = iH5;
                                            i17 = i17;
                                            bArrCopyOfRange = bArrCopyOfRange;
                                            iZ2 = iZ2;
                                            iZ = iZ;
                                            str4 = str6;
                                        }
                                        iZ = iZ;
                                        iZ2 = iZ2;
                                        str6 = str8;
                                        listA = list2;
                                        i19 = i29;
                                        str3 = str9;
                                        i18 += iH6;
                                        list = listA;
                                        iD = i59;
                                        iH5 = iH5;
                                        i17 = i17;
                                        bArrCopyOfRange = bArrCopyOfRange;
                                        iZ2 = iZ2;
                                        iZ = iZ;
                                        str4 = str6;
                                    } else {
                                        throw eg1.a("childAtomSize must be positive", (Exception) null);
                                    }
                                }
                                str5 = str4;
                                if (str3 == null) {
                                    i3 = i3;
                                    i9 = i19;
                                } else {
                                    aVarA = new jc0.a().g(iH13).e(str3).a(str5).o(iZ).f(i24).b(f).k(i3).a(bArrCopyOfRange).n(i20).a(listA).a(f40Var2);
                                    i25 = i23;
                                    if (i25 == -1) {
                                        i27 = i22;
                                        i26 = i21;
                                        if (i27 == -1 || i26 != -1 || byteBufferOrder != null) {
                                        }
                                        if (bVar != null) {
                                            aVarA.b(hq0.b(bVar.c)).j(hq0.b(bVar.d));
                                        }
                                        jc0VarA = aVarA.a();
                                        i9 = i19;
                                    } else {
                                        i24 = iZ2;
                                        f = fX;
                                        i3 = i3;
                                        i26 = i21;
                                        i27 = i22;
                                    }
                                    i24 = iZ2;
                                    f = fX;
                                    i3 = i3;
                                    if (byteBufferOrder != null) {
                                        bArrArray = byteBufferOrder.array();
                                    } else {
                                        bArrArray = null;
                                    }
                                    aVarA.a(new rq(i25, i27, i26, bArrArray));
                                    if (bVar != null) {
                                        aVarA.b(hq0.b(bVar.c)).j(hq0.b(bVar.d));
                                    }
                                    jc0VarA = aVarA.a();
                                    i9 = i19;
                                }
                                ag1Var2.e(iD + i17);
                                i7++;
                                f40Var = f40Var;
                                pairCreate = pairCreate;
                                aVar3 = aVar3;
                                iH2 = i14;
                                jV2 = j4;
                                i = i;
                                str = str;
                                i42 = i15;
                                arrayList3 = arrayList4;
                                w52VarArr = w52VarArr;
                            } else {
                                throw eg1.a("childAtomSize must be positive", (Exception) null);
                            }
                        }
                        j3 = jV2;
                        i10 = i;
                        pair = pairCreate;
                        arrayList = arrayList3;
                        i11 = i42;
                        aVar2 = aVar3;
                        w52VarArr2 = w52VarArr;
                        v52Var = null;
                        i12 = 16;
                        if (z) {
                            aVar3 = aVar2;
                        } else {
                            aVar3 = aVar2;
                            aVarB = aVar3.b(Mp4Box.TYPE_edts);
                            if (aVarB == null) {
                                bVarC = aVarB.c(Mp4Box.TYPE_elst);
                                if (bVarC == null) {
                                    pairCreate2 = null;
                                } else {
                                    ag1Var3 = bVarC.b;
                                    ag1Var3.e(8);
                                    iH3 = (ag1Var3.h() >> 24) & 255;
                                    iX = ag1Var3.x();
                                    jArr3 = new long[iX];
                                    jArr4 = new long[iX];
                                    i13 = 0;
                                    while (i13 < iX) {
                                        if (iH3 == 1) {
                                            jV3 = ag1Var3.y();
                                        } else {
                                            jV3 = ag1Var3.v();
                                        }
                                        jArr3[i13] = jV3;
                                        if (iH3 == 1) {
                                            jH = ag1Var3.p();
                                        } else {
                                            jH = ag1Var3.h();
                                        }
                                        jArr4[i13] = jH;
                                        if (ag1Var3.r() == 1) {
                                            ag1Var3.f(2);
                                            i13++;
                                            iH3 = iH3;
                                        } else {
                                            throw new IllegalArgumentException("Unsupported media rate.");
                                        }
                                    }
                                    pairCreate2 = Pair.create(jArr3, jArr4);
                                }
                                if (pairCreate2 != null) {
                                    jArr = (long[]) pairCreate2.first;
                                    jArr2 = (long[]) pairCreate2.second;
                                }
                            }
                            if (jc0VarA == null) {
                                v52Var2 = new v52(iH13, i10, ((Long) pair.first).longValue(), j3, jA, jc0VarA, i8, w52VarArr2, i9, jArr, jArr2);
                            }
                            v52Var3 = (v52) fe0Var.apply(v52Var2);
                            if (v52Var3 == null) {
                                arrayList2 = arrayList;
                                i37 = 1;
                                i36 = Mp4Box.TYPE_mdia;
                            } else {
                                i36 = Mp4Box.TYPE_mdia;
                                kh.a aVarB5 = aVar3.b(Mp4Box.TYPE_mdia);
                                aVarB5.getClass();
                                kh.a aVarB6 = aVarB5.b(Mp4Box.TYPE_minf);
                                aVarB6.getClass();
                                kh.a aVarB7 = aVarB6.b(Mp4Box.TYPE_stbl);
                                aVarB7.getClass();
                                b62 b62VarA = a(v52Var3, aVarB7, ie0Var);
                                arrayList2 = arrayList;
                                arrayList2.add(b62VarA);
                                i37 = 1;
                            }
                        }
                        jArr = null;
                        jArr2 = null;
                        if (jc0VarA == null) {
                            v52Var2 = new v52(iH13, i10, ((Long) pair.first).longValue(), j3, jA, jc0VarA, i8, w52VarArr2, i9, jArr, jArr2);
                        }
                        v52Var3 = (v52) fe0Var.apply(v52Var2);
                        if (v52Var3 == null) {
                            arrayList2 = arrayList;
                            i37 = 1;
                            i36 = Mp4Box.TYPE_mdia;
                        } else {
                            i36 = Mp4Box.TYPE_mdia;
                            kh.a aVarB8 = aVar3.b(Mp4Box.TYPE_mdia);
                            aVarB8.getClass();
                            kh.a aVarB9 = aVarB8.b(Mp4Box.TYPE_minf);
                            aVarB9.getClass();
                            kh.a aVarB10 = aVarB9.b(Mp4Box.TYPE_stbl);
                            aVarB10.getClass();
                            b62 b62VarA2 = a(v52Var3, aVarB10, ie0Var);
                            arrayList2 = arrayList;
                            arrayList2.add(b62VarA2);
                            i37 = 1;
                        }
                    } else {
                        i2 = SupportMenu.CATEGORY_MASK;
                    }
                    if (iH14 == 0 && iH15 == i2) {
                        if (iH16 == 65536 && iH17 == 0) {
                            i3 = 270;
                        } else {
                            i2 = SupportMenu.CATEGORY_MASK;
                            if (iH14 != i2) {
                                i3 = 0;
                            } else {
                                i3 = 0;
                            }
                        }
                    } else if (iH14 != i2 && iH15 == 0 && iH16 == 0 && iH17 == i2) {
                        i3 = 180;
                    } else {
                        i3 = 0;
                    }
                    if (j == C.TIME_UNSET) {
                        j2 = jV;
                    } else {
                        j2 = j;
                    }
                    ag1Var = bVarC2.b;
                    ag1Var.e(8);
                    if (((ag1Var.h() >> 24) & 255) == 0) {
                        i4 = 8;
                    } else {
                        i4 = 16;
                    }
                    ag1Var.f(i4);
                    jV2 = ag1Var.v();
                    if (j2 == C.TIME_UNSET) {
                        jA = -9223372036854775807L;
                    } else {
                        jA = f92.a(j2, 1000000L, jV2);
                    }
                    kh.a aVarB11 = aVarB2.b(Mp4Box.TYPE_minf);
                    aVarB11.getClass();
                    kh.a aVarB12 = aVarB11.b(Mp4Box.TYPE_stbl);
                    aVarB12.getClass();
                    kh.b bVarC7 = aVarB2.c(Mp4Box.TYPE_mdhd);
                    bVarC7.getClass();
                    ag1 ag1Var8 = bVarC7.b;
                    ag1Var8.e(8);
                    iH = (ag1Var8.h() >> 24) & 255;
                    if (iH == 0) {
                        i5 = 8;
                    } else {
                        i5 = 16;
                    }
                    ag1Var8.f(i5);
                    long jV7 = ag1Var8.v();
                    if (iH == 0) {
                        i6 = 4;
                    } else {
                        i6 = 8;
                    }
                    ag1Var8.f(i6);
                    int iZ8 = ag1Var8.z();
                    pairCreate = Pair.create(Long.valueOf(jV7), "" + ((char) (((iZ8 >> 10) & 31) + 96)) + ((char) (((iZ8 >> 5) & 31) + 96)) + ((char) ((iZ8 & 31) + 96)));
                    kh.b bVarC8 = aVarB12.c(Mp4Box.TYPE_stsd);
                    bVarC8.getClass();
                    ag1Var2 = bVarC8.b;
                    str = (String) pairCreate.second;
                    ag1Var2.e(12);
                    iH2 = ag1Var2.h();
                    w52VarArr = new w52[iH2];
                    i7 = 0;
                    jc0VarA = null;
                    i8 = 0;
                    i9 = 0;
                    while (i7 < iH2) {
                        iD = ag1Var2.d();
                        i14 = iH2;
                        iH4 = ag1Var2.h();
                        i15 = i42;
                        if (iH4 > 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            ArrayList arrayList5 = arrayList3;
                            iH5 = ag1Var2.h();
                            long j6 = jV2;
                            if (iH5 != 1635148593) {
                                z4 = false;
                                i16 = 16;
                                ag1Var2.e(iD + 16);
                                ag1Var2.f(i16);
                                iZ = ag1Var2.z();
                                iZ2 = ag1Var2.z();
                                ag1Var2.f(50);
                                iD2 = ag1Var2.d();
                                if (iH5 == 1701733238) {
                                    i17 = iH4;
                                    iD = iD;
                                    pairA = a(iD, i17, ag1Var2);
                                    if (pairA != null) {
                                        iH5 = ((Integer) pairA.first).intValue();
                                        if (f40Var == null) {
                                            f40VarA = null;
                                        } else {
                                            f40VarA = f40Var.a(((w52) pairA.second).b);
                                        }
                                        w52VarArr[i7] = (w52) pairA.second;
                                    } else {
                                        f40VarA = f40Var;
                                    }
                                    ag1Var2.e(iD2);
                                } else {
                                    i17 = iH4;
                                    iD = iD;
                                    f40VarA = f40Var;
                                }
                                if (iH5 == 1831958048) {
                                    str2 = MimeTypes.VIDEO_MPEG;
                                } else if (iH5 == 1211250227) {
                                    str2 = "video/3gpp";
                                } else {
                                    str2 = null;
                                }
                                i18 = iD2;
                                str = str;
                                z5 = z4;
                                f40Var2 = f40VarA;
                                str3 = str2;
                                fX = 1.0f;
                                i19 = i9;
                                i20 = -1;
                                bArrCopyOfRange = null;
                                list = null;
                                str4 = null;
                                byteBufferOrder = null;
                                bVar = null;
                                i21 = -1;
                                i22 = -1;
                                i23 = -1;
                                while (true) {
                                    if (i18 - iD >= i17) {
                                        i20 = i20;
                                        listA = list;
                                        break;
                                    }
                                    ag1Var2.e(i18);
                                    iD3 = ag1Var2.d();
                                    listA = list;
                                    iH6 = ag1Var2.h();
                                    if (iH6 == 0) {
                                        i20 = i20;
                                        if (ag1Var2.d() - iD == i17) {
                                            break;
                                            break;
                                        }
                                    } else {
                                        i20 = i20;
                                    }
                                    if (iH6 > 0) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    if (z6) {
                                        iH7 = ag1Var2.h();
                                        int i510 = iD;
                                        if (iH7 == 1635148611) {
                                            if (str3 == null) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            if (z8) {
                                                ag1Var2.e(iD3 + 8);
                                                niVarA = ni.a(ag1Var2);
                                                list2 = niVarA.a;
                                                i29 = niVarA.b;
                                                if (!z5) {
                                                    fX = niVarA.e;
                                                }
                                                str8 = niVarA.f;
                                                str9 = "video/avc";
                                            } else {
                                                throw eg1.a((String) null, (Exception) null);
                                            }
                                        } else {
                                            if (iH7 == 1752589123) {
                                                if (str3 == null) {
                                                    z7 = true;
                                                } else {
                                                    z7 = false;
                                                }
                                                if (z7) {
                                                    ag1Var2.e(iD3 + 8);
                                                    tf0VarA = tf0.a(ag1Var2);
                                                    list2 = tf0VarA.a;
                                                    i29 = tf0VarA.b;
                                                    if (!z5) {
                                                        fX = tf0VarA.c;
                                                    }
                                                    str8 = tf0VarA.d;
                                                    str9 = "video/hevc";
                                                } else {
                                                    throw eg1.a((String) null, (Exception) null);
                                                }
                                            } else if (iH7 != 1685480259) {
                                                iZ = iZ;
                                                iZ2 = iZ2;
                                                f2 = fX;
                                                i17 = i17;
                                                bArrCopyOfRange = bArrCopyOfRange;
                                                iH5 = iH5;
                                                str6 = str4;
                                                t30VarA = t30.a(ag1Var2);
                                                if (t30VarA != null) {
                                                    str6 = t30VarA.a;
                                                    str3 = "video/dolby-vision";
                                                }
                                                i20 = i20;
                                                fX = f2;
                                            } else {
                                                iZ = iZ;
                                                iZ2 = iZ2;
                                                f2 = fX;
                                                i17 = i17;
                                                bArrCopyOfRange = bArrCopyOfRange;
                                                iH5 = iH5;
                                                str6 = str4;
                                                t30VarA = t30.a(ag1Var2);
                                                if (t30VarA != null) {
                                                    str6 = t30VarA.a;
                                                    str3 = "video/dolby-vision";
                                                }
                                                i20 = i20;
                                                fX = f2;
                                            }
                                            i18 += iH6;
                                            list = listA;
                                            iD = i510;
                                            iH5 = iH5;
                                            i17 = i17;
                                            bArrCopyOfRange = bArrCopyOfRange;
                                            iZ2 = iZ2;
                                            iZ = iZ;
                                            str4 = str6;
                                        }
                                        iZ = iZ;
                                        iZ2 = iZ2;
                                        str6 = str8;
                                        listA = list2;
                                        i19 = i29;
                                        str3 = str9;
                                        i18 += iH6;
                                        list = listA;
                                        iD = i510;
                                        iH5 = iH5;
                                        i17 = i17;
                                        bArrCopyOfRange = bArrCopyOfRange;
                                        iZ2 = iZ2;
                                        iZ = iZ;
                                        str4 = str6;
                                    } else {
                                        throw eg1.a("childAtomSize must be positive", (Exception) null);
                                    }
                                }
                                str5 = str4;
                                if (str3 == null) {
                                    i3 = i3;
                                    i9 = i19;
                                } else {
                                    aVarA = new jc0.a().g(iH13).e(str3).a(str5).o(iZ).f(i24).b(f).k(i3).a(bArrCopyOfRange).n(i20).a(listA).a(f40Var2);
                                    i25 = i23;
                                    if (i25 == -1) {
                                        i27 = i22;
                                        i26 = i21;
                                        if (i27 == -1) {
                                        }
                                        if (bVar != null) {
                                            aVarA.b(hq0.b(bVar.c)).j(hq0.b(bVar.d));
                                        }
                                        jc0VarA = aVarA.a();
                                        i9 = i19;
                                    } else {
                                        i24 = iZ2;
                                        f = fX;
                                        i3 = i3;
                                        i26 = i21;
                                        i27 = i22;
                                    }
                                    i24 = iZ2;
                                    f = fX;
                                    i3 = i3;
                                    if (byteBufferOrder != null) {
                                        bArrArray = byteBufferOrder.array();
                                    } else {
                                        bArrArray = null;
                                    }
                                    aVarA.a(new rq(i25, i27, i26, bArrArray));
                                    if (bVar != null) {
                                        aVarA.b(hq0.b(bVar.c)).j(hq0.b(bVar.d));
                                    }
                                    jc0VarA = aVarA.a();
                                    i9 = i19;
                                }
                            } else {
                                z4 = false;
                                i16 = 16;
                                ag1Var2.e(iD + 16);
                                ag1Var2.f(i16);
                                iZ = ag1Var2.z();
                                iZ2 = ag1Var2.z();
                                ag1Var2.f(50);
                                iD2 = ag1Var2.d();
                                if (iH5 == 1701733238) {
                                    i17 = iH4;
                                    iD = iD;
                                    pairA = a(iD, i17, ag1Var2);
                                    if (pairA != null) {
                                        iH5 = ((Integer) pairA.first).intValue();
                                        if (f40Var == null) {
                                            f40VarA = null;
                                        } else {
                                            f40VarA = f40Var.a(((w52) pairA.second).b);
                                        }
                                        w52VarArr[i7] = (w52) pairA.second;
                                    } else {
                                        f40VarA = f40Var;
                                    }
                                    ag1Var2.e(iD2);
                                } else {
                                    i17 = iH4;
                                    iD = iD;
                                    f40VarA = f40Var;
                                }
                                if (iH5 == 1831958048) {
                                    str2 = MimeTypes.VIDEO_MPEG;
                                } else if (iH5 == 1211250227) {
                                    str2 = "video/3gpp";
                                } else {
                                    str2 = null;
                                }
                                i18 = iD2;
                                str = str;
                                z5 = z4;
                                f40Var2 = f40VarA;
                                str3 = str2;
                                fX = 1.0f;
                                i19 = i9;
                                i20 = -1;
                                bArrCopyOfRange = null;
                                list = null;
                                str4 = null;
                                byteBufferOrder = null;
                                bVar = null;
                                i21 = -1;
                                i22 = -1;
                                i23 = -1;
                                while (true) {
                                    if (i18 - iD >= i17) {
                                        i20 = i20;
                                        listA = list;
                                        break;
                                    }
                                    ag1Var2.e(i18);
                                    iD3 = ag1Var2.d();
                                    listA = list;
                                    iH6 = ag1Var2.h();
                                    if (iH6 == 0) {
                                        i20 = i20;
                                        if (ag1Var2.d() - iD == i17) {
                                            break;
                                            break;
                                        }
                                    } else {
                                        i20 = i20;
                                    }
                                    if (iH6 > 0) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    if (z6) {
                                        iH7 = ag1Var2.h();
                                        int i511 = iD;
                                        if (iH7 == 1635148611) {
                                            if (str3 == null) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            if (z8) {
                                                ag1Var2.e(iD3 + 8);
                                                niVarA = ni.a(ag1Var2);
                                                list2 = niVarA.a;
                                                i29 = niVarA.b;
                                                if (!z5) {
                                                    fX = niVarA.e;
                                                }
                                                str8 = niVarA.f;
                                                str9 = "video/avc";
                                            } else {
                                                throw eg1.a((String) null, (Exception) null);
                                            }
                                        } else {
                                            if (iH7 == 1752589123) {
                                                if (str3 == null) {
                                                    z7 = true;
                                                } else {
                                                    z7 = false;
                                                }
                                                if (z7) {
                                                    ag1Var2.e(iD3 + 8);
                                                    tf0VarA = tf0.a(ag1Var2);
                                                    list2 = tf0VarA.a;
                                                    i29 = tf0VarA.b;
                                                    if (!z5) {
                                                        fX = tf0VarA.c;
                                                    }
                                                    str8 = tf0VarA.d;
                                                    str9 = "video/hevc";
                                                } else {
                                                    throw eg1.a((String) null, (Exception) null);
                                                }
                                            } else if (iH7 != 1685480259) {
                                                iZ = iZ;
                                                iZ2 = iZ2;
                                                f2 = fX;
                                                i17 = i17;
                                                bArrCopyOfRange = bArrCopyOfRange;
                                                iH5 = iH5;
                                                str6 = str4;
                                                t30VarA = t30.a(ag1Var2);
                                                if (t30VarA != null) {
                                                    str6 = t30VarA.a;
                                                    str3 = "video/dolby-vision";
                                                }
                                                i20 = i20;
                                                fX = f2;
                                            } else {
                                                iZ = iZ;
                                                iZ2 = iZ2;
                                                f2 = fX;
                                                i17 = i17;
                                                bArrCopyOfRange = bArrCopyOfRange;
                                                iH5 = iH5;
                                                str6 = str4;
                                                t30VarA = t30.a(ag1Var2);
                                                if (t30VarA != null) {
                                                    str6 = t30VarA.a;
                                                    str3 = "video/dolby-vision";
                                                }
                                                i20 = i20;
                                                fX = f2;
                                            }
                                            i18 += iH6;
                                            list = listA;
                                            iD = i511;
                                            iH5 = iH5;
                                            i17 = i17;
                                            bArrCopyOfRange = bArrCopyOfRange;
                                            iZ2 = iZ2;
                                            iZ = iZ;
                                            str4 = str6;
                                        }
                                        iZ = iZ;
                                        iZ2 = iZ2;
                                        str6 = str8;
                                        listA = list2;
                                        i19 = i29;
                                        str3 = str9;
                                        i18 += iH6;
                                        list = listA;
                                        iD = i511;
                                        iH5 = iH5;
                                        i17 = i17;
                                        bArrCopyOfRange = bArrCopyOfRange;
                                        iZ2 = iZ2;
                                        iZ = iZ;
                                        str4 = str6;
                                    } else {
                                        throw eg1.a("childAtomSize must be positive", (Exception) null);
                                    }
                                }
                                str5 = str4;
                                if (str3 == null) {
                                    i3 = i3;
                                    i9 = i19;
                                } else {
                                    aVarA = new jc0.a().g(iH13).e(str3).a(str5).o(iZ).f(i24).b(f).k(i3).a(bArrCopyOfRange).n(i20).a(listA).a(f40Var2);
                                    i25 = i23;
                                    if (i25 == -1) {
                                        i27 = i22;
                                        i26 = i21;
                                        if (i27 == -1) {
                                        }
                                        if (bVar != null) {
                                            aVarA.b(hq0.b(bVar.c)).j(hq0.b(bVar.d));
                                        }
                                        jc0VarA = aVarA.a();
                                        i9 = i19;
                                    } else {
                                        i24 = iZ2;
                                        f = fX;
                                        i3 = i3;
                                        i26 = i21;
                                        i27 = i22;
                                    }
                                    i24 = iZ2;
                                    f = fX;
                                    i3 = i3;
                                    if (byteBufferOrder != null) {
                                        bArrArray = byteBufferOrder.array();
                                    } else {
                                        bArrArray = null;
                                    }
                                    aVarA.a(new rq(i25, i27, i26, bArrArray));
                                    if (bVar != null) {
                                        aVarA.b(hq0.b(bVar.c)).j(hq0.b(bVar.d));
                                    }
                                    jc0VarA = aVarA.a();
                                    i9 = i19;
                                }
                            }
                            ag1Var2.e(iD + i17);
                            i7++;
                            f40Var = f40Var;
                            pairCreate = pairCreate;
                            aVar3 = aVar3;
                            iH2 = i14;
                            jV2 = j6;
                            i = i;
                            str = str;
                            i42 = i15;
                            arrayList3 = arrayList5;
                            w52VarArr = w52VarArr;
                        } else {
                            throw eg1.a("childAtomSize must be positive", (Exception) null);
                        }
                    }
                    j3 = jV2;
                    i10 = i;
                    pair = pairCreate;
                    arrayList = arrayList3;
                    i11 = i42;
                    aVar2 = aVar3;
                    w52VarArr2 = w52VarArr;
                    v52Var = null;
                    i12 = 16;
                    if (z) {
                        aVar3 = aVar2;
                        aVarB = aVar3.b(Mp4Box.TYPE_edts);
                        if (aVarB == null) {
                            bVarC = aVarB.c(Mp4Box.TYPE_elst);
                            if (bVarC == null) {
                                pairCreate2 = null;
                            } else {
                                ag1Var3 = bVarC.b;
                                ag1Var3.e(8);
                                iH3 = (ag1Var3.h() >> 24) & 255;
                                iX = ag1Var3.x();
                                jArr3 = new long[iX];
                                jArr4 = new long[iX];
                                i13 = 0;
                                while (i13 < iX) {
                                    if (iH3 == 1) {
                                        jV3 = ag1Var3.y();
                                    } else {
                                        jV3 = ag1Var3.v();
                                    }
                                    jArr3[i13] = jV3;
                                    if (iH3 == 1) {
                                        jH = ag1Var3.p();
                                    } else {
                                        jH = ag1Var3.h();
                                    }
                                    jArr4[i13] = jH;
                                    if (ag1Var3.r() == 1) {
                                        ag1Var3.f(2);
                                        i13++;
                                        iH3 = iH3;
                                    } else {
                                        throw new IllegalArgumentException("Unsupported media rate.");
                                    }
                                }
                                pairCreate2 = Pair.create(jArr3, jArr4);
                            }
                            if (pairCreate2 != null) {
                                jArr = (long[]) pairCreate2.first;
                                jArr2 = (long[]) pairCreate2.second;
                            }
                        }
                        if (jc0VarA == null) {
                            v52Var2 = new v52(iH13, i10, ((Long) pair.first).longValue(), j3, jA, jc0VarA, i8, w52VarArr2, i9, jArr, jArr2);
                        }
                        v52Var3 = (v52) fe0Var.apply(v52Var2);
                        if (v52Var3 == null) {
                            arrayList2 = arrayList;
                            i37 = 1;
                            i36 = Mp4Box.TYPE_mdia;
                        } else {
                            i36 = Mp4Box.TYPE_mdia;
                            kh.a aVarB13 = aVar3.b(Mp4Box.TYPE_mdia);
                            aVarB13.getClass();
                            kh.a aVarB14 = aVarB13.b(Mp4Box.TYPE_minf);
                            aVarB14.getClass();
                            kh.a aVarB15 = aVarB14.b(Mp4Box.TYPE_stbl);
                            aVarB15.getClass();
                            b62 b62VarA3 = a(v52Var3, aVarB15, ie0Var);
                            arrayList2 = arrayList;
                            arrayList2.add(b62VarA3);
                            i37 = 1;
                        }
                    } else {
                        aVar3 = aVar2;
                    }
                    jArr = null;
                    jArr2 = null;
                    if (jc0VarA == null) {
                        v52Var2 = new v52(iH13, i10, ((Long) pair.first).longValue(), j3, jA, jc0VarA, i8, w52VarArr2, i9, jArr, jArr2);
                    }
                    v52Var3 = (v52) fe0Var.apply(v52Var2);
                    if (v52Var3 == null) {
                        arrayList2 = arrayList;
                        i37 = 1;
                        i36 = Mp4Box.TYPE_mdia;
                    } else {
                        i36 = Mp4Box.TYPE_mdia;
                        kh.a aVarB16 = aVar3.b(Mp4Box.TYPE_mdia);
                        aVarB16.getClass();
                        kh.a aVarB17 = aVarB16.b(Mp4Box.TYPE_minf);
                        aVarB17.getClass();
                        kh.a aVarB18 = aVarB17.b(Mp4Box.TYPE_stbl);
                        aVarB18.getClass();
                        b62 b62VarA4 = a(v52Var3, aVarB18, ie0Var);
                        arrayList2 = arrayList;
                        arrayList2.add(b62VarA4);
                        i37 = 1;
                    }
                }
                v52Var2 = v52Var;
                v52Var3 = (v52) fe0Var.apply(v52Var2);
                if (v52Var3 == null) {
                    arrayList2 = arrayList;
                    i37 = 1;
                    i36 = Mp4Box.TYPE_mdia;
                } else {
                    i36 = Mp4Box.TYPE_mdia;
                    kh.a aVarB19 = aVar3.b(Mp4Box.TYPE_mdia);
                    aVarB19.getClass();
                    kh.a aVarB110 = aVarB19.b(Mp4Box.TYPE_minf);
                    aVarB110.getClass();
                    kh.a aVarB111 = aVarB110.b(Mp4Box.TYPE_stbl);
                    aVarB111.getClass();
                    b62 b62VarA5 = a(v52Var3, aVarB111, ie0Var);
                    arrayList2 = arrayList;
                    arrayList2.add(b62VarA5);
                    i37 = 1;
                }
            }
            i42 = i11 + 1;
            i39 = i37;
            i38 = i36;
            arrayList3 = arrayList2;
            i40 = i12;
            i41 = 8;
        }
        return arrayList3;
    }
}
