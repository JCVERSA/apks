package e3;

import android.util.Pair;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import androidx.media3.common.y;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import k2.e0;
import k2.f0;
import k2.k0;
import k2.v0;
import org.mvel2.ast.ASTNode;

public abstract class b {

    private static final byte[] f59259a = a1.u0("OpusHead");

    private static final class a {

        private final long f59260a;

        private final long f59261b;

        public a(long j10, long j11) {
            this.f59260a = j10;
            this.f59261b = j11;
        }
    }

    private static final class C0717b {

        public final int f59262a;

        public int f59263b;

        public int f59264c;

        public long f59265d;

        private final boolean f59266e;

        private final j0 f59267f;

        private final j0 f59268g;

        private int f59269h;

        private int f59270i;

        public C0717b(j0 j0Var, j0 j0Var2, boolean z10) throws ParserException {
            this.f59268g = j0Var;
            this.f59267f = j0Var2;
            this.f59266e = z10;
            j0Var2.W(12);
            this.f59262a = j0Var2.L();
            j0Var.W(12);
            this.f59270i = j0Var.L();
            k2.u.a(j0Var.q() == 1, "first_chunk must be 1");
            this.f59263b = -1;
        }

        public boolean a() {
            int i10 = this.f59263b + 1;
            this.f59263b = i10;
            if (i10 == this.f59262a) {
                return false;
            }
            this.f59265d = this.f59266e ? this.f59267f.O() : this.f59267f.J();
            if (this.f59263b == this.f59269h) {
                this.f59264c = this.f59268g.L();
                this.f59268g.X(4);
                int i11 = this.f59270i - 1;
                this.f59270i = i11;
                this.f59269h = i11 > 0 ? this.f59268g.L() - 1 : -1;
            }
            return true;
        }
    }

    private static final class c {

        private final String f59271a;

        private final byte[] f59272b;

        private final long f59273c;

        private final long f59274d;

        public c(String str, byte[] bArr, long j10, long j11) {
            this.f59271a = str;
            this.f59272b = bArr;
            this.f59273c = j10;
            this.f59274d = j11;
        }
    }

    private static final class d {

        private final g f59275a;

        public d(g gVar) {
            this.f59275a = gVar;
        }
    }

    private static final class e {

        private final long f59276a;

        private final long f59277b;

        private final String f59278c;

        public e(long j10, long j11, String str) {
            this.f59276a = j10;
            this.f59277b = j11;
            this.f59278c = str;
        }
    }

    private interface f {
        int a();

        int getSampleCount();

        int readNextSampleSize();
    }

    private static final class g {

        private final boolean f59279a;

        private final boolean f59280b;

        private final boolean f59281c;

        public g(boolean z10, boolean z11, boolean z12) {
            this.f59279a = z10;
            this.f59280b = z11;
            this.f59281c = z12;
        }
    }

    private static final class h {

        public final u[] f59282a;

        public androidx.media3.common.r f59283b;

        public int f59284c;

        public int f59285d = 0;

        public h(int i10) {
            this.f59282a = new u[i10];
        }
    }

    static final class i implements f {

        private final int f59286a;

        private final int f59287b;

        private final j0 f59288c;

        public i(androidx.media3.container.d.c cVar, androidx.media3.common.r rVar) {
            j0 j0Var = cVar.f10275b;
            this.f59288c = j0Var;
            j0Var.W(12);
            int iL = j0Var.L();
            if (MimeTypes.AUDIO_RAW.equals(rVar.f9849o)) {
                int iK0 = a1.k0(rVar.G, rVar.E);
                if (iL == 0 || iL % iK0 != 0) {
                    androidx.media3.common.util.u.h("BoxParsers", "Audio sample size mismatch. stsd sample size: " + iK0 + ", stsz sample size: " + iL);
                    iL = iK0;
                }
            }
            this.f59286a = iL == 0 ? -1 : iL;
            this.f59287b = j0Var.L();
        }

        @Override
        public int a() {
            return this.f59286a;
        }

        @Override
        public int getSampleCount() {
            return this.f59287b;
        }

        @Override
        public int readNextSampleSize() {
            int i10 = this.f59286a;
            return i10 == -1 ? this.f59288c.L() : i10;
        }
    }

    static final class j implements f {

        private final j0 f59289a;

        private final int f59290b;

        private final int f59291c;

        private int f59292d;

        private int f59293e;

        public j(androidx.media3.container.d.c cVar) {
            j0 j0Var = cVar.f10275b;
            this.f59289a = j0Var;
            j0Var.W(12);
            this.f59291c = j0Var.L() & 255;
            this.f59290b = j0Var.L();
        }

        @Override
        public int a() {
            return -1;
        }

        @Override
        public int getSampleCount() {
            return this.f59290b;
        }

        @Override
        public int readNextSampleSize() {
            int i10 = this.f59291c;
            if (i10 == 8) {
                return this.f59289a.H();
            }
            if (i10 == 16) {
                return this.f59289a.P();
            }
            int i11 = this.f59292d;
            this.f59292d = i11 + 1;
            if (i11 % 2 != 0) {
                return this.f59293e & 15;
            }
            int iH = this.f59289a.H();
            this.f59293e = iH;
            return (iH & 240) >> 4;
        }
    }

    private static final class k {

        private final int f59294a;

        private final long f59295b;

        private final int f59296c;

        private final int f59297d;

        public k(int i10, long j10, int i11, int i12) {
            this.f59294a = i10;
            this.f59295b = j10;
            this.f59296c = i11;
            this.f59297d = i12;
        }
    }

    static final class l {

        private final d f59298a;

        public l(d dVar) {
            this.f59298a = dVar;
        }

        public boolean b() {
            d dVar = this.f59298a;
            return dVar != null && dVar.f59275a.f59279a && this.f59298a.f59275a.f59280b;
        }
    }

