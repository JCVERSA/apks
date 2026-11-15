package q9;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.c0;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.w;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.x;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.mvel2.ast.ASTNode;

abstract class b {

    private static final byte[] f69411a = p0.n0("OpusHead");

    private static final class a {

        public final int f69412a;

        public int f69413b;

        public int f69414c;

        public long f69415d;

        private final boolean f69416e;

        private final d0 f69417f;

        private final d0 f69418g;

        private int f69419h;

        private int f69420i;

        public a(d0 d0Var, d0 d0Var2, boolean z10) throws ParserException {
            this.f69418g = d0Var;
            this.f69417f = d0Var2;
            this.f69416e = z10;
            d0Var2.P(12);
            this.f69412a = d0Var2.H();
            d0Var.P(12);
            this.f69420i = d0Var.H();
            i9.o.a(d0Var.n() == 1, "first_chunk must be 1");
            this.f69413b = -1;
        }

        public boolean a() {
            int i10 = this.f69413b + 1;
            this.f69413b = i10;
            if (i10 == this.f69412a) {
                return false;
            }
            this.f69415d = this.f69416e ? this.f69417f.I() : this.f69417f.F();
            if (this.f69413b == this.f69419h) {
                this.f69414c = this.f69418g.H();
                this.f69418g.Q(4);
                int i11 = this.f69420i - 1;
                this.f69420i = i11;
                this.f69419h = i11 > 0 ? this.f69418g.H() - 1 : -1;
            }
            return true;
        }
    }

    private static final class C0860b {

        private final String f69421a;

        private final byte[] f69422b;

        private final long f69423c;

        private final long f69424d;

        public C0860b(String str, byte[] bArr, long j10, long j11) {
            this.f69421a = str;
            this.f69422b = bArr;
            this.f69423c = j10;
            this.f69424d = j11;
        }
    }

    private interface c {
        int a();

        int getSampleCount();

        int readNextSampleSize();
    }

    private static final class d {

        public final p[] f69425a;

        public p1 f69426b;

        public int f69427c;

        public int f69428d = 0;

        public d(int i10) {
            this.f69425a = new p[i10];
        }
    }

    static final class e implements c {

        private final int f69429a;

        private final int f69430b;

        private final d0 f69431c;

        public e(q9.a.b bVar, p1 p1Var) {
            d0 d0Var = bVar.f69410b;
            this.f69431c = d0Var;
            d0Var.P(12);
            int iH = d0Var.H();
            if (MimeTypes.AUDIO_RAW.equals(p1Var.f24901l)) {
                int iE0 = p0.e0(p1Var.A, p1Var.f24914y);
                if (iH == 0 || iH % iE0 != 0) {
                    s.i("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iE0 + ", stsz sample size: " + iH);
                    iH = iE0;
                }
            }
            this.f69429a = iH == 0 ? -1 : iH;
            this.f69430b = d0Var.H();
        }

        @Override
        public int a() {
            return this.f69429a;
        }

        @Override
        public int getSampleCount() {
            return this.f69430b;
        }

        @Override
        public int readNextSampleSize() {
            int i10 = this.f69429a;
            return i10 == -1 ? this.f69431c.H() : i10;
        }
    }

    static final class f implements c {

        private final d0 f69432a;

        private final int f69433b;

        private final int f69434c;

        private int f69435d;

        private int f69436e;

        public f(q9.a.b bVar) {
            d0 d0Var = bVar.f69410b;
            this.f69432a = d0Var;
            d0Var.P(12);
            this.f69434c = d0Var.H() & 255;
            this.f69433b = d0Var.H();
        }

        @Override
        public int a() {
            return -1;
        }

        @Override
        public int getSampleCount() {
            return this.f69433b;
        }

        @Override
        public int readNextSampleSize() {
            int i10 = this.f69434c;
            if (i10 == 8) {
                return this.f69432a.D();
            }
            if (i10 == 16) {
                return this.f69432a.J();
            }
            int i11 = this.f69435d;
            this.f69435d = i11 + 1;
            if (i11 % 2 != 0) {
                return this.f69436e & 15;
            }
            int iD = this.f69432a.D();
            this.f69436e = iD;
            return (iD & 240) >> 4;
        }
    }

    private static final class g {

        private final int f69437a;

        private final long f69438b;

        private final int f69439c;

        public g(int i10, long j10, int i11) {
            this.f69437a = i10;
            this.f69438b = j10;
            this.f69439c = i11;
        }
    }

    public static List A(q9.a.C0859a c0859a, x xVar, long j10, DrmInitData drmInitData, boolean z10, boolean z11, com.google.common.base.f fVar) {
        o oVar;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < c0859a.f69409d.size(); i10++) {
            q9.a.C0859a c0859a2 = (q9.a.C0859a) c0859a.f69409d.get(i10);
            if (c0859a2.f69406a == 1953653099 && (oVar = (o) fVar.apply(z(c0859a2, (q9.a.b) com.google.android.exoplayer2.util.a.e(c0859a.g(1836476516)), j10, drmInitData, z10, z11))) != null) {
                arrayList.add(v(oVar, (q9.a.C0859a) com.google.android.exoplayer2.util.a.e(((q9.a.C0859a) com.google.android.exoplayer2.util.a.e(((q9.a.C0859a) com.google.android.exoplayer2.util.a.e(c0859a2.f(1835297121))).f(1835626086))).f(1937007212)), xVar));
            }
        }
        return arrayList;
    }

    public static Pair B(q9.a.b bVar) {
        d0 d0Var = bVar.f69410b;
        d0Var.P(8);
        Metadata metadataC = null;
        Metadata metadataU = null;
        while (d0Var.a() >= 8) {
            int iE = d0Var.e();
            int iN = d0Var.n();
            int iN2 = d0Var.n();
            if (iN2 == 1835365473) {
                d0Var.P(iE);
                metadataC = C(d0Var, iE + iN);
            } else if (iN2 == 1936553057) {
                d0Var.P(iE);
                metadataU = u(d0Var, iE + iN);
            }
            d0Var.P(iE + iN);
        }
        return Pair.create(metadataC, metadataU);
    }

    private static Metadata C(d0 d0Var, int i10) {
        d0Var.Q(8);
        e(d0Var);
        while (d0Var.e() < i10) {
            int iE = d0Var.e();
            int iN = d0Var.n();
            if (d0Var.n() == 1768715124) {
                d0Var.P(iE);
                return l(d0Var, iE + iN);
            }
            d0Var.P(iE + iN);
        }
        return null;
    }