    public static w A(t tVar, androidx.media3.container.d.b bVar, e0 e0Var) throws ParserException {
        f jVar;
        boolean z10;
        int iL;
        int iL2;
        int iL3;
        int i10;
        int i11;
        long[] jArr;
        int[] iArr;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        int i12;
        boolean z11;
        int i13;
        t tVarA;
        int[] iArr2;
        long[] jArr2;
        int[] iArr3;
        long j10;
        long j11;
        int i14;
        int i15;
        int iQ;
        int i16;
        int[] iArr4;
        int[] iArr5;
        int i17;
        t tVarA2 = tVar;
        androidx.media3.container.d.c cVarE = bVar.e(1937011578);
        if (cVarE != null) {
            jVar = new i(cVarE, tVarA2.f59408g);
        } else {
            androidx.media3.container.d.c cVarE2 = bVar.e(1937013298);
            if (cVarE2 == null) {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
            jVar = new j(cVarE2);
        }
        int sampleCount = jVar.getSampleCount();
        if (sampleCount == 0) {
            return new w(tVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        if (tVarA2.f59403b == 2) {
            long j12 = tVarA2.f59407f;
            if (j12 > 0) {
                tVarA2 = tVarA2.a(tVarA2.f59408g.b().b0(sampleCount / (j12 / 1000000.0f)).N());
            }
        }
        androidx.media3.container.d.c cVarE3 = bVar.e(1937007471);
        if (cVarE3 == null) {
            cVarE3 = (androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1668232756));
            z10 = true;
        } else {
            z10 = false;
        }
        j0 j0Var = cVarE3.f10275b;
        j0 j0Var2 = ((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1937011555))).f10275b;
        j0 j0Var3 = ((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1937011827))).f10275b;
        androidx.media3.container.d.c cVarE4 = bVar.e(1937011571);
        j0 j0Var4 = cVarE4 != null ? cVarE4.f10275b : null;
        androidx.media3.container.d.c cVarE5 = bVar.e(1668576371);
        j0 j0Var5 = cVarE5 != null ? cVarE5.f10275b : null;
        C0717b c0717b = new C0717b(j0Var2, j0Var, z10);
        j0Var3.W(12);
        int iL4 = j0Var3.L() - 1;
        int iL5 = j0Var3.L();
        int iL6 = j0Var3.L();
        if (j0Var5 != null) {
            j0Var5.W(12);
            iL = j0Var5.L();
        } else {
            iL = 0;
        }
        if (j0Var4 != null) {
            j0Var4.W(12);
            iL3 = j0Var4.L();
            if (iL3 > 0) {
                iL2 = j0Var4.L() - 1;
            } else {
                iL2 = -1;
                j0Var4 = null;
            }
        } else {
            iL2 = -1;
            iL3 = 0;
        }
        int iA = jVar.a();
        String str = tVarA2.f59408g.f9849o;
        if (iA != -1 && (MimeTypes.AUDIO_RAW.equals(str) || MimeTypes.AUDIO_MLAW.equals(str) || MimeTypes.AUDIO_ALAW.equals(str)) && iL4 == 0 && iL == 0 && iL3 == 0) {
            int i18 = c0717b.f59262a;
            long[] jArr3 = new long[i18];
            int[] iArr6 = new int[i18];
            while (c0717b.a()) {
                int i19 = c0717b.f59263b;
                jArr3[i19] = c0717b.f59265d;
                iArr6[i19] = c0717b.f59264c;
            }
            e3.d.b bVarA = e3.d.a(iA, jArr3, iArr6, iL6);
            jArr = bVarA.f59303a;
            int[] iArr7 = bVarA.f59304b;
            int i20 = bVarA.f59305c;
            long[] jArr4 = bVarA.f59306d;
            int[] iArr8 = bVarA.f59307e;
            long j13 = bVarA.f59308f;
            j11 = bVarA.f59309g;
            tVarA = tVarA2;
            iArr2 = iArr7;
            i10 = i20;
            jArr2 = jArr4;
            iArr3 = iArr8;
            j10 = j13;
        } else {
            long[] jArr5 = new long[sampleCount];
            int[] iArr9 = new int[sampleCount];
            long[] jArr6 = new long[sampleCount];
            int[] iArr10 = new int[sampleCount];
            int i21 = iL4;
            int iL7 = iL2;
            int i22 = iL;
            i10 = 0;
            int i23 = 0;
            int iQ2 = 0;
            int iL8 = 0;
            long j14 = 0;
            long j15 = 0;
            long j16 = 0;
            t tVar2 = tVarA2;
            int i24 = 0;
            while (true) {
                if (i24 >= sampleCount) {
                    i11 = iL3;
                    jArr = jArr5;
                    iArr = iArr9;
                    jArrCopyOf = jArr6;
                    iArrCopyOf = iArr10;
                    i12 = i23;
                    break;
                }
                long j17 = j15;
                int i25 = i23;
                boolean zA = true;
                while (i25 == 0) {
                    zA = c0717b.a();
                    if (!zA) {
                        break;
                    }
                    int i26 = iL6;
                    long j18 = c0717b.f59265d;
                    i25 = c0717b.f59264c;
                    j17 = j18;
                    iL6 = i26;
                    iL3 = iL3;
                    sampleCount = sampleCount;
                }
                int i27 = sampleCount;
                int i28 = iL6;
                i11 = iL3;
                if (!zA) {
                    androidx.media3.common.util.u.h("BoxParsers", "Unexpected end of chunk data");
                    long[] jArrCopyOf2 = Arrays.copyOf(jArr5, i24);
                    int[] iArrCopyOf2 = Arrays.copyOf(iArr9, i24);
                    jArrCopyOf = Arrays.copyOf(jArr6, i24);
                    iArrCopyOf = Arrays.copyOf(iArr10, i24);
                    jArr = jArrCopyOf2;
                    iArr = iArrCopyOf2;
                    sampleCount = i24;
                    i12 = i25;
                    break;
                }
                if (j0Var5 != null) {
                    while (iL8 == 0 && i22 > 0) {
                        iL8 = j0Var5.L();
                        iQ2 = j0Var5.q();
                        i22--;
                    }
                    iL8--;
                }
                int i29 = iQ2;
                jArr5[i24] = j17;
                int nextSampleSize = jVar.readNextSampleSize();
                iArr9[i24] = nextSampleSize;
                C0717b c0717b2 = c0717b;
                f fVar = jVar;
                j16 += (long) nextSampleSize;
                if (nextSampleSize > i10) {
                    i10 = nextSampleSize;
                }
                jArr6[i24] = j14 + ((long) i29);
                iArr10[i24] = j0Var4 == null ? 1 : 0;
                if (i24 == iL7) {
                    iArr10[i24] = 1;
                    i15 = i11 - 1;
                    if (i15 > 0) {
                        iL7 = ((j0) androidx.media3.common.util.a.e(j0Var4)).L() - 1;
                    }
                    i14 = iL7;
                } else {
                    i14 = iL7;
                    i15 = i11;
                }
                j14 += (long) i28;
                iL5--;
                if (iL5 != 0 || i21 <= 0) {
                    iQ = i28;
                    i16 = i21;
                } else {
                    int iL9 = j0Var3.L();
                    iQ = j0Var3.q();
                    i16 = i21 - 1;
                    iL5 = iL9;
                }
                int i30 = iQ;
                long j19 = j17 + ((long) iArr9[i24]);
                i23 = i25 - 1;
                i24++;
                j15 = j19;
                iQ2 = i29;
                iL7 = i14;
                sampleCount = i27;
                c0717b = c0717b2;
                int i31 = i16;
                iL6 = i30;
                i21 = i31;
                iL3 = i15;
                jVar = fVar;
            }
            long j20 = j14 + ((long) iQ2);
            if (j0Var5 == null) {
                z11 = true;
                break;
            }
            while (true) {
                if (i22 <= 0) {
                    z11 = true;
                    break;
                }
                if (j0Var5.L() != 0) {
                    z11 = false;
                    break;
                }
                j0Var5.q();
                i22--;
            }
            if (i11 == 0 && iL5 == 0 && i12 == 0 && i21 == 0) {
                i13 = iL8;
                if (i13 == 0 && z11) {
                    tVarA = tVar2;
                }
                iArr2 = iArr;
                jArr2 = jArrCopyOf;
                iArr3 = iArrCopyOf;
                j10 = j20;
                j11 = j16;
            } else {
                i13 = iL8;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Inconsistent stbl box for track ");
            tVarA = tVar2;
            sb2.append(tVarA.f59402a);
            sb2.append(": remainingSynchronizationSamples ");
            sb2.append(i11);
            sb2.append(", remainingSamplesAtTimestampDelta ");
            sb2.append(iL5);
            sb2.append(", remainingSamplesInChunk ");
            sb2.append(i12);
            sb2.append(", remainingTimestampDeltaChanges ");
            sb2.append(i21);
            sb2.append(", remainingSamplesAtTimestampOffset ");
            sb2.append(i13);
            sb2.append(!z11 ? ", ctts invalid" : "");
            androidx.media3.common.util.u.h("BoxParsers", sb2.toString());
            iArr2 = iArr;
            jArr2 = jArrCopyOf;
            iArr3 = iArrCopyOf;
            j10 = j20;
            j11 = j16;
        }
        long j21 = tVarA.f59407f;
        if (j21 > 0) {
            long jG1 = a1.g1(j11 * 8, 1000000L, j21, RoundingMode.HALF_DOWN);
            if (jG1 > 0 && jG1 < 2147483647L) {
                tVarA = tVarA.a(tVarA.f59408g.b().Q((int) jG1).N());
            }
        }
        int[] iArr11 = iArr3;
        long jE1 = a1.e1(j10, 1000000L, tVarA.f59404c);
        long[] jArr7 = tVarA.f59410i;
        if (jArr7 == null) {
            a1.f1(jArr2, 1000000L, tVarA.f59404c);
            return new w(tVarA, jArr, iArr2, i10, jArr2, iArr11, jE1);
        }
        if (jArr7.length == 1 && tVarA.f59403b == 1 && jArr2.length >= 2) {
            long j22 = ((long[]) androidx.media3.common.util.a.e(tVarA.f59411j))[0];
            iArr4 = iArr11;
            long jE2 = a1.e1(tVarA.f59410i[0], tVarA.f59404c, tVarA.f59405d) + j22;
            if (b(jArr2, j10, j22, jE2)) {
                long j23 = j10 - jE2;
                long jE3 = a1.e1(j22 - jArr2[0], tVarA.f59408g.F, tVarA.f59404c);
                long jE4 = a1.e1(j23, tVarA.f59408g.F, tVarA.f59404c);
                if ((jE3 != 0 || jE4 != 0) && jE3 <= 2147483647L && jE4 <= 2147483647L) {
                    e0Var.f63572a = (int) jE3;
                    e0Var.f63573b = (int) jE4;
                    a1.f1(jArr2, 1000000L, tVarA.f59404c);
                    return new w(tVarA, jArr, iArr2, i10, jArr2, iArr4, a1.e1(tVarA.f59410i[0], 1000000L, tVarA.f59405d));
                }
            }
        } else {
            iArr4 = iArr11;
        }
        long[] jArr8 = tVarA.f59410i;
        if (jArr8.length == 1 && jArr8[0] == 0) {
            long j24 = ((long[]) androidx.media3.common.util.a.e(tVarA.f59411j))[0];
            for (int i32 = 0; i32 < jArr2.length; i32++) {
                jArr2[i32] = a1.e1(jArr2[i32] - j24, 1000000L, tVarA.f59404c);
            }
            return new w(tVarA, jArr, iArr2, i10, jArr2, iArr4, a1.e1(j10 - j24, 1000000L, tVarA.f59404c));
        }
        boolean z12 = tVarA.f59403b == 1;
        int[] iArr12 = new int[jArr8.length];
        int[] iArr13 = new int[jArr8.length];
        long[] jArr9 = (long[]) androidx.media3.common.util.a.e(tVarA.f59411j);
        boolean z13 = false;
        int i33 = 0;
        int i34 = 0;
        int i35 = 0;
        while (true) {
            long[] jArr10 = tVarA.f59410i;
            if (i33 >= jArr10.length) {
                break;
            }
            int i36 = i10;
            long j25 = jArr9[i33];
            if (j25 != -1) {
                boolean z14 = z13;
                long jE5 = a1.e1(jArr10[i33], tVarA.f59404c, tVarA.f59405d);
                iArr12[i33] = a1.h(jArr2, j25, true, true);
                long j26 = j25 + jE5;
                iArr13[i33] = a1.d(jArr2, j26, z12, false);
                int i37 = iArr12[i33];
                while (true) {
                    i17 = iArr12[i33];
                    if (i17 < 0 || (iArr4[i17] & 1) != 0) {
                        break;
                    }
                    iArr12[i33] = i17 - 1;
                }
                if (i17 < 0) {
                    iArr12[i33] = i37;
                    while (true) {
                        int i38 = iArr12[i33];
                        if (i38 >= iArr13[i33] || (iArr4[i38] & 1) != 0) {
                            break;
                        }
                        iArr12[i33] = i38 + 1;
                    }
                }
                if (tVarA.f59403b == 2 && iArr12[i33] != iArr13[i33]) {
                    while (true) {
                        int i39 = iArr13[i33];
                        if (i39 >= jArr2.length - 1 || jArr2[i39 + 1] > j26) {
                            break;
                        }
                        iArr13[i33] = i39 + 1;
                    }
                }
                int i40 = iArr13[i33];
                int i41 = iArr12[i33];
                i34 += i40 - i41;
                z13 = z14 | (i35 != i41);
                i35 = i40;
            }
            i33++;
            jArr9 = jArr9;
            iArr2 = iArr2;
            i10 = i36;
            sampleCount = sampleCount;
        }
        int[] iArr14 = iArr2;
        int i42 = i10;
        int i43 = 0;
        boolean z15 = z13 | (i34 != sampleCount);
        long[] jArr11 = z15 ? new long[i34] : jArr;
        int[] iArr15 = z15 ? new int[i34] : iArr14;
        int i44 = z15 ? 0 : i42;
        int[] iArr16 = z15 ? new int[i34] : iArr4;
        long[] jArr12 = new long[i34];
        boolean z16 = false;
        int i45 = 0;
        int i46 = i44;
        long j27 = 0;
        while (i43 < tVarA.f59410i.length) {
            long j28 = tVarA.f59411j[i43];
            int i47 = iArr12[i43];
            int[] iArr17 = iArr12;
            int i48 = iArr13[i43];
            if (z15) {
                int i49 = i48 - i47;
                System.arraycopy(jArr, i47, jArr11, i45, i49);
                System.arraycopy(iArr14, i47, iArr15, i45, i49);
                iArr5 = iArr4;
                System.arraycopy(iArr5, i47, iArr16, i45, i49);
            } else {
                iArr5 = iArr4;
            }
            boolean z17 = z16;
            iArr4 = iArr5;
            int i50 = i46;
            while (i47 < i48) {
                int i51 = i48;
                int i52 = i43;
                long jE6 = a1.e1(j27, 1000000L, tVarA.f59405d);
                long j29 = j27;
                long jE7 = a1.e1(jArr2[i47] - j28, 1000000L, tVarA.f59404c);
                if (jE7 < 0) {
                    z17 = true;
                }
                jArr12[i45] = jE6 + jE7;
                if (z15 && iArr15[i45] > i50) {
                    i50 = iArr14[i47];
                }
                i45++;
                i47++;
                j27 = j29;
                i43 = i52;
                i48 = i51;
            }
            int i53 = i43;
            j27 += tVarA.f59410i[i53];
            i43 = i53 + 1;
            i46 = i50;
            z16 = z17;
            iArr12 = iArr17;
            iArr13 = iArr13;
            jArr = jArr;
        }
        long jE8 = a1.e1(j27, 1000000L, tVarA.f59405d);
        if (z16) {
            tVarA = tVarA.a(tVarA.f59408g.b().c0(true).N());
        }
        return new w(tVarA, jArr11, iArr15, i46, jArr12, iArr16, jE8);
    }

    private static d B(j0 j0Var, int i10, int i11) throws ParserException {
        j0Var.W(i10 + 8);
        int iF = j0Var.f();
        while (iF - i10 < i11) {
            j0Var.W(iF);
            int iQ = j0Var.q();
            k2.u.a(iQ > 0, "childAtomSize must be positive");
            if (j0Var.q() == 1937011305) {
                j0Var.X(4);
                int iH = j0Var.H();
                return new d(new g((iH & 1) == 1, (iH & 2) == 2, (iH & 8) == 8));
            }
            iF += iQ;
        }
        return null;
    }

    private static h C(j0 j0Var, int i10, int i11, String str, DrmInitData drmInitData, boolean z10) throws ParserException {
        int i12;
        j0Var.W(12);
        int iQ = j0Var.q();
        h hVar = new h(iQ);
        for (int i13 = 0; i13 < iQ; i13++) {
            int iF = j0Var.f();
            int iQ2 = j0Var.q();
            k2.u.a(iQ2 > 0, "childAtomSize must be positive");
            int iQ3 = j0Var.q();
            if (iQ3 == 1635148593 || iQ3 == 1635148595 || iQ3 == 1701733238 || iQ3 == 1831958048 || iQ3 == 1836070006 || iQ3 == 1752589105 || iQ3 == 1751479857 || iQ3 == 1932670515 || iQ3 == 1211250227 || iQ3 == 1748121139 || iQ3 == 1987063864 || iQ3 == 1987063865 || iQ3 == 1635135537 || iQ3 == 1685479798 || iQ3 == 1685479729 || iQ3 == 1685481573 || iQ3 == 1685481521 || iQ3 == 1634760241) {
                i12 = iF;
                K(j0Var, iQ3, i12, iQ2, i10, str, i11, drmInitData, hVar, i13);
            } else if (iQ3 == 1836069985 || iQ3 == 1701733217 || iQ3 == 1633889587 || iQ3 == 1700998451 || iQ3 == 1633889588 || iQ3 == 1835823201 || iQ3 == 1685353315 || iQ3 == 1685353317 || iQ3 == 1685353320 || iQ3 == 1685353324 || iQ3 == 1685353336 || iQ3 == 1935764850 || iQ3 == 1935767394 || iQ3 == 1819304813 || iQ3 == 1936684916 || iQ3 == 1953984371 || iQ3 == 778924082 || iQ3 == 778924083 || iQ3 == 1835557169 || iQ3 == 1835560241 || iQ3 == 1634492771 || iQ3 == 1634492791 || iQ3 == 1970037111 || iQ3 == 1332770163 || iQ3 == 1716281667 || iQ3 == 1767992678) {
                i12 = iF;
                h(j0Var, iQ3, iF, iQ2, i10, str, z10, drmInitData, hVar, i13);
            } else {
                if (iQ3 == 1414810956 || iQ3 == 1954034535 || iQ3 == 2004251764 || iQ3 == 1937010800 || iQ3 == 1664495672) {
                    D(j0Var, iQ3, iF, iQ2, i10, str, hVar);
                } else if (iQ3 == 1835365492) {
                    u(j0Var, iQ3, iF, i10, hVar);
                } else if (iQ3 == 1667329389) {
                    hVar.f59283b = new androidx.media3.common.r.b().e0(i10).u0(MimeTypes.APPLICATION_CAMERA_MOTION).N();
                }
                i12 = iF;
            }
            j0Var.W(i12 + iQ2);
        }
        return hVar;
    }

    private static void D(j0 j0Var, int i10, int i11, int i12, int i13, String str, h hVar) {
        j0Var.W(i11 + 16);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableListOf = null;
        long j10 = Long.MAX_VALUE;
        if (i10 != 1414810956) {
            if (i10 == 1954034535) {
                int i14 = i12 - 16;
                byte[] bArr = new byte[i14];
                j0Var.l(bArr, 0, i14);
                immutableListOf = ImmutableList.of(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i10 == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i10 == 1937010800) {
                j10 = 0;
            } else {
                if (i10 != 1664495672) {
                    throw new IllegalStateException();
                }
                hVar.f59285d = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        hVar.f59283b = new androidx.media3.common.r.b().e0(i13).u0(str2).j0(str).y0(j10).g0(immutableListOf).N();
    }

    private static k E(j0 j0Var) {
        long j10;
        int i10;
        j0Var.W(8);
        int iP = p(j0Var.q());
        j0Var.X(iP == 0 ? 8 : 16);
        int iQ = j0Var.q();
        j0Var.X(4);
        int iF = j0Var.f();
        int i11 = iP == 0 ? 4 : 8;
        int i12 = 0;
        while (true) {
            j10 = C.TIME_UNSET;
            if (i12 >= i11) {
                j0Var.X(i11);
                break;
            }
            if (j0Var.e()[iF + i12] != -1) {
                long J = iP == 0 ? j0Var.J() : j0Var.O();
                if (J == 0) {
                    break;
                }
                j10 = J;
                break;
            }
            i12++;
        }
        j0Var.X(10);
        int iP2 = j0Var.P();
        j0Var.X(4);
        int iQ2 = j0Var.q();
        int iQ3 = j0Var.q();
        j0Var.X(4);
        int iQ4 = j0Var.q();
        int iQ5 = j0Var.q();
        if (iQ2 == 0 && iQ3 == 65536 && iQ4 == -65536 && iQ5 == 0) {
            i10 = 90;
        } else if (iQ2 == 0 && iQ3 == -65536 && iQ4 == 65536 && iQ5 == 0) {
            i10 = 270;
        } else {
            i10 = (iQ2 == -65536 && iQ3 == 0 && iQ4 == 0 && iQ5 == -65536) ? 180 : 0;
        }
        return new k(iQ, j10, iP2, i10);
    }

    public static t F(androidx.media3.container.d.b bVar, androidx.media3.container.d.c cVar, long j10, DrmInitData drmInitData, boolean z10, boolean z11) throws ParserException {
        long[] jArr;
        long[] jArr2;
        androidx.media3.common.r rVarN;
        androidx.media3.container.d.b bVarD;
        Pair pairL;
        androidx.media3.container.d.b bVar2 = (androidx.media3.container.d.b) androidx.media3.common.util.a.e(bVar.d(1835297121));
        int iE = e(q(((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar2.e(1751411826))).f10275b));
        if (iE == -1) {
            return null;
        }
        k kVarE = E(((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1953196132))).f10275b);
        long jE1 = C.TIME_UNSET;
        long j11 = j10 == C.TIME_UNSET ? kVarE.f59295b : j10;
        long j12 = v(cVar.f10275b).f10280c;
        if (j11 != C.TIME_UNSET) {
            jE1 = a1.e1(j11, 1000000L, j12);
        }
        long j13 = jE1;
        androidx.media3.container.d.b bVar3 = (androidx.media3.container.d.b) androidx.media3.common.util.a.e(((androidx.media3.container.d.b) androidx.media3.common.util.a.e(bVar2.d(1835626086))).d(1937007212));
        e eVarS = s(((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar2.e(1835296868))).f10275b);
        androidx.media3.container.d.c cVarE = bVar3.e(1937011556);
        if (cVarE == null) {
            throw ParserException.createForMalformedContainer("Malformed sample table (stbl) missing sample description (stsd)", null);
        }
        h hVarC = C(cVarE.f10275b, kVarE.f59294a, kVarE.f59297d, eVarS.f59278c, drmInitData, z11);
        if (z10 || (bVarD = bVar.d(1701082227)) == null || (pairL = l(bVarD)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) pairL.first;
            jArr2 = (long[]) pairL.second;
            jArr = jArr3;
        }
        if (hVarC.f59283b == null) {
            return null;
        }
        if (kVarE.f59296c != 0) {
            androidx.media3.container.c cVar2 = new androidx.media3.container.c(kVarE.f59296c);
            androidx.media3.common.r.b bVarB = hVarC.f59283b.b();
            androidx.media3.common.x xVar = hVarC.f59283b.f9846l;
            rVarN = bVarB.n0(xVar != null ? xVar.a(cVar2) : new androidx.media3.common.x(cVar2)).N();
        } else {
            rVarN = hVarC.f59283b;
        }
        return new t(kVarE.f59294a, iE, eVarS.f59276a, j12, j13, eVarS.f59277b, rVarN, hVarC.f59285d, hVarC.f59282a, hVarC.f59284c, jArr, jArr2);
    }

    public static List G(androidx.media3.container.d.b bVar, e0 e0Var, long j10, DrmInitData drmInitData, boolean z10, boolean z11, com.google.common.base.f fVar) {
        t tVar;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < bVar.f10274d.size(); i10++) {
            androidx.media3.container.d.b bVar2 = (androidx.media3.container.d.b) bVar.f10274d.get(i10);
            if (bVar2.f10271a == 1953653099 && (tVar = (t) fVar.apply(F(bVar2, (androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1836476516)), j10, drmInitData, z10, z11))) != null) {
                arrayList.add(A(tVar, (androidx.media3.container.d.b) androidx.media3.common.util.a.e(((androidx.media3.container.d.b) androidx.media3.common.util.a.e(((androidx.media3.container.d.b) androidx.media3.common.util.a.e(bVar2.d(1835297121))).d(1835626086))).d(1937007212)), e0Var));
            }
        }
        return arrayList;
    }

    public static androidx.media3.common.x H(androidx.media3.container.d.c cVar) {
        j0 j0Var = cVar.f10275b;
        j0Var.W(8);
        androidx.media3.common.x xVar = new androidx.media3.common.x(new androidx.media3.common.x.a[0]);
        while (j0Var.a() >= 8) {
            int iF = j0Var.f();
            int iQ = j0Var.q();
            int iQ2 = j0Var.q();
            if (iQ2 == 1835365473) {
                j0Var.W(iF);
                xVar = xVar.b(I(j0Var, iF + iQ));
            } else if (iQ2 == 1936553057) {
                j0Var.W(iF);
                xVar = xVar.b(r.b(j0Var, iF + iQ));
            } else if (iQ2 == -1451722374) {
                xVar = xVar.b(L(j0Var));
            }
            j0Var.W(iF + iQ);
        }
        return xVar;
    }

    private static androidx.media3.common.x I(j0 j0Var, int i10) {
        j0Var.X(8);
        f(j0Var);
        while (j0Var.f() < i10) {
            int iF = j0Var.f();
            int iQ = j0Var.q();
            if (j0Var.q() == 1768715124) {
                j0Var.W(iF);
                return r(j0Var, iF + iQ);
            }
            j0Var.W(iF + iQ);
        }
        return null;
    }

    static l J(j0 j0Var, int i10, int i11) throws ParserException {
        j0Var.W(i10 + 8);
        int iF = j0Var.f();
        d dVarB = null;
        while (iF - i10 < i11) {
            j0Var.W(iF);
            int iQ = j0Var.q();
            k2.u.a(iQ > 0, "childAtomSize must be positive");
            if (j0Var.q() == 1702454643) {
                dVarB = B(j0Var, iF, iQ);
            }
            iF += iQ;
        }
        if (dVarB == null) {
            return null;
        }
        return new l(dVarB);
    }

    private static void K(j0 j0Var, int i10, int i11, int i12, int i13, String str, int i14, DrmInitData drmInitData, h hVar, int i15) throws ParserException {
        String str2;
        DrmInitData drmInitData2;
        int i16;
        int i17;
        float f10;
        int i18;
        int i19;
        int i20;
        int i21 = i11;
        int i22 = i12;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        h hVar2 = hVar;
        j0Var.W(i21 + 16);
        j0Var.X(16);
        int iP = j0Var.P();
        int iP2 = j0Var.P();
        j0Var.X(50);
        int iF = j0Var.f();
        int iIntValue = i10;
        if (iIntValue == 1701733238) {
            Pair pairY = y(j0Var, i21, i22);
            if (pairY != null) {
                iIntValue = ((Integer) pairY.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((u) pairY.second).f59415b);
                hVar2.f59282a[i15] = (u) pairY.second;
            }
            j0Var.W(iF);
        }
        String str3 = MimeTypes.VIDEO_H263;
        if (iIntValue == 1831958048) {
            str2 = MimeTypes.VIDEO_MPEG;
        } else {
            str2 = iIntValue == 1211250227 ? MimeTypes.VIDEO_H263 : null;
        }
        float fW = 1.0f;
        int i23 = 8;
        int i24 = 8;
        List listOf = null;
        String str4 = null;
        byte[] bArrX = null;
        int i25 = -1;
        int i26 = -1;
        int i27 = -1;
        int i28 = -1;
        int i29 = -1;
        int iK = -1;
        ByteBuffer byteBufferA = null;
        a aVarJ = null;
        c cVarM = null;
        androidx.media3.container.g.k kVar = null;
        boolean z10 = false;
        while (iF - i21 < i22) {
            j0Var.W(iF);
            int iF2 = j0Var.f();
            int iQ = j0Var.q();
            if (iQ == 0 && j0Var.f() - i21 == i22) {
                break;
            }
            k2.u.a(iQ > 0, "childAtomSize must be positive");
            int iQ2 = j0Var.q();
            if (iQ2 == 1635148611) {
                k2.u.a(str2 == null, null);
                j0Var.W(iF2 + 8);
                k2.d dVarB = k2.d.b(j0Var);
                List list = dVarB.f63535a;
                hVar2.f59284c = dVarB.f63536b;
                if (!z10) {
                    fW = dVarB.f63545k;
                }
                String str5 = dVarB.f63546l;
                int i30 = dVarB.f63544j;
                int i31 = dVarB.f63541g;
                int i32 = dVarB.f63542h;
                int i33 = dVarB.f63543i;
                int i34 = dVarB.f63539e;
                int i35 = dVarB.f63540f;
                drmInitData2 = drmInitDataCopyWithSchemeType;
                i26 = i30;
                i29 = i32;
                iK = i33;
                i23 = i34;
                listOf = list;
                str2 = MimeTypes.VIDEO_H264;
                str4 = str5;
                i16 = i31;
                i24 = i35;
            } else {
                if (iQ2 == 1752589123) {
                    k2.u.a(str2 == null, null);
                    j0Var.W(iF2 + 8);
                    f0 f0VarA = f0.a(j0Var);
                    List list2 = f0VarA.f63574a;
                    hVar2.f59284c = f0VarA.f63575b;
                    if (!z10) {
                        fW = f0VarA.f63585l;
                    }
                    int i36 = f0VarA.f63586m;
                    int i37 = f0VarA.f63576c;
                    String str6 = f0VarA.f63587n;
                    int i38 = f0VarA.f63584k;
                    listOf = list2;
                    if (i38 != -1) {
                        i25 = i38;
                    }
                    int i39 = f0VarA.f63581h;
                    int i40 = f0VarA.f63582i;
                    int i41 = f0VarA.f63583j;
                    int i42 = f0VarA.f63579f;
                    int i43 = f0VarA.f63580g;
                    kVar = f0VarA.f63588o;
                    drmInitData2 = drmInitDataCopyWithSchemeType;
                    iP2 = iP2;
                    iIntValue = iIntValue;
                    i29 = i40;
                    iK = i41;
                    i23 = i42;
                    i26 = i36;
                    str2 = MimeTypes.VIDEO_H265;
                    i27 = i37;
                    i16 = i39;
                    str4 = str6;
                    i24 = i43;
                } else {
                    drmInitData2 = drmInitDataCopyWithSchemeType;
                    if (iQ2 == 1818785347) {
                        k2.u.a(MimeTypes.VIDEO_H265.equals(str2), "lhvC must follow hvcC atom");
                        androidx.media3.container.g.k kVar2 = kVar;
                        k2.u.a(kVar2 != null && kVar2.f10334b.size() >= 2, "must have at least two layers");
                        j0Var.W(iF2 + 8);
                        f0 f0VarC = f0.c(j0Var, (androidx.media3.container.g.k) androidx.media3.common.util.a.e(kVar2));
                        k2.u.a(hVar2.f59284c == f0VarC.f63575b, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms");
                        int i44 = f0VarC.f63581h;
                        i16 = i28;
                        if (i44 != -1) {
                            k2.u.a(i16 == i44, "colorSpace must be the same for both views");
                        }
                        int i45 = f0VarC.f63582i;
                        int i46 = i29;
                        if (i45 != -1) {
                            k2.u.a(i46 == i45, "colorRange must be the same for both views");
                        }
                        int i47 = f0VarC.f63583j;
                        if (i47 != -1) {
                            int i48 = iK;
                            i20 = i48;
                            k2.u.a(i48 == i47, "colorTransfer must be the same for both views");
                        } else {
                            i20 = iK;
                        }
                        k2.u.a(i23 == f0VarC.f63579f, "bitdepthLuma must be the same for both views");
                        k2.u.a(i24 == f0VarC.f63580g, "bitdepthChroma must be the same for both views");
                        List list3 = listOf;
                        if (list3 != null) {
                            listOf = ImmutableList.builder().l(list3).l(f0VarC.f63574a).e();
                        } else {
                            listOf = list3;
                            k2.u.a(false, "initializationData must be already set from hvcC atom");
                        }
                        kVar = kVar2;
                        str2 = "video/mv-hevc";
                        i29 = i46;
                        iK = i20;
                        str4 = f0VarC.f63587n;
                    } else {
                        List listH = listOf;
                        i16 = i28;
                        i29 = i29;
                        iK = iK;
                        androidx.media3.container.g.k kVar3 = kVar;
                        if (iQ2 == 1986361461) {
                            l lVarJ = J(j0Var, iF2, iQ);
                            if (lVarJ == null || lVarJ.f59298a == null) {
                                i19 = i25;
                                i25 = i19;
                            } else if (kVar3 == null || kVar3.f10334b.size() < 2) {
                                i19 = i25;
                                if (i19 == -1) {
                                    i25 = lVarJ.f59298a.f59275a.f59281c ? 5 : 4;
                                } else {
                                    i25 = i19;
                                }
                            } else {
                                k2.u.a(lVarJ.b(), "both eye views must be marked as available");
                                k2.u.a(!lVarJ.f59298a.f59275a.f59281c, "for MV-HEVC, eye_views_reversed must be set to false");
                                i19 = i25;
                                i25 = i19;
                            }
                            kVar = kVar3;
                            iP2 = iP2;
                            iIntValue = iIntValue;
                            listOf = listH;
                            i29 = i29;
                            iK = iK;
                        } else {
                            int i49 = i25;
                            if (iQ2 == 1685480259 || iQ2 == 1685485123) {
                                i17 = i49;
                                iP2 = iP2;
                                iIntValue = iIntValue;
                                i24 = i24;
                                f10 = fW;
                                i23 = i23;
                                i18 = iK;
                                k2.o oVarA = k2.o.a(j0Var);
                                if (oVarA != null) {
                                    str2 = "video/dolby-vision";
                                    str4 = oVarA.f63661c;
                                }
                            } else if (iQ2 == 1987076931) {
                                k2.u.a(str2 == null, null);
                                String str7 = iIntValue == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                                j0Var.W(iF2 + 12);
                                byte bH = (byte) j0Var.H();
                                byte bH2 = (byte) j0Var.H();
                                int iH = j0Var.H();
                                i24 = iH >> 4;
                                byte b10 = (byte) ((iH >> 1) & 7);
                                if (str7.equals(MimeTypes.VIDEO_VP9)) {
                                    listH = androidx.media3.common.util.j.h(bH, bH2, (byte) i24, b10);
                                }
                                boolean z11 = (iH & 1) != 0;
                                int iH2 = j0Var.H();
                                int iH3 = j0Var.H();
                                int iJ = androidx.media3.common.i.j(iH2);
                                i29 = z11 ? 1 : 2;
                                iK = androidx.media3.common.i.k(iH3);
                                str2 = str7;
                                iP2 = iP2;
                                i23 = i24;
                                kVar = kVar3;
                                i16 = iJ;
                                listOf = listH;
                                i25 = i49;
                                iIntValue = iIntValue;
                            } else if (iQ2 == 1635135811) {
                                int i50 = iQ - 8;
                                byte[] bArr = new byte[i50];
                                j0Var.l(bArr, 0, i50);
                                listOf = ImmutableList.of(bArr);
                                j0Var.W(iF2 + 8);
                                androidx.media3.common.i iVarI = i(j0Var);
                                int i51 = iVarI.f9763e;
                                int i52 = iVarI.f9764f;
                                i16 = iVarI.f9759a;
                                int i53 = iVarI.f9760b;
                                iK = iVarI.f9761c;
                                i23 = i51;
                                iP2 = iP2;
                                iIntValue = iIntValue;
                                i29 = i53;
                                kVar = kVar3;
                                i25 = i49;
                                i24 = i52;
                                str2 = "video/av01";
                            } else if (iQ2 == 1668050025) {
                                if (byteBufferA == null) {
                                    byteBufferA = a();
                                }
                                ByteBuffer byteBuffer = byteBufferA;
                                byteBuffer.position(21);
                                byteBuffer.putShort(j0Var.D());
                                byteBuffer.putShort(j0Var.D());
                                byteBufferA = byteBuffer;
                                iP2 = iP2;
                                iIntValue = iIntValue;
                                kVar = kVar3;
                                listOf = listH;
                                i29 = i29;
                                iK = iK;
                                i25 = i49;
                            } else {
                                if (iQ2 == 1835295606) {
                                    if (byteBufferA == null) {
                                        byteBufferA = a();
                                    }
                                    ByteBuffer byteBuffer2 = byteBufferA;
                                    short sD = j0Var.D();
                                    short sD2 = j0Var.D();
                                    iIntValue = iIntValue;
                                    short sD3 = j0Var.D();
                                    short sD4 = j0Var.D();
                                    int i54 = i24;
                                    short sD5 = j0Var.D();
                                    int i55 = i23;
                                    short sD6 = j0Var.D();
                                    i17 = i49;
                                    short sD7 = j0Var.D();
                                    float f11 = fW;
                                    short sD8 = j0Var.D();
                                    long J = j0Var.J();
                                    long J2 = j0Var.J();
                                    iP2 = iP2;
                                    byteBuffer2.position(1);
                                    byteBuffer2.putShort(sD5);
                                    byteBuffer2.putShort(sD6);
                                    byteBuffer2.putShort(sD);
                                    byteBuffer2.putShort(sD2);
                                    byteBuffer2.putShort(sD3);
                                    byteBuffer2.putShort(sD4);
                                    byteBuffer2.putShort(sD7);
                                    byteBuffer2.putShort(sD8);
                                    byteBuffer2.putShort((short) (J / 10000));
                                    byteBuffer2.putShort((short) (J2 / 10000));
                                    byteBufferA = byteBuffer2;
                                    i24 = i54;
                                    i23 = i55;
                                    listOf = listH;
                                    fW = f11;
                                } else {
                                    i17 = i49;
                                    iP2 = iP2;
                                    iIntValue = iIntValue;
                                    i24 = i24;
                                    f10 = fW;
                                    i23 = i23;
                                    if (iQ2 == 1681012275) {
                                        k2.u.a(str2 == null, null);
                                        str2 = str3;
                                    } else if (iQ2 == 1702061171) {
                                        k2.u.a(str2 == null, null);
                                        cVarM = m(j0Var, iF2);
                                        String str8 = cVarM.f59271a;
                                        byte[] bArr2 = cVarM.f59272b;
                                        listOf = bArr2 != null ? ImmutableList.of(bArr2) : listH;
                                        str2 = str8;
                                        fW = f10;
                                    } else if (iQ2 == 1651798644) {
                                        aVarJ = j(j0Var, iF2);
                                    } else {
                                        if (iQ2 == 1885434736) {
                                            fW = w(j0Var, iF2);
                                            i24 = i24;
                                            i23 = i23;
                                            listOf = listH;
                                            i29 = i29;
                                            iK = iK;
                                            z10 = true;
                                        } else if (iQ2 == 1937126244) {
                                            bArrX = x(j0Var, iF2, iQ);
                                        } else if (iQ2 == 1936995172) {
                                            int iH4 = j0Var.H();
                                            j0Var.X(3);
                                            if (iH4 == 0) {
                                                int iH5 = j0Var.H();
                                                if (iH5 == 0) {
                                                    i17 = 0;
                                                } else if (iH5 == 1) {
                                                    i17 = 1;
                                                } else if (iH5 == 2) {
                                                    i17 = 2;
                                                } else if (iH5 == 3) {
                                                    i17 = 3;
                                                }
                                            }
                                        } else if (iQ2 == 1634760259) {
                                            int i56 = iQ - 12;
                                            byte[] bArr3 = new byte[i56];
                                            j0Var.W(iF2 + 12);
                                            j0Var.l(bArr3, 0, i56);
                                            listOf = ImmutableList.of(bArr3);
                                            androidx.media3.common.i iVarG = g(new j0(bArr3));
                                            int i57 = iVarG.f9763e;
                                            int i58 = iVarG.f9764f;
                                            int i59 = iVarG.f9759a;
                                            int i60 = iVarG.f9760b;
                                            iK = iVarG.f9761c;
                                            i23 = i57;
                                            i24 = i58;
                                            i29 = i60;
                                            fW = f10;
                                            i16 = i59;
                                            str2 = "video/apv";
                                            kVar = kVar3;
                                            i25 = i17;
                                        } else if (iQ2 == 1668246642) {
                                            i18 = iK;
                                            if (i16 == -1 && i18 == -1) {
                                                int iQ3 = j0Var.q();
                                                if (iQ3 == 1852009592 || iQ3 == 1852009571) {
                                                    int iP3 = j0Var.P();
                                                    int iP4 = j0Var.P();
                                                    j0Var.X(2);
                                                    boolean z12 = iQ == 19 && (j0Var.H() & 128) != 0;
                                                    int iJ2 = androidx.media3.common.i.j(iP3);
                                                    int i61 = z12 ? 1 : 2;
                                                    i24 = i24;
                                                    i23 = i23;
                                                    listOf = listH;
                                                    fW = f10;
                                                    iK = androidx.media3.common.i.k(iP4);
                                                    i29 = i61;
                                                    i16 = iJ2;
                                                } else {
                                                    androidx.media3.common.util.u.h("BoxParsers", "Unsupported color type: " + androidx.media3.container.d.a(iQ3));
                                                }
                                            }
                                        } else {
                                            i18 = iK;
                                        }
                                        int i62 = i17;
                                        kVar = kVar3;
                                        i25 = i62;
                                    }
                                    listOf = listH;
                                    fW = f10;
                                }
                                int i63 = i17;
                                kVar = kVar3;
                                i25 = i63;
                            }
                            i24 = i24;
                            i23 = i23;
                            listOf = listH;
                            i29 = i29;
                            fW = f10;
                            iK = i18;
                            int i64 = i17;
                            kVar = kVar3;
                            i25 = i64;
                        }
                    }
                }
                iF += iQ;
                i21 = i11;
                i22 = i12;
                hVar2 = hVar;
                iIntValue = iIntValue;
                drmInitDataCopyWithSchemeType = drmInitData2;
                iP2 = iP2;
                i28 = i16;
                str3 = str3;
            }
            iF += iQ;
            i21 = i11;
            i22 = i12;
            hVar2 = hVar;
            iIntValue = iIntValue;
            drmInitDataCopyWithSchemeType = drmInitData2;
            iP2 = iP2;
            i28 = i16;
            str3 = str3;
        }
        DrmInitData drmInitData3 = drmInitDataCopyWithSchemeType;
        int i65 = iP2;
        float f12 = fW;
        List list4 = listOf;
        int i66 = i25;
        int i67 = i28;
        int i68 = i29;
        int i69 = iK;
        int i70 = i24;
        int i71 = i23;
        if (str2 == null) {
            return;
        }
        androidx.media3.common.r.b bVarT = new androidx.media3.common.r.b().e0(i13).u0(str2).S(str4).B0(iP).d0(i65).q0(f12).t0(i14).r0(bArrX).x0(i66).g0(list4).l0(i26).m0(i27).Y(drmInitData3).j0(str).T(new androidx.media3.common.i.b().d(i67).c(i68).e(i69).f(byteBufferA != null ? byteBufferA.array() : null).g(i71).b(i70).a());
        if (aVarJ != null) {
            bVarT.Q(Ints.n(aVarJ.f59260a)).p0(Ints.n(aVarJ.f59261b));
        } else if (cVarM != null) {
            bVarT.Q(Ints.n(cVarM.f59273c)).p0(Ints.n(cVarM.f59274d));
        }
        hVar.f59283b = bVarT.N();
    }

    private static androidx.media3.common.x L(j0 j0Var) {
        short sD = j0Var.D();
        j0Var.X(2);
        String strE = j0Var.E(sD);
        int iMax = Math.max(strE.lastIndexOf(43), strE.lastIndexOf(45));
        try {
            return new androidx.media3.common.x(new androidx.media3.container.e(Float.parseFloat(strE.substring(0, iMax)), Float.parseFloat(strE.substring(iMax, strE.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean b(long[] jArr, long j10, long j11, long j12) {
        int length = jArr.length - 1;
        return jArr[0] <= j11 && j11 < jArr[a1.p(4, 0, length)] && jArr[a1.p(jArr.length - 4, 0, length)] < j12 && j12 <= j10;
    }

    private static int c(j0 j0Var, int i10, int i11, int i12) throws ParserException {
        int iF = j0Var.f();
        k2.u.a(iF >= i11, null);
        while (iF - i11 < i12) {
            j0Var.W(iF);
            int iQ = j0Var.q();
            k2.u.a(iQ > 0, "childAtomSize must be positive");
            if (j0Var.q() == i10) {
                return iF;
            }
            iF += iQ;
        }
        return -1;
    }

    private static String d(int i10) {
        char[] cArr = {(char) (((i10 >> 10) & 31) + 96), (char) (((i10 >> 5) & 31) + 96), (char) ((i10 & 31) + 96)};
        for (int i11 = 0; i11 < 3; i11++) {
            char c10 = cArr[i11];
            if (c10 < 'a' || c10 > 'z') {
                return null;
            }
        }
        return new String(cArr);
    }

    private static int e(int i10) {
        if (i10 == 1936684398) {
            return 1;
        }
        if (i10 == 1986618469) {
            return 2;
        }
        if (i10 == 1952807028 || i10 == 1935832172 || i10 == 1937072756 || i10 == 1668047728) {
            return 3;
        }
        return i10 == 1835365473 ? 5 : -1;
    }

    public static void f(j0 j0Var) {
        int iF = j0Var.f();
        j0Var.X(4);
        if (j0Var.q() != 1751411826) {
            iF += 4;
        }
        j0Var.W(iF);
    }

    private static androidx.media3.common.i g(j0 j0Var) {
        androidx.media3.common.i.b bVar = new androidx.media3.common.i.b();
        i0 i0Var = new i0(j0Var.e());
        i0Var.p(j0Var.f() * 8);
        i0Var.s(1);
        int iH = i0Var.h(8);
        for (int i10 = 0; i10 < iH; i10++) {
            i0Var.s(1);
            int iH2 = i0Var.h(8);
            for (int i11 = 0; i11 < iH2; i11++) {
                i0Var.r(6);
                boolean zG = i0Var.g();
                i0Var.q();
                i0Var.s(11);
                i0Var.r(4);
                int iH3 = i0Var.h(4) + 8;
                bVar.g(iH3);
                bVar.b(iH3);
                i0Var.s(1);
                if (zG) {
                    int iH4 = i0Var.h(8);
                    int iH5 = i0Var.h(8);
                    i0Var.s(1);
                    bVar.d(androidx.media3.common.i.j(iH4)).c(i0Var.g() ? 1 : 2).e(androidx.media3.common.i.k(iH5));
                }
            }
        }
        return bVar.a();
    }

    /* JADX WARN: Code duplicated, block: B:143:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:145:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:146:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:149:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:151:0x0212  */
    /* JADX WARN: Code duplicated, block: B:152:0x0225  */
    /* JADX WARN: Code duplicated, block: B:155:0x0243  */
    /* JADX WARN: Code duplicated, block: B:156:0x0249  */
    /* JADX WARN: Code duplicated, block: B:159:0x0265  */
    /* JADX WARN: Code duplicated, block: B:161:0x026c  */
    /* JADX WARN: Code duplicated, block: B:163:0x0279  */
    /* JADX WARN: Code duplicated, block: B:165:0x0281  */
    /* JADX WARN: Code duplicated, block: B:166:0x0286  */
    /* JADX WARN: Code duplicated, block: B:167:0x0291  */
    /* JADX WARN: Code duplicated, block: B:172:0x029d  */
    /* JADX WARN: Code duplicated, block: B:215:0x0436  */
    /* JADX WARN: Code duplicated, block: B:217:0x0439  */
    /* JADX WARN: Code duplicated, block: B:219:0x0440  */
    /* JADX WARN: Code duplicated, block: B:221:0x044e  */
    /* JADX WARN: Code duplicated, block: B:223:0x0456  */
    /* JADX WARN: Code duplicated, block: B:224:0x045b  */
    /* JADX WARN: Code duplicated, block: B:226:0x0463  */
    /* JADX WARN: Code duplicated, block: B:246:0x0471 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x0471 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x008d  */
    /* JADX WARN: Code duplicated, block: B:95:0x0156  */
    private static void h(j0 j0Var, int i10, int i11, int i12, int i13, String str, boolean z10, DrmInitData drmInitData, h hVar, int i14) throws ParserException {
        int iP;
        int i15;
        int i16;
        int iL;
        int iRound;
        String str2;
        int i17;
        String str3;
        List listOf;
        c cVarM;
        int iQ;
        boolean z11;
        int iQ2;
        int iC;
        byte[] bArr;
        char c10;
        ImmutableList immutableListOf;
        int iH;
        byte[] bArr2;
        int iH2;
        int i18;
        byte[] bArr3;
        int iIntValue = i10;
        int i19 = i11;
        int i20 = i12;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        j0Var.W(i19 + 16);
        if (z10) {
            iP = j0Var.P();
            j0Var.X(6);
        } else {
            j0Var.X(8);
            iP = 0;
        }
        if (iP == 0 || iP == 1) {
            int iP2 = j0Var.P();
            j0Var.X(6);
            int I = j0Var.I();
            j0Var.W(j0Var.f() - 4);
            int iQ3 = j0Var.q();
            if (iP == 1) {
                j0Var.X(16);
            }
            i15 = iQ3;
            i16 = -1;
            iL = iP2;
            iRound = I;
        } else {
            if (iP != 2) {
                return;
            }
            j0Var.X(16);
            iRound = (int) Math.round(j0Var.o());
            iL = j0Var.L();
            j0Var.X(4);
            int iL2 = j0Var.L();
            int iL3 = j0Var.L();
            boolean z12 = (iL3 & 1) != 0;
            boolean z13 = (iL3 & 2) != 0;
            if (z12) {
                if (iL2 == 32) {
                    i16 = 4;
                } else {
                    i16 = -1;
                }
            } else if (iL2 == 8) {
                i16 = 3;
            } else if (iL2 == 16) {
                i16 = z13 ? ASTNode.DEOP : 2;
            } else if (iL2 == 24) {
                i16 = z13 ? 1342177280 : 21;
            } else if (iL2 == 32) {
                i16 = z13 ? 1610612736 : 22;
            } else {
                i16 = -1;
            }
            j0Var.X(8);
            i15 = 0;
        }
        if (iIntValue == 1767992678) {
            iRound = -1;
            iL = -1;
        } else {
            if (iIntValue != 1935764850) {
                iRound = iIntValue == 1935767394 ? 16000 : 8000;
            }
            iL = 1;
        }
        int iF = j0Var.f();
        if (iIntValue == 1701733217) {
            Pair pairY = y(j0Var, i19, i20);
            if (pairY != null) {
                iIntValue = ((Integer) pairY.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((u) pairY.second).f59415b);
                hVar.f59282a[i14] = (u) pairY.second;
            }
            j0Var.W(iF);
        }
        String str4 = "audio/mhm1";
        if (iIntValue == 1633889587) {
            str2 = MimeTypes.AUDIO_AC3;
        } else if (iIntValue == 1700998451) {
            str2 = MimeTypes.AUDIO_E_AC3;
        } else if (iIntValue == 1633889588) {
            str2 = "audio/ac4";
        } else if (iIntValue == 1685353315) {
            str2 = MimeTypes.AUDIO_DTS;
        } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
            str2 = MimeTypes.AUDIO_DTS_HD;
        } else if (iIntValue == 1685353317) {
            str2 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (iIntValue == 1685353336) {
            str2 = "audio/vnd.dts.uhd;profile=p2";
        } else if (iIntValue == 1935764850) {
            str2 = MimeTypes.AUDIO_AMR_NB;
        } else {
            if (iIntValue != 1935767394) {
                if (iIntValue == 1936684916) {
                    str2 = MimeTypes.AUDIO_RAW;
                    i17 = 2;
                } else if (iIntValue == 1953984371) {
                    str2 = MimeTypes.AUDIO_RAW;
                    i17 = ASTNode.DEOP;
                } else if (iIntValue == 1819304813) {
                    if (i16 == -1) {
                        str2 = MimeTypes.AUDIO_RAW;
                        i17 = 2;
                    } else {
                        str2 = MimeTypes.AUDIO_RAW;
                    }
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = MimeTypes.AUDIO_MPEG;
                } else if (iIntValue == 1835557169) {
                    str2 = "audio/mha1";
                } else if (iIntValue == 1835560241) {
                    i17 = i16;
                    str2 = "audio/mhm1";
                } else if (iIntValue == 1634492771) {
                    str2 = MimeTypes.AUDIO_ALAC;
                } else if (iIntValue == 1634492791) {
                    str2 = MimeTypes.AUDIO_ALAW;
                } else if (iIntValue == 1970037111) {
                    str2 = MimeTypes.AUDIO_MLAW;
                } else if (iIntValue == 1332770163) {
                    str2 = MimeTypes.AUDIO_OPUS;
                } else if (iIntValue == 1716281667) {
                    str2 = MimeTypes.AUDIO_FLAC;
                } else if (iIntValue == 1835823201) {
                    str2 = MimeTypes.AUDIO_TRUEHD;
                } else if (iIntValue == 1767992678) {
                    str2 = "audio/iamf";
                } else {
                    i17 = i16;
                    str2 = null;
                }
                int i21 = i17;
                str3 = null;
                listOf = null;
                cVarM = null;
                a aVarJ = null;
                while (iF - i19 < i20) {
                    j0Var.W(iF);
                    iQ = j0Var.q();
                    if (iQ > 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    k2.u.a(z11, "childAtomSize must be positive");
                    iQ2 = j0Var.q();
                    if (iQ2 == 1835557187) {
                        j0Var.W(iF + 8);
                        j0Var.X(1);
                        iH2 = j0Var.H();
                        j0Var.X(1);
                        if (Objects.equals(str2, str4)) {
                            i18 = 0;
                            str3 = String.format("mhm1.%02X", Integer.valueOf(iH2));
                        } else {
                            i18 = 0;
                            str3 = String.format("mha1.%02X", Integer.valueOf(iH2));
                        }
                        int iP3 = j0Var.P();
                        bArr3 = new byte[iP3];
                        j0Var.l(bArr3, i18, iP3);
                        if (listOf == null) {
                            listOf = ImmutableList.of(bArr3);
                        } else {
                            listOf = ImmutableList.of(bArr3, (byte[]) listOf.get(i18));
                        }
                    } else {
                        str4 = str4;
                        if (iQ2 == 1835557200) {
                            j0Var.W(iF + 8);
                            iH = j0Var.H();
                            if (iH > 0) {
                                bArr2 = new byte[iH];
                                j0Var.l(bArr2, 0, iH);
                                if (listOf == null) {
                                    listOf = ImmutableList.of(bArr2);
                                } else {
                                    listOf = ImmutableList.of((byte[]) listOf.get(0), bArr2);
                                }
                            }
                        } else {
                            if (iQ2 != 1702061171 || (z10 && iQ2 == 2002876005)) {
                                if (iQ2 == 1702061171) {
                                    iC = iF;
                                } else {
                                    iC = c(j0Var, 1702061171, iF, iQ);
                                }
                                if (iC != -1) {
                                    cVarM = m(j0Var, iC);
                                    str2 = cVarM.f59271a;
                                    bArr = cVarM.f59272b;
                                    if (bArr != null) {
                                        if (MimeTypes.AUDIO_VORBIS.equals(str2)) {
                                            listOf = v0.e(bArr);
                                        } else {
                                            if (MimeTypes.AUDIO_AAC.equals(str2)) {
                                                k2.a.b bVarE = k2.a.e(bArr);
                                                iRound = bVarE.f63490a;
                                                iL = bVarE.f63491b;
                                                str3 = bVarE.f63492c;
                                            }
                                            listOf = ImmutableList.of(bArr);
                                        }
                                    }
                                }
                            } else if (iQ2 == 1651798644) {
                                aVarJ = j(j0Var, iF);
                            } else if (iQ2 == 1684103987) {
                                c10 = '\b';
                                j0Var.W(iF + 8);
                                hVar.f59283b = k2.b.d(j0Var, Integer.toString(i13), str, drmInitDataCopyWithSchemeType);
                            } else {
                                c10 = '\b';
                                if (iQ2 == 1684366131) {
                                    j0Var.W(iF + 8);
                                    hVar.f59283b = k2.b.h(j0Var, Integer.toString(i13), str, drmInitDataCopyWithSchemeType);
                                } else if (iQ2 == 1684103988) {
                                    j0Var.W(iF + 8);
                                    hVar.f59283b = k2.c.d(j0Var, Integer.toString(i13), str, drmInitDataCopyWithSchemeType);
                                } else if (iQ2 == 1684892784) {
                                    if (i15 <= 0) {
                                        throw ParserException.createForMalformedContainer("Invalid sample rate for Dolby TrueHD MLP stream: " + i15, null);
                                    }
                                    iRound = i15;
                                    iL = 2;
                                } else if (iQ2 == 1684305011 || iQ2 == 1969517683) {
                                    hVar.f59283b = new androidx.media3.common.r.b().e0(i13).u0(str2).R(iL).v0(iRound).Y(drmInitDataCopyWithSchemeType).j0(str).N();
                                } else if (iQ2 == 1682927731) {
                                    int i22 = iQ - 8;
                                    byte[] bArr4 = f59259a;
                                    byte[] bArrCopyOf = Arrays.copyOf(bArr4, bArr4.length + i22);
                                    j0Var.W(iF + 8);
                                    j0Var.l(bArrCopyOf, bArr4.length, i22);
                                    listOf = k0.a(bArrCopyOf);
                                } else {
                                    if (iQ2 == 1684425825) {
                                        byte[] bArr5 = new byte[iQ - 8];
                                        bArr5[0] = 102;
                                        bArr5[1] = 76;
                                        bArr5[2] = 97;
                                        bArr5[3] = 67;
                                        j0Var.W(iF + 12);
                                        j0Var.l(bArr5, 4, iQ - 12);
                                        immutableListOf = ImmutableList.of(bArr5);
                                    } else if (iQ2 == 1634492771) {
                                        int i23 = iQ - 12;
                                        byte[] bArr6 = new byte[i23];
                                        j0Var.W(iF + 12);
                                        j0Var.l(bArr6, 0, i23);
                                        Pair pairU = androidx.media3.common.util.j.u(bArr6);
                                        int iIntValue2 = ((Integer) pairU.first).intValue();
                                        int iIntValue3 = ((Integer) pairU.second).intValue();
                                        listOf = ImmutableList.of(bArr6);
                                        iRound = iIntValue2;
                                        iL = iIntValue3;
                                    } else if (iQ2 == 1767990114) {
                                        j0Var.W(iF + 9);
                                        int iM = j0Var.M();
                                        byte[] bArr7 = new byte[iM];
                                        j0Var.l(bArr7, 0, iM);
                                        immutableListOf = ImmutableList.of(bArr7);
                                    }
                                    listOf = immutableListOf;
                                }
                            }
                            iF += iQ;
                            i19 = i11;
                            i20 = i12;
                            str4 = str4;
                        }
                    }
                    iF += iQ;
                    i19 = i11;
                    i20 = i12;
                    str4 = str4;
                }
                if (hVar.f59283b == null || str2 == null) {
                }
                androidx.media3.common.r.b bVarJ0 = new androidx.media3.common.r.b().e0(i13).u0(str2).S(str3).R(iL).v0(iRound).o0(i21).g0(listOf).Y(drmInitDataCopyWithSchemeType).j0(str);
                if (cVarM != null) {
                    bVarJ0.Q(Ints.n(cVarM.f59273c)).p0(Ints.n(cVarM.f59274d));
                } else if (aVarJ != null) {
                    bVarJ0.Q(Ints.n(aVarJ.f59260a)).p0(Ints.n(aVarJ.f59261b));
                }
                hVar.f59283b = bVarJ0.N();
                return;
            }
            str2 = MimeTypes.AUDIO_AMR_WB;
        }
        i17 = i16;
        int i24 = i17;
        str3 = null;
        listOf = null;
        cVarM = null;
        a aVarJ2 = null;
        while (iF - i19 < i20) {
            j0Var.W(iF);
            iQ = j0Var.q();
            if (iQ > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            k2.u.a(z11, "childAtomSize must be positive");
            iQ2 = j0Var.q();
            if (iQ2 == 1835557187) {
                j0Var.W(iF + 8);
                j0Var.X(1);
                iH2 = j0Var.H();
                j0Var.X(1);
                if (Objects.equals(str2, str4)) {
                    i18 = 0;
                    str3 = String.format("mhm1.%02X", Integer.valueOf(iH2));
                } else {
                    i18 = 0;
                    str3 = String.format("mha1.%02X", Integer.valueOf(iH2));
                }
                int iP4 = j0Var.P();
                bArr3 = new byte[iP4];
                j0Var.l(bArr3, i18, iP4);
                if (listOf == null) {
                    listOf = ImmutableList.of(bArr3);
                } else {
                    listOf = ImmutableList.of(bArr3, (byte[]) listOf.get(i18));
                }
            } else {
                str4 = str4;
                if (iQ2 == 1835557200) {
                    j0Var.W(iF + 8);
                    iH = j0Var.H();
                    if (iH > 0) {
                        bArr2 = new byte[iH];
                        j0Var.l(bArr2, 0, iH);
                        if (listOf == null) {
                            listOf = ImmutableList.of(bArr2);
                        } else {
                            listOf = ImmutableList.of((byte[]) listOf.get(0), bArr2);
                        }
                    }
                } else {
                    if (iQ2 != 1702061171) {
                        if (iQ2 == 1702061171) {
                            iC = iF;
                        } else {
                            iC = c(j0Var, 1702061171, iF, iQ);
                        }
                        if (iC != -1) {
                            cVarM = m(j0Var, iC);
                            str2 = cVarM.f59271a;
                            bArr = cVarM.f59272b;
                            if (bArr != null) {
                                if (MimeTypes.AUDIO_VORBIS.equals(str2)) {
                                    listOf = v0.e(bArr);
                                } else {
                                    if (MimeTypes.AUDIO_AAC.equals(str2)) {
                                        k2.a.b bVarE2 = k2.a.e(bArr);
                                        iRound = bVarE2.f63490a;
                                        iL = bVarE2.f63491b;
                                        str3 = bVarE2.f63492c;
                                    }
                                    listOf = ImmutableList.of(bArr);
                                }
                            }
                        }
                    } else {
                        if (iQ2 == 1702061171) {
                            iC = iF;
                        } else {
                            iC = c(j0Var, 1702061171, iF, iQ);
                        }
                        if (iC != -1) {
                            cVarM = m(j0Var, iC);
                            str2 = cVarM.f59271a;
                            bArr = cVarM.f59272b;
                            if (bArr != null) {
                                if (MimeTypes.AUDIO_VORBIS.equals(str2)) {
                                    listOf = v0.e(bArr);
                                } else {
                                    if (MimeTypes.AUDIO_AAC.equals(str2)) {
                                        k2.a.b bVarE3 = k2.a.e(bArr);
                                        iRound = bVarE3.f63490a;
                                        iL = bVarE3.f63491b;
                                        str3 = bVarE3.f63492c;
                                    }
                                    listOf = ImmutableList.of(bArr);
                                }
                            }
                        }
                    }
                    iF += iQ;
                    i19 = i11;
                    i20 = i12;
                    str4 = str4;
                }
            }
            iF += iQ;
            i19 = i11;
            i20 = i12;
            str4 = str4;
        }
        if (hVar.f59283b == null) {
        }
    }

    private static androidx.media3.common.i i(j0 j0Var) {
        androidx.media3.common.i.b bVar = new androidx.media3.common.i.b();
        i0 i0Var = new i0(j0Var.e());
        i0Var.p(j0Var.f() * 8);
        i0Var.s(1);
        int iH = i0Var.h(3);
        i0Var.r(6);
        boolean zG = i0Var.g();
        boolean zG2 = i0Var.g();
        if (iH == 2 && zG) {
            bVar.g(zG2 ? 12 : 10);
            bVar.b(zG2 ? 12 : 10);
        } else if (iH <= 2) {
            bVar.g(zG ? 10 : 8);
            bVar.b(zG ? 10 : 8);
        }
        i0Var.r(13);
        i0Var.q();
        int iH2 = i0Var.h(4);
        if (iH2 != 1) {
            androidx.media3.common.util.u.f("BoxParsers", "Unsupported obu_type: " + iH2);
            return bVar.a();
        }
        if (i0Var.g()) {
            androidx.media3.common.util.u.f("BoxParsers", "Unsupported obu_extension_flag");
            return bVar.a();
        }
        boolean zG3 = i0Var.g();
        i0Var.q();
        if (zG3 && i0Var.h(8) > 127) {
            androidx.media3.common.util.u.f("BoxParsers", "Excessive obu_size");
            return bVar.a();
        }
        int iH3 = i0Var.h(3);
        i0Var.q();
        if (i0Var.g()) {
            androidx.media3.common.util.u.f("BoxParsers", "Unsupported reduced_still_picture_header");
            return bVar.a();
        }
        if (i0Var.g()) {
            androidx.media3.common.util.u.f("BoxParsers", "Unsupported timing_info_present_flag");
            return bVar.a();
        }
        if (i0Var.g()) {
            androidx.media3.common.util.u.f("BoxParsers", "Unsupported initial_display_delay_present_flag");
            return bVar.a();
        }
        int iH4 = i0Var.h(5);
        boolean z10 = false;
        for (int i10 = 0; i10 <= iH4; i10++) {
            i0Var.r(12);
            if (i0Var.h(5) > 7) {
                i0Var.q();
            }
        }
        int iH5 = i0Var.h(4);
        int iH6 = i0Var.h(4);
        i0Var.r(iH5 + 1);
        i0Var.r(iH6 + 1);
        if (i0Var.g()) {
            i0Var.r(7);
        }
        i0Var.r(7);
        boolean zG4 = i0Var.g();
        if (zG4) {
            i0Var.r(2);
        }
        if ((i0Var.g() ? 2 : i0Var.h(1)) > 0 && !i0Var.g()) {
            i0Var.r(1);
        }
        if (zG4) {
            i0Var.r(3);
        }
        i0Var.r(3);
        boolean zG5 = i0Var.g();
        if (iH3 == 2 && zG5) {
            i0Var.q();
        }
        if (iH3 != 1 && i0Var.g()) {
            z10 = true;
        }
        if (i0Var.g()) {
            int iH7 = i0Var.h(8);
            int iH8 = i0Var.h(8);
            bVar.d(androidx.media3.common.i.j(iH7)).c(((z10 || iH7 != 1 || iH8 != 13 || i0Var.h(8) != 0) ? i0Var.h(1) : 1) != 1 ? 2 : 1).e(androidx.media3.common.i.k(iH8));
        }
        return bVar.a();
    }

    private static a j(j0 j0Var, int i10) {
        j0Var.W(i10 + 8);
        j0Var.X(4);
        return new a(j0Var.J(), j0Var.J());
    }

    static Pair k(j0 j0Var, int i10, int i11) throws ParserException {
        int i12 = i10 + 8;
        int i13 = -1;
        int i14 = 0;
        String strE = null;
        Integer numValueOf = null;
        while (i12 - i10 < i11) {
            j0Var.W(i12);
            int iQ = j0Var.q();
            int iQ2 = j0Var.q();
            if (iQ2 == 1718775137) {
                numValueOf = Integer.valueOf(j0Var.q());
            } else if (iQ2 == 1935894637) {
                j0Var.X(4);
                strE = j0Var.E(4);
            } else if (iQ2 == 1935894633) {
                i13 = i12;
                i14 = iQ;
            }
            i12 += iQ;
        }
        if (!C.CENC_TYPE_cenc.equals(strE) && !C.CENC_TYPE_cbc1.equals(strE) && !C.CENC_TYPE_cens.equals(strE) && !C.CENC_TYPE_cbcs.equals(strE)) {
            return null;
        }
        k2.u.a(numValueOf != null, "frma atom is mandatory");
        k2.u.a(i13 != -1, "schi atom is mandatory");
        u uVarZ = z(j0Var, i13, i14, strE);
        k2.u.a(uVarZ != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (u) a1.i(uVarZ));
    }

    private static Pair l(androidx.media3.container.d.b bVar) {
        androidx.media3.container.d.c cVarE = bVar.e(1701606260);
        if (cVarE == null) {
            return null;
        }
        j0 j0Var = cVarE.f10275b;
        j0Var.W(8);
        int iP = p(j0Var.q());
        int iL = j0Var.L();
        long[] jArr = new long[iL];
        long[] jArr2 = new long[iL];
        for (int i10 = 0; i10 < iL; i10++) {
            jArr[i10] = iP == 1 ? j0Var.O() : j0Var.J();
            jArr2[i10] = iP == 1 ? j0Var.A() : j0Var.q();
            if (j0Var.D() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            j0Var.X(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static c m(j0 j0Var, int i10) {
        j0Var.W(i10 + 12);
        j0Var.X(1);
        n(j0Var);
        j0Var.X(2);
        int iH = j0Var.H();
        if ((iH & 128) != 0) {
            j0Var.X(2);
        }
        if ((iH & 64) != 0) {
            j0Var.X(j0Var.H());
        }
        if ((iH & 32) != 0) {
            j0Var.X(2);
        }
        j0Var.X(1);
        n(j0Var);
        String strH = y.h(j0Var.H());
        if (MimeTypes.AUDIO_MPEG.equals(strH) || MimeTypes.AUDIO_DTS.equals(strH) || MimeTypes.AUDIO_DTS_HD.equals(strH)) {
            return new c(strH, null, -1L, -1L);
        }
        j0Var.X(4);
        long J = j0Var.J();
        long J2 = j0Var.J();
        j0Var.X(1);
        int iN = n(j0Var);
        byte[] bArr = new byte[iN];
        j0Var.l(bArr, 0, iN);
        return new c(strH, bArr, J2 > 0 ? J2 : -1L, J > 0 ? J : -1L);
    }

    private static int n(j0 j0Var) {
        int iH = j0Var.H();
        int i10 = iH & 127;
        while ((iH & 128) == 128) {
            iH = j0Var.H();
            i10 = (i10 << 7) | (iH & 127);
        }
        return i10;
    }

    public static int o(int i10) {
        return i10 & 16777215;
    }

    public static int p(int i10) {
        return (i10 >> 24) & 255;
    }

    private static int q(j0 j0Var) {
        j0Var.W(16);
        return j0Var.q();
    }

    private static androidx.media3.common.x r(j0 j0Var, int i10) {
        j0Var.X(8);
        ArrayList arrayList = new ArrayList();
        while (j0Var.f() < i10) {
            androidx.media3.common.x.a aVarD = e3.j.d(j0Var);
            if (aVarD != null) {
                arrayList.add(aVarD);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new androidx.media3.common.x(arrayList);
    }

    private static e s(j0 j0Var) {
        long jE1;
        j0Var.W(8);
        int iP = p(j0Var.q());
        j0Var.X(iP == 0 ? 8 : 16);
        long J = j0Var.J();
        int iF = j0Var.f();
        int i10 = iP == 0 ? 4 : 8;
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                j0Var.X(i10);
                break;
            }
            if (j0Var.e()[iF + i11] != -1) {
                long J2 = iP == 0 ? j0Var.J() : j0Var.O();
                if (J2 == 0) {
                    break;
                }
                jE1 = a1.e1(J2, 1000000L, J);
                return new e(J, jE1, d(j0Var.P()));
            }
            i11++;
        }
        jE1 = -9223372036854775807L;
        return new e(J, jE1, d(j0Var.P()));
    }

    public static androidx.media3.common.x t(androidx.media3.container.d.b bVar) {
        androidx.media3.container.d.c cVarE = bVar.e(1751411826);
        androidx.media3.container.d.c cVarE2 = bVar.e(1801812339);
        androidx.media3.container.d.c cVarE3 = bVar.e(1768715124);
        if (cVarE == null || cVarE2 == null || cVarE3 == null || q(cVarE.f10275b) != 1835299937) {
            return null;
        }
        j0 j0Var = cVarE2.f10275b;
        j0Var.W(12);
        int iQ = j0Var.q();
        String[] strArr = new String[iQ];
        for (int i10 = 0; i10 < iQ; i10++) {
            int iQ2 = j0Var.q();
            j0Var.X(4);
            strArr[i10] = j0Var.E(iQ2 - 8);
        }
        j0 j0Var2 = cVarE3.f10275b;
        j0Var2.W(8);
        ArrayList arrayList = new ArrayList();
        while (j0Var2.a() > 8) {
            int iF = j0Var2.f();
            int iQ3 = j0Var2.q();
            int iQ4 = j0Var2.q() - 1;
            if (iQ4 < 0 || iQ4 >= iQ) {
                androidx.media3.common.util.u.h("BoxParsers", "Skipped metadata with unknown key index: " + iQ4);
            } else {
                androidx.media3.container.b bVarI = e3.j.i(j0Var2, iF + iQ3, strArr[iQ4]);
                if (bVarI != null) {
                    arrayList.add(bVarI);
                }
            }
            j0Var2.W(iF + iQ3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new androidx.media3.common.x(arrayList);
    }

    private static void u(j0 j0Var, int i10, int i11, int i12, h hVar) {
        j0Var.W(i11 + 16);
        if (i10 == 1835365492) {
            j0Var.B();
            String strB = j0Var.B();
            if (strB != null) {
                hVar.f59283b = new androidx.media3.common.r.b().e0(i12).u0(strB).N();
            }
        }
    }

    public static androidx.media3.container.f v(j0 j0Var) {
        long jA;
        long jA2;
        j0Var.W(8);
        if (p(j0Var.q()) == 0) {
            jA = j0Var.J();
            jA2 = j0Var.J();
        } else {
            jA = j0Var.A();
            jA2 = j0Var.A();
        }
        return new androidx.media3.container.f(jA, jA2, j0Var.J());
    }

    private static float w(j0 j0Var, int i10) {
        j0Var.W(i10 + 8);
        return j0Var.L() / j0Var.L();
    }

    private static byte[] x(j0 j0Var, int i10, int i11) {
        int i12 = i10 + 8;
        while (i12 - i10 < i11) {
            j0Var.W(i12);
            int iQ = j0Var.q();
            if (j0Var.q() == 1886547818) {
                return Arrays.copyOfRange(j0Var.e(), i12, iQ + i12);
            }
            i12 += iQ;
        }
        return null;
    }

    private static Pair y(j0 j0Var, int i10, int i11) throws ParserException {
        Pair pairK;
        int iF = j0Var.f();
        while (iF - i10 < i11) {
            j0Var.W(iF);
            int iQ = j0Var.q();
            k2.u.a(iQ > 0, "childAtomSize must be positive");
            if (j0Var.q() == 1936289382 && (pairK = k(j0Var, iF, iQ)) != null) {
                return pairK;
            }
            iF += iQ;
        }
        return null;
    }

    private static u z(j0 j0Var, int i10, int i11, String str) {
        int i12;
        int i13;
        int i14 = i10 + 8;
        while (true) {
            byte[] bArr = null;
            if (i14 - i10 >= i11) {
                return null;
            }
            j0Var.W(i14);
            int iQ = j0Var.q();
            if (j0Var.q() == 1952804451) {
                int iP = p(j0Var.q());
                j0Var.X(1);
                if (iP == 0) {
                    j0Var.X(1);
                    i13 = 0;
                    i12 = 0;
                } else {
                    int iH = j0Var.H();
                    i12 = iH & 15;
                    i13 = (iH & 240) >> 4;
                }
                boolean z10 = j0Var.H() == 1;
                int iH2 = j0Var.H();
                byte[] bArr2 = new byte[16];
                j0Var.l(bArr2, 0, 16);
                if (z10 && iH2 == 0) {
                    int iH3 = j0Var.H();
                    bArr = new byte[iH3];
                    j0Var.l(bArr, 0, iH3);
                }
                return new u(z10, str, iH2, bArr2, i13, i12, bArr);
            }
            i14 += iQ;
        }
    }
}