    private static void D(d0 d0Var, int i10, int i11, int i12, int i13, int i14, DrmInitData drmInitData, d dVar, int i15) throws ParserException {
        String str;
        DrmInitData drmInitData2;
        byte[] bArr;
        float f10;
        List list;
        String str2;
        int i16 = i11;
        int i17 = i12;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        d dVar2 = dVar;
        d0Var.P(i16 + 16);
        d0Var.Q(16);
        int iJ = d0Var.J();
        int iJ2 = d0Var.J();
        d0Var.Q(50);
        int iE = d0Var.e();
        int iIntValue = i10;
        if (iIntValue == 1701733238) {
            Pair pairS = s(d0Var, i16, i17);
            if (pairS != null) {
                iIntValue = ((Integer) pairS.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((p) pairS.second).f69547b);
                dVar2.f69425a[i15] = (p) pairS.second;
            }
            d0Var.P(iE);
        }
        String str3 = MimeTypes.VIDEO_H263;
        if (iIntValue == 1831958048) {
            str = MimeTypes.VIDEO_MPEG;
        } else {
            str = iIntValue == 1211250227 ? MimeTypes.VIDEO_H263 : null;
        }
        float fQ = 1.0f;
        byte[] bArrR = null;
        String str4 = null;
        List listOf = null;
        int i18 = -1;
        int iB = -1;
        int i19 = -1;
        int iC = -1;
        ByteBuffer byteBufferA = null;
        C0860b c0860bI = null;
        boolean z10 = false;
        while (true) {
            if (iE - i16 >= i17) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                break;
            }
            d0Var.P(iE);
            int iE2 = d0Var.e();
            String str5 = str3;
            int iN = d0Var.n();
            if (iN == 0) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                if (d0Var.e() - i16 == i17) {
                    break;
                }
            } else {
                drmInitData2 = drmInitDataCopyWithSchemeType;
            }
            i9.o.a(iN > 0, "childAtomSize must be positive");
            int iN2 = d0Var.n();
            if (iN2 == 1635148611) {
                i9.o.a(str == null, null);
                d0Var.P(iE2 + 8);
                com.google.android.exoplayer2.video.a aVarB = com.google.android.exoplayer2.video.a.b(d0Var);
                listOf = aVarB.f26950a;
                dVar2.f69427c = aVarB.f26951b;
                if (!z10) {
                    fQ = aVarB.f26954e;
                }
                str4 = aVarB.f26955f;
                str2 = MimeTypes.VIDEO_H264;
            } else if (iN2 == 1752589123) {
                i9.o.a(str == null, null);
                d0Var.P(iE2 + 8);
                com.google.android.exoplayer2.video.f fVarA = com.google.android.exoplayer2.video.f.a(d0Var);
                listOf = fVarA.f26979a;
                dVar2.f69427c = fVarA.f26980b;
                if (!z10) {
                    fQ = fVarA.f26983e;
                }
                str4 = fVarA.f26984f;
                str2 = MimeTypes.VIDEO_H265;
            } else {
                if (iN2 == 1685480259 || iN2 == 1685485123) {
                    iJ2 = iJ2;
                    iIntValue = iIntValue;
                    bArr = bArrR;
                    f10 = fQ;
                    list = listOf;
                    com.google.android.exoplayer2.video.d dVarA = com.google.android.exoplayer2.video.d.a(d0Var);
                    if (dVarA != null) {
                        str4 = dVarA.f26964c;
                        str = "video/dolby-vision";
                    }
                } else if (iN2 == 1987076931) {
                    i9.o.a(str == null, null);
                    str2 = iIntValue == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                } else {
                    if (iN2 == 1635135811) {
                        i9.o.a(str == null, null);
                        str2 = "video/av01";
                    } else if (iN2 == 1668050025) {
                        if (byteBufferA == null) {
                            byteBufferA = a();
                        }
                        ByteBuffer byteBuffer = byteBufferA;
                        byteBuffer.position(21);
                        byteBuffer.putShort(d0Var.z());
                        byteBuffer.putShort(d0Var.z());
                        byteBufferA = byteBuffer;
                    } else if (iN2 == 1835295606) {
                        if (byteBufferA == null) {
                            byteBufferA = a();
                        }
                        ByteBuffer byteBuffer2 = byteBufferA;
                        short sZ = d0Var.z();
                        short sZ2 = d0Var.z();
                        short sZ3 = d0Var.z();
                        short sZ4 = d0Var.z();
                        short sZ5 = d0Var.z();
                        List list2 = listOf;
                        short sZ6 = d0Var.z();
                        byte[] bArr2 = bArrR;
                        short sZ7 = d0Var.z();
                        float f11 = fQ;
                        short sZ8 = d0Var.z();
                        long jF = d0Var.F();
                        long jF2 = d0Var.F();
                        byteBuffer2.position(1);
                        byteBuffer2.putShort(sZ5);
                        byteBuffer2.putShort(sZ6);
                        byteBuffer2.putShort(sZ);
                        byteBuffer2.putShort(sZ2);
                        byteBuffer2.putShort(sZ3);
                        byteBuffer2.putShort(sZ4);
                        byteBuffer2.putShort(sZ7);
                        byteBuffer2.putShort(sZ8);
                        byteBuffer2.putShort((short) (jF / 10000));
                        byteBuffer2.putShort((short) (jF2 / 10000));
                        byteBufferA = byteBuffer2;
                        listOf = list2;
                        bArrR = bArr2;
                        fQ = f11;
                    } else {
                        iJ2 = iJ2;
                        iIntValue = iIntValue;
                        bArr = bArrR;
                        f10 = fQ;
                        list = listOf;
                        if (iN2 == 1681012275) {
                            i9.o.a(str == null, null);
                            str = str5;
                        } else if (iN2 == 1702061171) {
                            i9.o.a(str == null, null);
                            c0860bI = i(d0Var, iE2);
                            String str6 = c0860bI.f69421a;
                            byte[] bArr3 = c0860bI.f69422b;
                            listOf = bArr3 != null ? ImmutableList.of(bArr3) : list;
                            str = str6;
                            bArrR = bArr;
                            fQ = f10;
                        } else if (iN2 == 1885434736) {
                            fQ = q(d0Var, iE2);
                            listOf = list;
                            bArrR = bArr;
                            z10 = true;
                        } else {
                            if (iN2 == 1937126244) {
                                bArrR = r(d0Var, iE2, iN);
                                listOf = list;
                            } else if (iN2 == 1936995172) {
                                int iD = d0Var.D();
                                d0Var.Q(3);
                                if (iD == 0) {
                                    int iD2 = d0Var.D();
                                    if (iD2 == 0) {
                                        i18 = 0;
                                    } else if (iD2 == 1) {
                                        i18 = 1;
                                    } else if (iD2 == 2) {
                                        i18 = 2;
                                    } else if (iD2 == 3) {
                                        i18 = 3;
                                    }
                                }
                            } else if (iN2 == 1668246642) {
                                int iN3 = d0Var.n();
                                if (iN3 == 1852009592 || iN3 == 1852009571) {
                                    int iJ3 = d0Var.J();
                                    int iJ4 = d0Var.J();
                                    d0Var.Q(2);
                                    boolean z11 = iN == 19 && (d0Var.D() & 128) != 0;
                                    iB = com.google.android.exoplayer2.video.c.b(iJ3);
                                    i19 = z11 ? 1 : 2;
                                    iC = com.google.android.exoplayer2.video.c.c(iJ4);
                                } else {
                                    s.i("AtomParsers", "Unsupported color type: " + q9.a.a(iN3));
                                }
                            }
                            fQ = f10;
                        }
                    }
                    iE += iN;
                    i16 = i11;
                    i17 = i12;
                    dVar2 = dVar;
                    str3 = str5;
                    drmInitDataCopyWithSchemeType = drmInitData2;
                    iIntValue = iIntValue;
                    iJ2 = iJ2;
                }
                listOf = list;
                bArrR = bArr;
                fQ = f10;
                iE += iN;
                i16 = i11;
                i17 = i12;
                dVar2 = dVar;
                str3 = str5;
                drmInitDataCopyWithSchemeType = drmInitData2;
                iIntValue = iIntValue;
                iJ2 = iJ2;
            }
            str = str2;
            iE += iN;
            i16 = i11;
            i17 = i12;
            dVar2 = dVar;
            str3 = str5;
            drmInitDataCopyWithSchemeType = drmInitData2;
            iIntValue = iIntValue;
            iJ2 = iJ2;
        }
        int i20 = iJ2;
        byte[] bArr4 = bArrR;
        float f12 = fQ;
        List list3 = listOf;
        if (str == null) {
            return;
        }
        p1.b bVarM = new p1.b().R(i13).e0(str).I(str4).j0(iJ).Q(i20).a0(f12).d0(i14).b0(bArr4).h0(i18).T(list3).M(drmInitData2);
        int i21 = iB;
        int i22 = i19;
        int i23 = iC;
        if (i21 != -1 || i22 != -1 || i23 != -1 || byteBufferA != null) {
            bVarM.J(new com.google.android.exoplayer2.video.c(i21, i22, i23, byteBufferA != null ? byteBufferA.array() : null));
        }
        if (c0860bI != null) {
            bVarM.G(Ints.n(c0860bI.f69423c)).Z(Ints.n(c0860bI.f69424d));
        }
        dVar.f69426b = bVarM.E();
    }

    private static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean b(long[] jArr, long j10, long j11, long j12) {
        int length = jArr.length - 1;
        return jArr[0] <= j11 && j11 < jArr[p0.q(4, 0, length)] && jArr[p0.q(jArr.length - 4, 0, length)] < j12 && j12 <= j10;
    }

    private static int c(d0 d0Var, int i10, int i11, int i12) throws ParserException {
        int iE = d0Var.e();
        i9.o.a(iE >= i11, null);
        while (iE - i11 < i12) {
            d0Var.P(iE);
            int iN = d0Var.n();
            i9.o.a(iN > 0, "childAtomSize must be positive");
            if (d0Var.n() == i10) {
                return iE;
            }
            iE += iN;
        }
        return -1;
    }

    private static int d(int i10) {
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

    public static void e(d0 d0Var) {
        int iE = d0Var.e();
        d0Var.Q(4);
        if (d0Var.n() != 1751411826) {
            iE += 4;
        }
        d0Var.P(iE);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0166  */
    /* JADX WARN: Code duplicated, block: B:102:0x016f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0171  */
    /* JADX WARN: Code duplicated, block: B:106:0x0180  */
    /* JADX WARN: Code duplicated, block: B:110:0x019c  */
    /* JADX WARN: Code duplicated, block: B:115:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:147:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:149:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:151:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:153:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:155:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:171:0x0303 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x0303 A[SYNTHETIC] */
    private static void f(d0 d0Var, int i10, int i11, int i12, int i13, String str, boolean z10, DrmInitData drmInitData, d dVar, int i14) throws ParserException {
        int iJ;
        int iE;
        int iN;
        int iH;
        String str2;
        String str3;
        int i15;
        String str4;
        C0860b c0860bI;
        String str5;
        List listOf;
        int iN2;
        boolean z11;
        int iN3;
        char c10;
        int iC;
        byte[] bArr;
        int i16 = i11;
        int i17 = i12;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        d0Var.P(i16 + 16);
        if (z10) {
            iJ = d0Var.J();
            d0Var.Q(6);
        } else {
            d0Var.Q(8);
            iJ = 0;
        }
        if (iJ == 0 || iJ == 1) {
            int iJ2 = d0Var.J();
            d0Var.Q(6);
            iE = d0Var.E();
            d0Var.P(d0Var.e() - 4);
            iN = d0Var.n();
            if (iJ == 1) {
                d0Var.Q(16);
            }
            iH = iJ2;
        } else {
            if (iJ != 2) {
                return;
            }
            d0Var.Q(16);
            iE = (int) Math.round(d0Var.l());
            iH = d0Var.H();
            d0Var.Q(20);
            iN = 0;
        }
        int iE2 = d0Var.e();
        int iIntValue = i10;
        if (iIntValue == 1701733217) {
            Pair pairS = s(d0Var, i16, i17);
            if (pairS != null) {
                iIntValue = ((Integer) pairS.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((p) pairS.second).f69547b);
                dVar.f69425a[i14] = (p) pairS.second;
            }
            d0Var.P(iE2);
        }
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
                str3 = MimeTypes.AUDIO_RAW;
                if (iIntValue == 1819304813 || iIntValue == 1936684916) {
                    i15 = 2;
                } else if (iIntValue == 1953984371) {
                    i15 = ASTNode.DEOP;
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = MimeTypes.AUDIO_MPEG;
                } else if (iIntValue == 1835557169) {
                    str2 = "audio/mha1";
                } else if (iIntValue == 1835560241) {
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
                } else {
                    i15 = -1;
                    str3 = null;
                }
                str4 = str3;
                c0860bI = null;
                str5 = null;
                listOf = null;
                while (iE2 - i16 < i17) {
                    d0Var.P(iE2);
                    iN2 = d0Var.n();
                    if (iN2 > 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    i9.o.a(z11, "childAtomSize must be positive");
                    iN3 = d0Var.n();
                    if (iN3 == 1835557187) {
                        int i18 = iN2 - 13;
                        byte[] bArr2 = new byte[i18];
                        d0Var.P(iE2 + 13);
                        d0Var.j(bArr2, 0, i18);
                        listOf = ImmutableList.of(bArr2);
                    } else {
                        if (iN3 != 1702061171 || (z10 && iN3 == 2002876005)) {
                            c10 = 24931;
                            if (iN3 == 1702061171) {
                                iC = iE2;
                            } else {
                                iC = c(d0Var, 1702061171, iE2, iN2);
                            }
                            if (iC != -1) {
                                c0860bI = i(d0Var, iC);
                                str4 = c0860bI.f69421a;
                                bArr = c0860bI.f69422b;
                                if (bArr != null) {
                                    if (MimeTypes.AUDIO_AAC.equals(str4)) {
                                        com.google.android.exoplayer2.audio.a.b bVarF = com.google.android.exoplayer2.audio.a.f(bArr);
                                        iE = bVarF.f23906a;
                                        iH = bVarF.f23907b;
                                        str5 = bVarF.f23908c;
                                    }
                                    listOf = ImmutableList.of(bArr);
                                }
                            }
                        } else {
                            if (iN3 == 1684103987) {
                                d0Var.P(iE2 + 8);
                                dVar.f69426b = com.google.android.exoplayer2.audio.b.c(d0Var, Integer.toString(i13), str, drmInitDataCopyWithSchemeType);
                            } else if (iN3 == 1684366131) {
                                d0Var.P(iE2 + 8);
                                dVar.f69426b = com.google.android.exoplayer2.audio.b.g(d0Var, Integer.toString(i13), str, drmInitDataCopyWithSchemeType);
                            } else if (iN3 == 1684103988) {
                                d0Var.P(iE2 + 8);
                                dVar.f69426b = com.google.android.exoplayer2.audio.c.b(d0Var, Integer.toString(i13), str, drmInitDataCopyWithSchemeType);
                            } else if (iN3 == 1684892784) {
                                if (iN <= 0) {
                                    throw ParserException.createForMalformedContainer("Invalid sample rate for Dolby TrueHD MLP stream: " + iN, null);
                                }
                                iE = iN;
                                iH = 2;
                                c10 = 24931;
                            } else if (iN3 == 1684305011) {
                                dVar.f69426b = new p1.b().R(i13).e0(str4).H(iH).f0(iE).M(drmInitDataCopyWithSchemeType).V(str).E();
                            } else if (iN3 == 1682927731) {
                                int i19 = iN2 - 8;
                                byte[] bArr3 = f69411a;
                                byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i19);
                                d0Var.P(iE2 + 8);
                                d0Var.j(bArrCopyOf, bArr3.length, i19);
                                listOf = c0.a(bArrCopyOf);
                            } else if (iN3 == 1684425825) {
                                byte[] bArr4 = new byte[iN2 - 8];
                                bArr4[0] = 102;
                                bArr4[1] = 76;
                                bArr4[2] = 97;
                                bArr4[3] = 67;
                                d0Var.P(iE2 + 12);
                                d0Var.j(bArr4, 4, iN2 - 12);
                                listOf = ImmutableList.of(bArr4);
                                c10 = 24931;
                            } else if (iN3 == 1634492771) {
                                int i20 = iN2 - 12;
                                byte[] bArr5 = new byte[i20];
                                d0Var.P(iE2 + 12);
                                d0Var.j(bArr5, 0, i20);
                                Pair pairH = com.google.android.exoplayer2.util.f.h(bArr5);
                                int iIntValue2 = ((Integer) pairH.first).intValue();
                                int iIntValue3 = ((Integer) pairH.second).intValue();
                                listOf = ImmutableList.of(bArr5);
                                c10 = 24931;
                                iH = iIntValue3;
                                iE = iIntValue2;
                            } else {
                                c10 = 24931;
                            }
                            c10 = 24931;
                        }
                        iE2 += iN2;
                        i16 = i11;
                        i17 = i12;
                    }
                    c10 = 24931;
                    iE2 += iN2;
                    i16 = i11;
                    i17 = i12;
                }
                if (dVar.f69426b == null || str4 == null) {
                }
                p1.b bVarV = new p1.b().R(i13).e0(str4).I(str5).H(iH).f0(iE).Y(i15).T(listOf).M(drmInitDataCopyWithSchemeType).V(str);
                if (c0860bI != null) {
                    bVarV.G(Ints.n(c0860bI.f69423c)).Z(Ints.n(c0860bI.f69424d));
                }
                dVar.f69426b = bVarV.E();
                return;
            }
            str2 = MimeTypes.AUDIO_AMR_WB;
        }
        str3 = str2;
        i15 = -1;
        str4 = str3;
        c0860bI = null;
        str5 = null;
        listOf = null;
        while (iE2 - i16 < i17) {
            d0Var.P(iE2);
            iN2 = d0Var.n();
            if (iN2 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            i9.o.a(z11, "childAtomSize must be positive");
            iN3 = d0Var.n();
            if (iN3 == 1835557187) {
                int i110 = iN2 - 13;
                byte[] bArr6 = new byte[i110];
                d0Var.P(iE2 + 13);
                d0Var.j(bArr6, 0, i110);
                listOf = ImmutableList.of(bArr6);
            } else {
                if (iN3 != 1702061171) {
                    c10 = 24931;
                    if (iN3 == 1702061171) {
                        iC = iE2;
                    } else {
                        iC = c(d0Var, 1702061171, iE2, iN2);
                    }
                    if (iC != -1) {
                        c0860bI = i(d0Var, iC);
                        str4 = c0860bI.f69421a;
                        bArr = c0860bI.f69422b;
                        if (bArr != null) {
                            if (MimeTypes.AUDIO_AAC.equals(str4)) {
                                com.google.android.exoplayer2.audio.a.b bVarF2 = com.google.android.exoplayer2.audio.a.f(bArr);
                                iE = bVarF2.f23906a;
                                iH = bVarF2.f23907b;
                                str5 = bVarF2.f23908c;
                            }
                            listOf = ImmutableList.of(bArr);
                        }
                    }
                } else {
                    c10 = 24931;
                    if (iN3 == 1702061171) {
                        iC = iE2;
                    } else {
                        iC = c(d0Var, 1702061171, iE2, iN2);
                    }
                    if (iC != -1) {
                        c0860bI = i(d0Var, iC);
                        str4 = c0860bI.f69421a;
                        bArr = c0860bI.f69422b;
                        if (bArr != null) {
                            if (MimeTypes.AUDIO_AAC.equals(str4)) {
                                com.google.android.exoplayer2.audio.a.b bVarF3 = com.google.android.exoplayer2.audio.a.f(bArr);
                                iE = bVarF3.f23906a;
                                iH = bVarF3.f23907b;
                                str5 = bVarF3.f23908c;
                            }
                            listOf = ImmutableList.of(bArr);
                        }
                    }
                }
                iE2 += iN2;
                i16 = i11;
                i17 = i12;
            }
            c10 = 24931;
            iE2 += iN2;
            i16 = i11;
            i17 = i12;
        }
        if (dVar.f69426b == null) {
        }
    }

    static Pair g(d0 d0Var, int i10, int i11) throws ParserException {
        int i12 = i10 + 8;
        int i13 = -1;
        int i14 = 0;
        String strA = null;
        Integer numValueOf = null;
        while (i12 - i10 < i11) {
            d0Var.P(i12);
            int iN = d0Var.n();
            int iN2 = d0Var.n();
            if (iN2 == 1718775137) {
                numValueOf = Integer.valueOf(d0Var.n());
            } else if (iN2 == 1935894637) {
                d0Var.Q(4);
                strA = d0Var.A(4);
            } else if (iN2 == 1935894633) {
                i13 = i12;
                i14 = iN;
            }
            i12 += iN;
        }
        if (!C.CENC_TYPE_cenc.equals(strA) && !C.CENC_TYPE_cbc1.equals(strA) && !C.CENC_TYPE_cens.equals(strA) && !C.CENC_TYPE_cbcs.equals(strA)) {
            return null;
        }
        i9.o.a(numValueOf != null, "frma atom is mandatory");
        i9.o.a(i13 != -1, "schi atom is mandatory");
        p pVarT = t(d0Var, i13, i14, strA);
        i9.o.a(pVarT != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (p) p0.j(pVarT));
    }

    private static Pair h(q9.a.C0859a c0859a) {
        q9.a.b bVarG = c0859a.g(1701606260);
        if (bVarG == null) {
            return null;
        }
        d0 d0Var = bVarG.f69410b;
        d0Var.P(8);
        int iC = q9.a.c(d0Var.n());
        int iH = d0Var.H();
        long[] jArr = new long[iH];
        long[] jArr2 = new long[iH];
        for (int i10 = 0; i10 < iH; i10++) {
            jArr[i10] = iC == 1 ? d0Var.I() : d0Var.F();
            jArr2[i10] = iC == 1 ? d0Var.w() : d0Var.n();
            if (d0Var.z() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            d0Var.Q(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static C0860b i(d0 d0Var, int i10) {
        d0Var.P(i10 + 12);
        d0Var.Q(1);
        j(d0Var);
        d0Var.Q(2);
        int iD = d0Var.D();
        if ((iD & 128) != 0) {
            d0Var.Q(2);
        }
        if ((iD & 64) != 0) {
            d0Var.Q(d0Var.D());
        }
        if ((iD & 32) != 0) {
            d0Var.Q(2);
        }
        d0Var.Q(1);
        j(d0Var);
        String strH = w.h(d0Var.D());
        if (MimeTypes.AUDIO_MPEG.equals(strH) || MimeTypes.AUDIO_DTS.equals(strH) || MimeTypes.AUDIO_DTS_HD.equals(strH)) {
            return new C0860b(strH, null, -1L, -1L);
        }
        d0Var.Q(4);
        long jF = d0Var.F();
        long jF2 = d0Var.F();
        d0Var.Q(1);
        int iJ = j(d0Var);
        byte[] bArr = new byte[iJ];
        d0Var.j(bArr, 0, iJ);
        return new C0860b(strH, bArr, jF2 > 0 ? jF2 : -1L, jF > 0 ? jF : -1L);
    }

    private static int j(d0 d0Var) {
        int iD = d0Var.D();
        int i10 = iD & 127;
        while ((iD & 128) == 128) {
            iD = d0Var.D();
            i10 = (i10 << 7) | (iD & 127);
        }
        return i10;
    }

    private static int k(d0 d0Var) {
        d0Var.P(16);
        return d0Var.n();
    }

    private static Metadata l(d0 d0Var, int i10) {
        d0Var.Q(8);
        ArrayList arrayList = new ArrayList();
        while (d0Var.e() < i10) {
            Metadata.Entry entryC = h.c(d0Var);
            if (entryC != null) {
                arrayList.add(entryC);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair m(d0 d0Var) {
        d0Var.P(8);
        int iC = q9.a.c(d0Var.n());
        d0Var.Q(iC == 0 ? 8 : 16);
        long jF = d0Var.F();
        d0Var.Q(iC == 0 ? 4 : 8);
        int iJ = d0Var.J();
        return Pair.create(Long.valueOf(jF), "" + ((char) (((iJ >> 10) & 31) + 96)) + ((char) (((iJ >> 5) & 31) + 96)) + ((char) ((iJ & 31) + 96)));
    }

    public static Metadata n(q9.a.C0859a c0859a) {
        q9.a.b bVarG = c0859a.g(1751411826);
        q9.a.b bVarG2 = c0859a.g(1801812339);
        q9.a.b bVarG3 = c0859a.g(1768715124);
        if (bVarG == null || bVarG2 == null || bVarG3 == null || k(bVarG.f69410b) != 1835299937) {
            return null;
        }
        d0 d0Var = bVarG2.f69410b;
        d0Var.P(12);
        int iN = d0Var.n();
        String[] strArr = new String[iN];
        for (int i10 = 0; i10 < iN; i10++) {
            int iN2 = d0Var.n();
            d0Var.Q(4);
            strArr[i10] = d0Var.A(iN2 - 8);
        }
        d0 d0Var2 = bVarG3.f69410b;
        d0Var2.P(8);
        ArrayList arrayList = new ArrayList();
        while (d0Var2.a() > 8) {
            int iE = d0Var2.e();
            int iN3 = d0Var2.n();
            int iN4 = d0Var2.n() - 1;
            if (iN4 < 0 || iN4 >= iN) {
                s.i("AtomParsers", "Skipped metadata with unknown key index: " + iN4);
            } else {
                MdtaMetadataEntry mdtaMetadataEntryF = h.f(d0Var2, iE + iN3, strArr[iN4]);
                if (mdtaMetadataEntryF != null) {
                    arrayList.add(mdtaMetadataEntryF);
                }
            }
            d0Var2.P(iE + iN3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static void o(d0 d0Var, int i10, int i11, int i12, d dVar) {
        d0Var.P(i11 + 16);
        if (i10 == 1835365492) {
            d0Var.x();
            String strX = d0Var.x();
            if (strX != null) {
                dVar.f69426b = new p1.b().R(i12).e0(strX).E();
            }
        }
    }

    private static long p(d0 d0Var) {
        d0Var.P(8);
        d0Var.Q(q9.a.c(d0Var.n()) != 0 ? 16 : 8);
        return d0Var.F();
    }

    private static float q(d0 d0Var, int i10) {
        d0Var.P(i10 + 8);
        return d0Var.H() / d0Var.H();
    }

    private static byte[] r(d0 d0Var, int i10, int i11) {
        int i12 = i10 + 8;
        while (i12 - i10 < i11) {
            d0Var.P(i12);
            int iN = d0Var.n();
            if (d0Var.n() == 1886547818) {
                return Arrays.copyOfRange(d0Var.d(), i12, iN + i12);
            }
            i12 += iN;
        }
        return null;
    }

    private static Pair s(d0 d0Var, int i10, int i11) throws ParserException {
        Pair pairG;
        int iE = d0Var.e();
        while (iE - i10 < i11) {
            d0Var.P(iE);
            int iN = d0Var.n();
            i9.o.a(iN > 0, "childAtomSize must be positive");
            if (d0Var.n() == 1936289382 && (pairG = g(d0Var, iE, iN)) != null) {
                return pairG;
            }
            iE += iN;
        }
        return null;
    }

    private static p t(d0 d0Var, int i10, int i11, String str) {
        int i12;
        int i13;
        int i14 = i10 + 8;
        while (true) {
            byte[] bArr = null;
            if (i14 - i10 >= i11) {
                return null;
            }
            d0Var.P(i14);
            int iN = d0Var.n();
            if (d0Var.n() == 1952804451) {
                int iC = q9.a.c(d0Var.n());
                d0Var.Q(1);
                if (iC == 0) {
                    d0Var.Q(1);
                    i13 = 0;
                    i12 = 0;
                } else {
                    int iD = d0Var.D();
                    i12 = iD & 15;
                    i13 = (iD & 240) >> 4;
                }
                boolean z10 = d0Var.D() == 1;
                int iD2 = d0Var.D();
                byte[] bArr2 = new byte[16];
                d0Var.j(bArr2, 0, 16);
                if (z10 && iD2 == 0) {
                    int iD3 = d0Var.D();
                    bArr = new byte[iD3];
                    d0Var.j(bArr, 0, iD3);
                }
                return new p(z10, str, iD2, bArr2, i13, i12, bArr);
            }
            i14 += iN;
        }
    }

    private static Metadata u(d0 d0Var, int i10) {
        d0Var.Q(12);
        while (d0Var.e() < i10) {
            int iE = d0Var.e();
            int iN = d0Var.n();
            if (d0Var.n() == 1935766900) {
                if (iN < 14) {
                    return null;
                }
                d0Var.Q(5);
                int iD = d0Var.D();
                if (iD != 12 && iD != 13) {
                    return null;
                }
                float f10 = iD == 12 ? 240.0f : 120.0f;
                d0Var.Q(1);
                return new Metadata(new SmtaMetadataEntry(f10, d0Var.D()));
            }
            d0Var.P(iE + iN);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:151:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:155:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:157:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:165:0x0414  */
    /* JADX WARN: Code duplicated, block: B:166:0x0416  */
    /* JADX WARN: Code duplicated, block: B:168:0x041a  */
    /* JADX WARN: Code duplicated, block: B:173:0x0436  */
    /* JADX WARN: Code duplicated, block: B:176:0x043b  */
    /* JADX WARN: Code duplicated, block: B:177:0x043e  */
    /* JADX WARN: Code duplicated, block: B:179:0x0441  */
    /* JADX WARN: Code duplicated, block: B:180:0x0444  */
    /* JADX WARN: Code duplicated, block: B:182:0x0447  */
    /* JADX WARN: Code duplicated, block: B:183:0x0449  */
    /* JADX WARN: Code duplicated, block: B:185:0x044d  */
    /* JADX WARN: Code duplicated, block: B:186:0x0450  */
    /* JADX WARN: Code duplicated, block: B:190:0x045f  */
    /* JADX WARN: Code duplicated, block: B:192:0x046d  */
    /* JADX WARN: Code duplicated, block: B:193:0x047d  */
    /* JADX WARN: Code duplicated, block: B:196:0x0485  */
    /* JADX WARN: Code duplicated, block: B:198:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:200:0x04be  */
    /* JADX WARN: Code duplicated, block: B:201:0x04c1  */
    /* JADX WARN: Code duplicated, block: B:211:0x042b A[EDGE_INSN: B:211:0x042b->B:170:0x042b BREAK  A[LOOP:2: B:153:0x03ca->B:169:0x0424], SYNTHETIC] */
    private static r v(o oVar, q9.a.C0859a c0859a, x xVar) throws ParserException {
        c fVar;
        boolean z10;
        int iH;
        int iH2;
        int iH3;
        int i10;
        int i11;
        int i12;
        boolean z11;
        int i13;
        o oVar2;
        int i14;
        long[] jArr;
        int[] iArr;
        int i15;
        long j10;
        long[] jArr2;
        int[] iArr2;
        int iN;
        int i16;
        int i17;
        int i18;
        long[] jArr3;
        boolean z12;
        int[] iArr3;
        int[] iArr4;
        long[] jArr4;
        int i19;
        boolean z13;
        int i20;
        int i21;
        long[] jArr5;
        long[] jArr6;
        int[] iArr5;
        int i22;
        boolean z14;
        long[] jArr7;
        int[] iArr6;
        int i23;
        int[] iArr7;
        long[] jArr8;
        int i24;
        int[] iArr8;
        long j11;
        int i25;
        long j12;
        int i26;
        int i27;
        int[] iArr9;
        int i28;
        int i29;
        int i30;
        long j13;
        boolean z15;
        int i31;
        int i32;
        int i33;
        boolean z16;
        q9.a.b bVarG = c0859a.g(1937011578);
        if (bVarG != null) {
            fVar = new e(bVarG, oVar.f69540f);
        } else {
            q9.a.b bVarG2 = c0859a.g(1937013298);
            if (bVarG2 == null) {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
            fVar = new f(bVarG2);
        }
        int sampleCount = fVar.getSampleCount();
        if (sampleCount == 0) {
            return new r(oVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        q9.a.b bVarG3 = c0859a.g(1937007471);
        if (bVarG3 == null) {
            bVarG3 = (q9.a.b) com.google.android.exoplayer2.util.a.e(c0859a.g(1668232756));
            z10 = true;
        } else {
            z10 = false;
        }
        d0 d0Var = bVarG3.f69410b;
        d0 d0Var2 = ((q9.a.b) com.google.android.exoplayer2.util.a.e(c0859a.g(1937011555))).f69410b;
        d0 d0Var3 = ((q9.a.b) com.google.android.exoplayer2.util.a.e(c0859a.g(1937011827))).f69410b;
        q9.a.b bVarG4 = c0859a.g(1937011571);
        d0 d0Var4 = bVarG4 != null ? bVarG4.f69410b : null;
        q9.a.b bVarG5 = c0859a.g(1668576371);
        d0 d0Var5 = bVarG5 != null ? bVarG5.f69410b : null;
        a aVar = new a(d0Var2, d0Var, z10);
        d0Var3.P(12);
        int iH4 = d0Var3.H() - 1;
        int iH5 = d0Var3.H();
        int iH6 = d0Var3.H();
        if (d0Var5 != null) {
            d0Var5.P(12);
            iH = d0Var5.H();
        } else {
            iH = 0;
        }
        if (d0Var4 != null) {
            d0Var4.P(12);
            iH3 = d0Var4.H();
            if (iH3 > 0) {
                iH2 = d0Var4.H() - 1;
            } else {
                iH2 = -1;
                d0Var4 = null;
            }
        } else {
            iH2 = -1;
            iH3 = 0;
        }
        int iA = fVar.a();
        String str = oVar.f69540f.f24901l;
        if (iA != -1 && (MimeTypes.AUDIO_RAW.equals(str) || MimeTypes.AUDIO_MLAW.equals(str) || MimeTypes.AUDIO_ALAW.equals(str)) && iH4 == 0 && iH == 0 && iH3 == 0) {
            int i34 = aVar.f69412a;
            long[] jArr9 = new long[i34];
            int[] iArr10 = new int[i34];
            while (aVar.a()) {
                int i35 = aVar.f69413b;
                jArr9[i35] = aVar.f69415d;
                iArr10[i35] = aVar.f69414c;
            }
            q9.d.b bVarA = q9.d.a(iA, jArr9, iArr10, iH6);
            long[] jArr10 = bVarA.f69444a;
            int[] iArr11 = bVarA.f69445b;
            int i36 = bVarA.f69446c;
            long[] jArr11 = bVarA.f69447d;
            int[] iArr12 = bVarA.f69448e;
            long j14 = bVarA.f69449f;
            oVar2 = oVar;
            i14 = sampleCount;
            jArr = jArr10;
            iArr = iArr11;
            i15 = i36;
            iArr2 = iArr12;
            j10 = j14;
            jArr2 = jArr11;
        } else {
            long[] jArrCopyOf = new long[sampleCount];
            int[] iArrCopyOf = new int[sampleCount];
            long[] jArrCopyOf2 = new long[sampleCount];
            int[] iArrCopyOf2 = new int[sampleCount];
            int iH7 = iH2;
            int i37 = 0;
            int i38 = 0;
            int i39 = 0;
            int iN2 = 0;
            int iH8 = 0;
            long j15 = 0;
            long j16 = 0;
            int i40 = iH;
            int i41 = iH6;
            int i42 = iH5;
            int i43 = iH4;
            int i44 = iH3;
            while (true) {
                i10 = i43;
                if (i37 >= sampleCount) {
                    i11 = i42;
                    i12 = i39;
                    break;
                }
                long j17 = j16;
                int i45 = i39;
                boolean zA = true;
                while (i45 == 0) {
                    zA = aVar.a();
                    if (!zA) {
                        break;
                    }
                    int i46 = i42;
                    long j18 = aVar.f69415d;
                    i45 = aVar.f69414c;
                    j17 = j18;
                    i42 = i46;
                    i41 = i41;
                    sampleCount = sampleCount;
                }
                int i47 = sampleCount;
                i11 = i42;
                int i48 = i41;
                if (!zA) {
                    s.i("AtomParsers", "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i37);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i37);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i37);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i37);
                    sampleCount = i37;
                    i12 = i45;
                    break;
                }
                if (d0Var5 != null) {
                    while (iH8 == 0 && i40 > 0) {
                        iH8 = d0Var5.H();
                        iN2 = d0Var5.n();
                        i40--;
                    }
                    iH8--;
                }
                int i49 = iN2;
                jArrCopyOf[i37] = j17;
                int nextSampleSize = fVar.readNextSampleSize();
                iArrCopyOf[i37] = nextSampleSize;
                if (nextSampleSize > i38) {
                    i38 = nextSampleSize;
                }
                jArrCopyOf2[i37] = j15 + ((long) i49);
                iArrCopyOf2[i37] = d0Var4 == null ? 1 : 0;
                if (i37 == iH7) {
                    iArrCopyOf2[i37] = 1;
                    i44--;
                    if (i44 > 0) {
                        iH7 = ((d0) com.google.android.exoplayer2.util.a.e(d0Var4)).H() - 1;
                    }
                }
                int i50 = iH7;
                j15 += (long) i48;
                int iH9 = i11 - 1;
                if (iH9 != 0 || i10 <= 0) {
                    iN = i48;
                    i16 = i10;
                } else {
                    iH9 = d0Var3.H();
                    iN = d0Var3.n();
                    i16 = i10 - 1;
                }
                int i51 = iH9;
                long j19 = j17 + ((long) iArrCopyOf[i37]);
                int i52 = i45 - 1;
                i37++;
                j16 = j19;
                iH7 = i50;
                i41 = iN;
                i39 = i52;
                sampleCount = i47;
                iN2 = i49;
                i43 = i16;
                i42 = i51;
            }
            long j20 = j15 + ((long) iN2);
            if (d0Var5 == null) {
                z11 = true;
                break;
            }
            while (true) {
                if (i40 <= 0) {
                    z11 = true;
                    break;
                }
                if (d0Var5.H() != 0) {
                    z11 = false;
                    break;
                }
                d0Var5.n();
                i40--;
            }
            if (i44 == 0 && i11 == 0 && i12 == 0 && i10 == 0) {
                i13 = iH8;
                if (i13 == 0 && z11) {
                    oVar2 = oVar;
                }
                i14 = sampleCount;
                jArr = jArrCopyOf;
                iArr = iArrCopyOf;
                i15 = i38;
                j10 = j20;
                jArr2 = jArrCopyOf2;
                iArr2 = iArrCopyOf2;
            } else {
                i13 = iH8;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Inconsistent stbl box for track ");
            oVar2 = oVar;
            sb2.append(oVar2.f69535a);
            sb2.append(": remainingSynchronizationSamples ");
            sb2.append(i44);
            sb2.append(", remainingSamplesAtTimestampDelta ");
            sb2.append(i11);
            sb2.append(", remainingSamplesInChunk ");
            sb2.append(i12);
            sb2.append(", remainingTimestampDeltaChanges ");
            sb2.append(i10);
            sb2.append(", remainingSamplesAtTimestampOffset ");
            sb2.append(i13);
            sb2.append(!z11 ? ", ctts invalid" : "");
            s.i("AtomParsers", sb2.toString());
            i14 = sampleCount;
            jArr = jArrCopyOf;
            iArr = iArrCopyOf;
            i15 = i38;
            j10 = j20;
            jArr2 = jArrCopyOf2;
            iArr2 = iArrCopyOf2;
        }
        long jN0 = p0.N0(j10, 1000000L, oVar2.f69537c);
        long[] jArr12 = oVar2.f69542h;
        if (jArr12 == null) {
            p0.P0(jArr2, 1000000L, oVar2.f69537c);
            return new r(oVar, jArr, iArr, i15, jArr2, iArr2, jN0);
        }
        if (jArr12.length == 1 && oVar2.f69536b == 1 && jArr2.length >= 2) {
            long j21 = ((long[]) com.google.android.exoplayer2.util.a.e(oVar2.f69543i))[0];
            long jN1 = j21 + p0.N0(oVar2.f69542h[0], oVar2.f69537c, oVar2.f69538d);
            i17 = i14;
            if (b(jArr2, j10, j21, jN1)) {
                long jN2 = p0.N0(j21 - jArr2[0], oVar2.f69540f.f24915z, oVar2.f69537c);
                i18 = i15;
                long jN3 = p0.N0(j10 - jN1, oVar2.f69540f.f24915z, oVar2.f69537c);
                if ((jN2 != 0 || jN3 != 0) && jN2 <= 2147483647L && jN3 <= 2147483647L) {
                    xVar.f61990a = (int) jN2;
                    xVar.f61991b = (int) jN3;
                    p0.P0(jArr2, 1000000L, oVar2.f69537c);
                    return new r(oVar, jArr, iArr, i18, jArr2, iArr2, p0.N0(oVar2.f69542h[0], 1000000L, oVar2.f69538d));
                }
            }
            jArr3 = oVar2.f69542h;
            if (jArr3.length != 1 && jArr3[0] == 0) {
                long j22 = ((long[]) com.google.android.exoplayer2.util.a.e(oVar2.f69543i))[0];
                for (int i53 = 0; i53 < jArr2.length; i53++) {
                    jArr2[i53] = p0.N0(jArr2[i53] - j22, 1000000L, oVar2.f69537c);
                }
                return new r(oVar, jArr, iArr, i18, jArr2, iArr2, p0.N0(j10 - j22, 1000000L, oVar2.f69537c));
            }
            if (oVar2.f69536b == 1) {
                z12 = true;
            } else {
                z12 = false;
            }
            iArr3 = new int[jArr3.length];
            iArr4 = new int[jArr3.length];
            jArr4 = (long[]) com.google.android.exoplayer2.util.a.e(oVar2.f69543i);
            i19 = 0;
            z13 = false;
            i20 = 0;
            i21 = 0;
            while (true) {
                jArr5 = oVar2.f69542h;
                if (i19 < jArr5.length) {
                    break;
                }
                long[] jArr13 = jArr;
                int[] iArr13 = iArr;
                j13 = jArr4[i19];
                if (j13 != -1) {
                    i32 = i21;
                    boolean z17 = z13;
                    int i54 = i20;
                    long jN4 = p0.N0(jArr5[i19], oVar2.f69537c, oVar2.f69538d);
                    iArr3[i19] = p0.i(jArr2, j13, true, true);
                    iArr4[i19] = p0.e(jArr2, j13 + jN4, z12, false);
                    while (true) {
                        i33 = iArr3[i19];
                        i31 = iArr4[i19];
                        if (i33 >= i31 || (iArr2[i33] & 1) != 0) {
                            break;
                        }
                        iArr3[i19] = i33 + 1;
                    }
                    i20 = i54 + (i31 - i33);
                    if (i32 != i33) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    z15 = z17 | z16;
                } else {
                    z15 = z13;
                    i31 = i21;
                }
                i19++;
                z13 = z15;
                i21 = i31;
                jArr = jArr13;
                iArr = iArr13;
            }
            jArr6 = jArr;
            iArr5 = iArr;
            boolean z18 = z13;
            i22 = 0;
            z14 = z18 | (i20 != i17);
            if (z14) {
                jArr7 = new long[i20];
            } else {
                jArr7 = jArr6;
            }
            if (z14) {
                iArr6 = new int[i20];
            } else {
                iArr6 = iArr5;
            }
            if (z14) {
                i23 = 0;
            } else {
                i23 = i18;
            }
            if (z14) {
                iArr7 = new int[i20];
            } else {
                iArr7 = iArr2;
            }
            jArr8 = new long[i20];
            i24 = i23;
            iArr8 = iArr5;
            j11 = 0;
            i25 = 0;
            while (i22 < oVar2.f69542h.length) {
                j12 = oVar2.f69543i[i22];
                i26 = iArr3[i22];
                int[] iArr14 = iArr3;
                i27 = iArr4[i22];
                int[] iArr15 = iArr4;
                if (z14) {
                    int i55 = i27 - i26;
                    System.arraycopy(jArr6, i26, jArr7, i25, i55);
                    iArr9 = iArr8;
                    System.arraycopy(iArr9, i26, iArr6, i25, i55);
                    System.arraycopy(iArr2, i26, iArr7, i25, i55);
                } else {
                    iArr9 = iArr8;
                }
                i28 = i24;
                while (i26 < i27) {
                    i29 = i28;
                    int i56 = i27;
                    long[] jArr14 = jArr2;
                    int[] iArr16 = iArr2;
                    int[] iArr17 = iArr7;
                    long j23 = j11;
                    jArr8[i25] = p0.N0(j11, 1000000L, oVar2.f69538d) + p0.N0(Math.max(0L, jArr2[i26] - j12), 1000000L, oVar2.f69537c);
                    if (z14) {
                        i30 = i29;
                        if (iArr6[i25] > i30) {
                            i28 = iArr9[i26];
                        }
                        i25++;
                        i26++;
                        i27 = i56;
                        j11 = j23;
                        jArr2 = jArr14;
                        iArr2 = iArr16;
                        iArr7 = iArr17;
                    } else {
                        i30 = i29;
                    }
                    i28 = i30;
                    i25++;
                    i26++;
                    i27 = i56;
                    j11 = j23;
                    jArr2 = jArr14;
                    iArr2 = iArr16;
                    iArr7 = iArr17;
                }
                long[] jArr15 = jArr2;
                long j24 = j11 + oVar2.f69542h[i22];
                i22++;
                i24 = i28;
                iArr8 = iArr9;
                j11 = j24;
                iArr3 = iArr14;
                jArr2 = jArr15;
                iArr2 = iArr2;
                iArr4 = iArr15;
                jArr6 = jArr6;
                iArr7 = iArr7;
            }
            return new r(oVar, jArr7, iArr6, i24, jArr8, iArr7, p0.N0(j11, 1000000L, oVar2.f69538d));
        }
        i17 = i14;
        i18 = i15;
        jArr3 = oVar2.f69542h;
        if (jArr3.length != 1) {
        }
        if (oVar2.f69536b == 1) {
            z12 = true;
        } else {
            z12 = false;
        }
        iArr3 = new int[jArr3.length];
        iArr4 = new int[jArr3.length];
        jArr4 = (long[]) com.google.android.exoplayer2.util.a.e(oVar2.f69543i);
        i19 = 0;
        z13 = false;
        i20 = 0;
        i21 = 0;
        while (true) {
            jArr5 = oVar2.f69542h;
            if (i19 < jArr5.length) {
                break;
                break;
            }
            long[] jArr16 = jArr;
            int[] iArr18 = iArr;
            j13 = jArr4[i19];
            if (j13 != -1) {
                i32 = i21;
                boolean z19 = z13;
                int i57 = i20;
                long jN5 = p0.N0(jArr5[i19], oVar2.f69537c, oVar2.f69538d);
                iArr3[i19] = p0.i(jArr2, j13, true, true);
                iArr4[i19] = p0.e(jArr2, j13 + jN5, z12, false);
                while (true) {
                    i33 = iArr3[i19];
                    i31 = iArr4[i19];
                    if (i33 >= i31) {
                        break;
                    }
                    break;
                    break;
                    iArr3[i19] = i33 + 1;
                }
                i20 = i57 + (i31 - i33);
                if (i32 != i33) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                z15 = z19 | z16;
            } else {
                z15 = z13;
                i31 = i21;
            }
            i19++;
            z13 = z15;
            i21 = i31;
            jArr = jArr16;
            iArr = iArr18;
        }
        jArr6 = jArr;
        iArr5 = iArr;
        boolean z110 = z13;
        i22 = 0;
        z14 = z110 | (i20 != i17);
        if (z14) {
            jArr7 = new long[i20];
        } else {
            jArr7 = jArr6;
        }
        if (z14) {
            iArr6 = new int[i20];
        } else {
            iArr6 = iArr5;
        }
        if (z14) {
            i23 = 0;
        } else {
            i23 = i18;
        }
        if (z14) {
            iArr7 = new int[i20];
        } else {
            iArr7 = iArr2;
        }
        jArr8 = new long[i20];
        i24 = i23;
        iArr8 = iArr5;
        j11 = 0;
        i25 = 0;
        while (i22 < oVar2.f69542h.length) {
            j12 = oVar2.f69543i[i22];
            i26 = iArr3[i22];
            int[] iArr19 = iArr3;
            i27 = iArr4[i22];
            int[] iArr110 = iArr4;
            if (z14) {
                int i58 = i27 - i26;
                System.arraycopy(jArr6, i26, jArr7, i25, i58);
                iArr9 = iArr8;
                System.arraycopy(iArr9, i26, iArr6, i25, i58);
                System.arraycopy(iArr2, i26, iArr7, i25, i58);
            } else {
                iArr9 = iArr8;
            }
            i28 = i24;
            while (i26 < i27) {
                i29 = i28;
                int i59 = i27;
                long[] jArr17 = jArr2;
                int[] iArr111 = iArr2;
                int[] iArr112 = iArr7;
                long j25 = j11;
                jArr8[i25] = p0.N0(j11, 1000000L, oVar2.f69538d) + p0.N0(Math.max(0L, jArr2[i26] - j12), 1000000L, oVar2.f69537c);
                if (z14) {
                    i30 = i29;
                    if (iArr6[i25] > i30) {
                        i28 = iArr9[i26];
                    }
                    i25++;
                    i26++;
                    i27 = i59;
                    j11 = j25;
                    jArr2 = jArr17;
                    iArr2 = iArr111;
                    iArr7 = iArr112;
                } else {
                    i30 = i29;
                }
                i28 = i30;
                i25++;
                i26++;
                i27 = i59;
                j11 = j25;
                jArr2 = jArr17;
                iArr2 = iArr111;
                iArr7 = iArr112;
            }
            long[] jArr18 = jArr2;
            long j26 = j11 + oVar2.f69542h[i22];
            i22++;
            i24 = i28;
            iArr8 = iArr9;
            j11 = j26;
            iArr3 = iArr19;
            jArr2 = jArr18;
            iArr2 = iArr2;
            iArr4 = iArr110;
            jArr6 = jArr6;
            iArr7 = iArr7;
        }
        return new r(oVar, jArr7, iArr6, i24, jArr8, iArr7, p0.N0(j11, 1000000L, oVar2.f69538d));
    }

    private static d w(d0 d0Var, int i10, int i11, String str, DrmInitData drmInitData, boolean z10) throws ParserException {
        int i12;
        d0Var.P(12);
        int iN = d0Var.n();
        d dVar = new d(iN);
        for (int i13 = 0; i13 < iN; i13++) {
            int iE = d0Var.e();
            int iN2 = d0Var.n();
            i9.o.a(iN2 > 0, "childAtomSize must be positive");
            int iN3 = d0Var.n();
            if (iN3 == 1635148593 || iN3 == 1635148595 || iN3 == 1701733238 || iN3 == 1831958048 || iN3 == 1836070006 || iN3 == 1752589105 || iN3 == 1751479857 || iN3 == 1932670515 || iN3 == 1211250227 || iN3 == 1987063864 || iN3 == 1987063865 || iN3 == 1635135537 || iN3 == 1685479798 || iN3 == 1685479729 || iN3 == 1685481573 || iN3 == 1685481521) {
                i12 = iE;
                D(d0Var, iN3, i12, iN2, i10, i11, drmInitData, dVar, i13);
            } else if (iN3 == 1836069985 || iN3 == 1701733217 || iN3 == 1633889587 || iN3 == 1700998451 || iN3 == 1633889588 || iN3 == 1835823201 || iN3 == 1685353315 || iN3 == 1685353317 || iN3 == 1685353320 || iN3 == 1685353324 || iN3 == 1685353336 || iN3 == 1935764850 || iN3 == 1935767394 || iN3 == 1819304813 || iN3 == 1936684916 || iN3 == 1953984371 || iN3 == 778924082 || iN3 == 778924083 || iN3 == 1835557169 || iN3 == 1835560241 || iN3 == 1634492771 || iN3 == 1634492791 || iN3 == 1970037111 || iN3 == 1332770163 || iN3 == 1716281667) {
                i12 = iE;
                f(d0Var, iN3, iE, iN2, i10, str, z10, drmInitData, dVar, i13);
            } else {
                if (iN3 == 1414810956 || iN3 == 1954034535 || iN3 == 2004251764 || iN3 == 1937010800 || iN3 == 1664495672) {
                    x(d0Var, iN3, iE, iN2, i10, str, dVar);
                } else if (iN3 == 1835365492) {
                    o(d0Var, iN3, iE, i10, dVar);
                } else if (iN3 == 1667329389) {
                    dVar.f69426b = new p1.b().R(i10).e0(MimeTypes.APPLICATION_CAMERA_MOTION).E();
                }
                i12 = iE;
            }
            d0Var.P(i12 + iN2);
        }
        return dVar;
    }

    private static void x(d0 d0Var, int i10, int i11, int i12, int i13, String str, d dVar) {
        d0Var.P(i11 + 16);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableListOf = null;
        long j10 = Long.MAX_VALUE;
        if (i10 != 1414810956) {
            if (i10 == 1954034535) {
                int i14 = i12 - 16;
                byte[] bArr = new byte[i14];
                d0Var.j(bArr, 0, i14);
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
                dVar.f69428d = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        dVar.f69426b = new p1.b().R(i13).e0(str2).V(str).i0(j10).T(immutableListOf).E();
    }

    private static g y(d0 d0Var) {
        long j10;
        d0Var.P(8);
        int iC = q9.a.c(d0Var.n());
        d0Var.Q(iC == 0 ? 8 : 16);
        int iN = d0Var.n();
        d0Var.Q(4);
        int iE = d0Var.e();
        int i10 = iC == 0 ? 4 : 8;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            j10 = C.TIME_UNSET;
            if (i12 >= i10) {
                d0Var.Q(i10);
                break;
            }
            if (d0Var.d()[iE + i12] != -1) {
                long jF = iC == 0 ? d0Var.F() : d0Var.I();
                if (jF == 0) {
                    break;
                }
                j10 = jF;
                break;
            }
            i12++;
        }
        d0Var.Q(16);
        int iN2 = d0Var.n();
        int iN3 = d0Var.n();
        d0Var.Q(4);
        int iN4 = d0Var.n();
        int iN5 = d0Var.n();
        if (iN2 == 0 && iN3 == 65536 && iN4 == -65536 && iN5 == 0) {
            i11 = 90;
        } else if (iN2 == 0 && iN3 == -65536 && iN4 == 65536 && iN5 == 0) {
            i11 = 270;
        } else if (iN2 == -65536 && iN3 == 0 && iN4 == 0 && iN5 == -65536) {
            i11 = 180;
        }
        return new g(iN, j10, i11);
    }

    private static o z(q9.a.C0859a c0859a, q9.a.b bVar, long j10, DrmInitData drmInitData, boolean z10, boolean z11) throws ParserException {
        long[] jArr;
        long[] jArr2;
        q9.a.C0859a c0859aF;
        Pair pairH;
        q9.a.C0859a c0859a2 = (q9.a.C0859a) com.google.android.exoplayer2.util.a.e(c0859a.f(1835297121));
        int iD = d(k(((q9.a.b) com.google.android.exoplayer2.util.a.e(c0859a2.g(1751411826))).f69410b));
        if (iD == -1) {
            return null;
        }
        g gVarY = y(((q9.a.b) com.google.android.exoplayer2.util.a.e(c0859a.g(1953196132))).f69410b);
        long jN0 = C.TIME_UNSET;
        long j11 = j10 == C.TIME_UNSET ? gVarY.f69438b : j10;
        long jP = p(bVar.f69410b);
        if (j11 != C.TIME_UNSET) {
            jN0 = p0.N0(j11, 1000000L, jP);
        }
        long j12 = jN0;
        q9.a.C0859a c0859a3 = (q9.a.C0859a) com.google.android.exoplayer2.util.a.e(((q9.a.C0859a) com.google.android.exoplayer2.util.a.e(c0859a2.f(1835626086))).f(1937007212));
        Pair pairM = m(((q9.a.b) com.google.android.exoplayer2.util.a.e(c0859a2.g(1835296868))).f69410b);
        d dVarW = w(((q9.a.b) com.google.android.exoplayer2.util.a.e(c0859a3.g(1937011556))).f69410b, gVarY.f69437a, gVarY.f69439c, (String) pairM.second, drmInitData, z11);
        if (z10 || (c0859aF = c0859a.f(1701082227)) == null || (pairH = h(c0859aF)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) pairH.first;
            jArr2 = (long[]) pairH.second;
            jArr = jArr3;
        }
        if (dVarW.f69426b == null) {
            return null;
        }
        return new o(gVarY.f69437a, iD, ((Long) pairM.first).longValue(), jP, j12, dVarW.f69426b, dVarW.f69428d, dVarW.f69425a, dVarW.f69427c, jArr, jArr2);
    }
}
