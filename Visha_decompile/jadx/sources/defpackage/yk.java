package defpackage;

import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class yk {
    public static final byte[] a = blb.f0("OpusHead");

    public static final class a {
        public final int a;
        public int b;
        public int c;
        public long d;
        public final boolean e;
        public final qw7 f;
        public final qw7 g;
        public int h;
        public int i;

        public a(qw7 qw7Var, qw7 qw7Var2, boolean z) throws ParserException {
            this.g = qw7Var;
            this.f = qw7Var2;
            this.e = z;
            qw7Var2.O(12);
            this.a = qw7Var2.G();
            qw7Var.O(12);
            this.i = qw7Var.G();
            rk3.a(qw7Var.n() == 1, "first_chunk must be 1");
            this.b = -1;
        }

        public boolean a() {
            int i = this.b + 1;
            this.b = i;
            if (i == this.a) {
                return false;
            }
            this.d = this.e ? this.f.H() : this.f.E();
            if (this.b == this.h) {
                this.c = this.g.G();
                this.g.P(4);
                int i2 = this.i - 1;
                this.i = i2;
                this.h = i2 > 0 ? this.g.G() - 1 : -1;
            }
            return true;
        }
    }

    public static final class b {
        public final String a;
        public final byte[] b;
        public final long c;
        public final long d;

        public b(String str, byte[] bArr, long j, long j2) {
            this.a = str;
            this.b = bArr;
            this.c = j;
            this.d = j2;
        }
    }

    public interface c {
        int getFixedSampleSize();

        int getSampleCount();

        int readNextSampleSize();
    }

    public static final class d {
        public final vua[] a;
        public k b;
        public int c;
        public int d = 0;

        public d(int i) {
            this.a = new vua[i];
        }
    }

    public static final class e implements c {
        public final int a;
        public final int b;
        public final qw7 c;

        public e(xk.b bVar, k kVar) {
            qw7 qw7Var = bVar.b;
            this.c = qw7Var;
            qw7Var.O(12);
            int iG = qw7Var.G();
            if ("audio/raw".equals(kVar.m)) {
                int iX = blb.X(kVar.B, kVar.z);
                if (iG == 0 || iG % iX != 0) {
                    op5.i("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iX + ", stsz sample size: " + iG);
                    iG = iX;
                }
            }
            this.a = iG == 0 ? -1 : iG;
            this.b = qw7Var.G();
        }

        @Override
        public int getFixedSampleSize() {
            return this.a;
        }

        @Override
        public int getSampleCount() {
            return this.b;
        }

        @Override
        public int readNextSampleSize() {
            int i = this.a;
            return i == -1 ? this.c.G() : i;
        }
    }

    public static final class f implements c {
        public final qw7 a;
        public final int b;
        public final int c;
        public int d;
        public int e;

        public f(xk.b bVar) {
            qw7 qw7Var = bVar.b;
            this.a = qw7Var;
            qw7Var.O(12);
            this.c = qw7Var.G() & 255;
            this.b = qw7Var.G();
        }

        @Override
        public int getFixedSampleSize() {
            return -1;
        }

        @Override
        public int getSampleCount() {
            return this.b;
        }

        @Override
        public int readNextSampleSize() {
            int i = this.c;
            if (i == 8) {
                return this.a.C();
            }
            if (i == 16) {
                return this.a.I();
            }
            int i2 = this.d;
            this.d = i2 + 1;
            if (i2 % 2 != 0) {
                return this.e & 15;
            }
            int iC = this.a.C();
            this.e = iC;
            return (iC & 240) >> 4;
        }
    }

    public static final class g {
        public final int a;
        public final long b;
        public final int c;

        public g(int i, long j, int i2) {
            this.a = i;
            this.b = j;
            this.c = i2;
        }
    }

    public static List A(xk.a aVar, ed4 ed4Var, long j, DrmInitData drmInitData, boolean z, boolean z2, o74 o74Var) {
        tua tuaVar;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < aVar.d.size(); i++) {
            xk.a aVar2 = (xk.a) aVar.d.get(i);
            if (aVar2.a == 1953653099 && (tuaVar = (tua) o74Var.apply(z(aVar2, (xk.b) zi.e(aVar.g(Mp4Box.TYPE_mvhd)), j, drmInitData, z, z2))) != null) {
                arrayList.add(v(tuaVar, (xk.a) zi.e(((xk.a) zi.e(((xk.a) zi.e(aVar2.f(Mp4Box.TYPE_mdia))).f(Mp4Box.TYPE_minf))).f(Mp4Box.TYPE_stbl)), ed4Var));
            }
        }
        return arrayList;
    }

    public static Pair B(xk.b bVar) {
        qw7 qw7Var = bVar.b;
        qw7Var.O(8);
        Metadata metadataC = null;
        Metadata metadataU = null;
        while (qw7Var.a() >= 8) {
            int iE = qw7Var.e();
            int iN = qw7Var.n();
            int iN2 = qw7Var.n();
            if (iN2 == 1835365473) {
                qw7Var.O(iE);
                metadataC = C(qw7Var, iE + iN);
            } else if (iN2 == 1936553057) {
                qw7Var.O(iE);
                metadataU = u(qw7Var, iE + iN);
            }
            qw7Var.O(iE + iN);
        }
        return Pair.create(metadataC, metadataU);
    }

    public static Metadata C(qw7 qw7Var, int i) {
        qw7Var.P(8);
        e(qw7Var);
        while (qw7Var.e() < i) {
            int iE = qw7Var.e();
            int iN = qw7Var.n();
            if (qw7Var.n() == 1768715124) {
                qw7Var.O(iE);
                return l(qw7Var, iE + iN);
            }
            qw7Var.O(iE + iN);
        }
        return null;
    }

    public static void D(qw7 qw7Var, int i, int i2, int i3, int i4, int i5, DrmInitData drmInitData, d dVar, int i6) throws ParserException {
        String str;
        DrmInitData drmInitData2;
        byte[] bArr;
        float f2;
        List list;
        String str2;
        int i7 = i2;
        int i8 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        d dVar2 = dVar;
        qw7Var.O(i7 + 16);
        qw7Var.P(16);
        int I = qw7Var.I();
        int I2 = qw7Var.I();
        qw7Var.P(50);
        int iE = qw7Var.e();
        int iIntValue = i;
        if (iIntValue == 1701733238) {
            Pair pairS = s(qw7Var, i7, i8);
            if (pairS != null) {
                iIntValue = ((Integer) pairS.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((vua) pairS.second).b);
                dVar2.a[i6] = (vua) pairS.second;
            }
            qw7Var.O(iE);
        }
        String str3 = "video/3gpp";
        if (iIntValue == 1831958048) {
            str = MimeTypes.VIDEO_MPEG;
        } else {
            str = iIntValue == 1211250227 ? "video/3gpp" : null;
        }
        float fQ = 1.0f;
        byte[] bArrR = null;
        String str4 = null;
        List listOf = null;
        int i9 = -1;
        int iB = -1;
        int i10 = -1;
        int iC = -1;
        ByteBuffer byteBufferA = null;
        b bVarI = null;
        boolean z = false;
        while (true) {
            if (iE - i7 >= i8) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                break;
            }
            qw7Var.O(iE);
            int iE2 = qw7Var.e();
            String str5 = str3;
            int iN = qw7Var.n();
            if (iN == 0) {
                drmInitData2 = drmInitDataCopyWithSchemeType;
                if (qw7Var.e() - i7 == i8) {
                    break;
                }
            } else {
                drmInitData2 = drmInitDataCopyWithSchemeType;
            }
            rk3.a(iN > 0, "childAtomSize must be positive");
            int iN2 = qw7Var.n();
            if (iN2 == 1635148611) {
                rk3.a(str == null, null);
                qw7Var.O(iE2 + 8);
                r30 r30VarB = r30.b(qw7Var);
                listOf = r30VarB.a;
                dVar2.c = r30VarB.b;
                if (!z) {
                    fQ = r30VarB.e;
                }
                str4 = r30VarB.f;
                str2 = "video/avc";
            } else if (iN2 == 1752589123) {
                rk3.a(str == null, null);
                qw7Var.O(iE2 + 8);
                ip4 ip4VarA = ip4.a(qw7Var);
                listOf = ip4VarA.a;
                dVar2.c = ip4VarA.b;
                if (!z) {
                    fQ = ip4VarA.e;
                }
                str4 = ip4VarA.f;
                str2 = "video/hevc";
            } else {
                if (iN2 == 1685480259 || iN2 == 1685485123) {
                    I2 = I2;
                    iIntValue = iIntValue;
                    bArr = bArrR;
                    f2 = fQ;
                    list = listOf;
                    qw2 qw2VarA = qw2.a(qw7Var);
                    if (qw2VarA != null) {
                        str4 = qw2VarA.c;
                        str = "video/dolby-vision";
                    }
                } else if (iN2 == 1987076931) {
                    rk3.a(str == null, null);
                    str2 = iIntValue == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                } else {
                    if (iN2 == 1635135811) {
                        rk3.a(str == null, null);
                        str2 = MimeTypes.VIDEO_AV1;
                    } else if (iN2 == 1668050025) {
                        if (byteBufferA == null) {
                            byteBufferA = a();
                        }
                        ByteBuffer byteBuffer = byteBufferA;
                        byteBuffer.position(21);
                        byteBuffer.putShort(qw7Var.y());
                        byteBuffer.putShort(qw7Var.y());
                        byteBufferA = byteBuffer;
                    } else if (iN2 == 1835295606) {
                        if (byteBufferA == null) {
                            byteBufferA = a();
                        }
                        ByteBuffer byteBuffer2 = byteBufferA;
                        short sY = qw7Var.y();
                        short sY2 = qw7Var.y();
                        short sY3 = qw7Var.y();
                        short sY4 = qw7Var.y();
                        short sY5 = qw7Var.y();
                        List list2 = listOf;
                        short sY6 = qw7Var.y();
                        byte[] bArr2 = bArrR;
                        short sY7 = qw7Var.y();
                        float f3 = fQ;
                        short sY8 = qw7Var.y();
                        long jE = qw7Var.E();
                        long jE2 = qw7Var.E();
                        byteBuffer2.position(1);
                        byteBuffer2.putShort(sY5);
                        byteBuffer2.putShort(sY6);
                        byteBuffer2.putShort(sY);
                        byteBuffer2.putShort(sY2);
                        byteBuffer2.putShort(sY3);
                        byteBuffer2.putShort(sY4);
                        byteBuffer2.putShort(sY7);
                        byteBuffer2.putShort(sY8);
                        byteBuffer2.putShort((short) (jE / 10000));
                        byteBuffer2.putShort((short) (jE2 / 10000));
                        byteBufferA = byteBuffer2;
                        listOf = list2;
                        bArrR = bArr2;
                        fQ = f3;
                    } else {
                        I2 = I2;
                        iIntValue = iIntValue;
                        bArr = bArrR;
                        f2 = fQ;
                        list = listOf;
                        if (iN2 == 1681012275) {
                            rk3.a(str == null, null);
                            str = str5;
                        } else if (iN2 == 1702061171) {
                            rk3.a(str == null, null);
                            bVarI = i(qw7Var, iE2);
                            String str6 = bVarI.a;
                            byte[] bArr3 = bVarI.b;
                            listOf = bArr3 != null ? ImmutableList.of(bArr3) : list;
                            str = str6;
                            bArrR = bArr;
                            fQ = f2;
                        } else if (iN2 == 1885434736) {
                            fQ = q(qw7Var, iE2);
                            listOf = list;
                            bArrR = bArr;
                            z = true;
                        } else {
                            if (iN2 == 1937126244) {
                                bArrR = r(qw7Var, iE2, iN);
                                listOf = list;
                            } else if (iN2 == 1936995172) {
                                int iC2 = qw7Var.C();
                                qw7Var.P(3);
                                if (iC2 == 0) {
                                    int iC3 = qw7Var.C();
                                    if (iC3 == 0) {
                                        i9 = 0;
                                    } else if (iC3 == 1) {
                                        i9 = 1;
                                    } else if (iC3 == 2) {
                                        i9 = 2;
                                    } else if (iC3 == 3) {
                                        i9 = 3;
                                    }
                                }
                            } else if (iN2 == 1668246642) {
                                int iN3 = qw7Var.n();
                                if (iN3 == 1852009592 || iN3 == 1852009571) {
                                    int I3 = qw7Var.I();
                                    int I4 = qw7Var.I();
                                    qw7Var.P(2);
                                    boolean z2 = iN == 19 && (qw7Var.C() & 128) != 0;
                                    iB = v81.b(I3);
                                    i10 = z2 ? 1 : 2;
                                    iC = v81.c(I4);
                                } else {
                                    op5.i("AtomParsers", "Unsupported color type: " + xk.a(iN3));
                                }
                            }
                            fQ = f2;
                        }
                    }
                    iE += iN;
                    i7 = i2;
                    i8 = i3;
                    dVar2 = dVar;
                    str3 = str5;
                    drmInitDataCopyWithSchemeType = drmInitData2;
                    iIntValue = iIntValue;
                    I2 = I2;
                }
                listOf = list;
                bArrR = bArr;
                fQ = f2;
                iE += iN;
                i7 = i2;
                i8 = i3;
                dVar2 = dVar;
                str3 = str5;
                drmInitDataCopyWithSchemeType = drmInitData2;
                iIntValue = iIntValue;
                I2 = I2;
            }
            str = str2;
            iE += iN;
            i7 = i2;
            i8 = i3;
            dVar2 = dVar;
            str3 = str5;
            drmInitDataCopyWithSchemeType = drmInitData2;
            iIntValue = iIntValue;
            I2 = I2;
        }
        int i11 = I2;
        byte[] bArr4 = bArrR;
        float f4 = fQ;
        List list3 = listOf;
        if (str == null) {
            return;
        }
        k.b bVarM = new k.b().R(i4).e0(str).I(str4).j0(I).Q(i11).a0(f4).d0(i5).b0(bArr4).h0(i9).T(list3).M(drmInitData2);
        int i12 = iB;
        int i13 = i10;
        int i14 = iC;
        if (i12 != -1 || i13 != -1 || i14 != -1 || byteBufferA != null) {
            bVarM.J(new v81(i12, i13, i14, byteBufferA != null ? byteBufferA.array() : null));
        }
        if (bVarI != null) {
            bVarM.G(Ints.n(bVarI.c)).Z(Ints.n(bVarI.d));
        }
        dVar.b = bVarM.E();
    }

    public static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    public static boolean b(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[blb.p(4, 0, length)] && jArr[blb.p(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    public static int c(qw7 qw7Var, int i, int i2, int i3) throws ParserException {
        int iE = qw7Var.e();
        rk3.a(iE >= i2, null);
        while (iE - i2 < i3) {
            qw7Var.O(iE);
            int iN = qw7Var.n();
            rk3.a(iN > 0, "childAtomSize must be positive");
            if (qw7Var.n() == i) {
                return iE;
            }
            iE += iN;
        }
        return -1;
    }

    public static int d(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    public static void e(qw7 qw7Var) {
        int iE = qw7Var.e();
        qw7Var.P(4);
        if (qw7Var.n() != 1751411826) {
            iE += 4;
        }
        qw7Var.O(iE);
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
    public static void f(qw7 qw7Var, int i, int i2, int i3, int i4, String str, boolean z, DrmInitData drmInitData, d dVar, int i5) throws ParserException {
        int I;
        int iD;
        int iN;
        int iG;
        String str2;
        String str3;
        int i6;
        String str4;
        b bVarI;
        String str5;
        List listOf;
        int iN2;
        boolean z2;
        int iN3;
        char c2;
        int iC;
        byte[] bArr;
        int i7 = i2;
        int i8 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        qw7Var.O(i7 + 16);
        if (z) {
            I = qw7Var.I();
            qw7Var.P(6);
        } else {
            qw7Var.P(8);
            I = 0;
        }
        if (I == 0 || I == 1) {
            int I2 = qw7Var.I();
            qw7Var.P(6);
            iD = qw7Var.D();
            qw7Var.O(qw7Var.e() - 4);
            iN = qw7Var.n();
            if (I == 1) {
                qw7Var.P(16);
            }
            iG = I2;
        } else {
            if (I != 2) {
                return;
            }
            qw7Var.P(16);
            iD = (int) Math.round(qw7Var.l());
            iG = qw7Var.G();
            qw7Var.P(20);
            iN = 0;
        }
        int iE = qw7Var.e();
        int iIntValue = i;
        if (iIntValue == 1701733217) {
            Pair pairS = s(qw7Var, i7, i8);
            if (pairS != null) {
                iIntValue = ((Integer) pairS.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((vua) pairS.second).b);
                dVar.a[i5] = (vua) pairS.second;
            }
            qw7Var.O(iE);
        }
        if (iIntValue == 1633889587) {
            str2 = "audio/ac3";
        } else if (iIntValue == 1700998451) {
            str2 = "audio/eac3";
        } else if (iIntValue == 1633889588) {
            str2 = MimeTypes.AUDIO_AC4;
        } else if (iIntValue == 1685353315) {
            str2 = MimeTypes.AUDIO_DTS;
        } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
            str2 = MimeTypes.AUDIO_DTS_HD;
        } else if (iIntValue == 1685353317) {
            str2 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (iIntValue == 1685353336) {
            str2 = MimeTypes.AUDIO_DTS_X;
        } else if (iIntValue == 1935764850) {
            str2 = "audio/3gpp";
        } else {
            if (iIntValue != 1935767394) {
                str3 = "audio/raw";
                if (iIntValue == 1819304813 || iIntValue == 1936684916) {
                    i6 = 2;
                } else if (iIntValue == 1953984371) {
                    i6 = 268435456;
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = "audio/mpeg";
                } else if (iIntValue == 1835557169) {
                    str2 = MimeTypes.AUDIO_MPEGH_MHA1;
                } else if (iIntValue == 1835560241) {
                    str2 = MimeTypes.AUDIO_MPEGH_MHM1;
                } else if (iIntValue == 1634492771) {
                    str2 = MimeTypes.AUDIO_ALAC;
                } else if (iIntValue == 1634492791) {
                    str2 = "audio/g711-alaw";
                } else if (iIntValue == 1970037111) {
                    str2 = "audio/g711-mlaw";
                } else if (iIntValue == 1332770163) {
                    str2 = "audio/opus";
                } else if (iIntValue == 1716281667) {
                    str2 = "audio/flac";
                } else if (iIntValue == 1835823201) {
                    str2 = MimeTypes.AUDIO_TRUEHD;
                } else {
                    i6 = -1;
                    str3 = null;
                }
                str4 = str3;
                bVarI = null;
                str5 = null;
                listOf = null;
                while (iE - i7 < i8) {
                    qw7Var.O(iE);
                    iN2 = qw7Var.n();
                    if (iN2 > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    rk3.a(z2, "childAtomSize must be positive");
                    iN3 = qw7Var.n();
                    if (iN3 == 1835557187) {
                        int i9 = iN2 - 13;
                        byte[] bArr2 = new byte[i9];
                        qw7Var.O(iE + 13);
                        qw7Var.j(bArr2, 0, i9);
                        listOf = ImmutableList.of(bArr2);
                    } else {
                        if (iN3 != 1702061171 || (z && iN3 == 2002876005)) {
                            c2 = 24931;
                            if (iN3 == 1702061171) {
                                iC = iE;
                            } else {
                                iC = c(qw7Var, Mp4Box.TYPE_esds, iE, iN2);
                            }
                            if (iC != -1) {
                                bVarI = i(qw7Var, iC);
                                str4 = bVarI.a;
                                bArr = bVarI.b;
                                if (bArr != null) {
                                    if ("audio/mp4a-latm".equals(str4)) {
                                        i2.b bVarE = i2.e(bArr);
                                        iD = bVarE.a;
                                        iG = bVarE.b;
                                        str5 = bVarE.c;
                                    }
                                    listOf = ImmutableList.of(bArr);
                                }
                            }
                        } else {
                            if (iN3 == 1684103987) {
                                qw7Var.O(iE + 8);
                                dVar.b = n4.c(qw7Var, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (iN3 == 1684366131) {
                                qw7Var.O(iE + 8);
                                dVar.b = n4.g(qw7Var, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (iN3 == 1684103988) {
                                qw7Var.O(iE + 8);
                                dVar.b = s4.b(qw7Var, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (iN3 == 1684892784) {
                                if (iN <= 0) {
                                    throw ParserException.createForMalformedContainer("Invalid sample rate for Dolby TrueHD MLP stream: " + iN, null);
                                }
                                iD = iN;
                                iG = 2;
                                c2 = 24931;
                            } else if (iN3 == 1684305011) {
                                dVar.b = new k.b().R(i4).e0(str4).H(iG).f0(iD).M(drmInitDataCopyWithSchemeType).V(str).E();
                            } else if (iN3 == 1682927731) {
                                int i10 = iN2 - 8;
                                byte[] bArr3 = a;
                                byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i10);
                                qw7Var.O(iE + 8);
                                qw7Var.j(bArrCopyOf, bArr3.length, i10);
                                listOf = ts7.a(bArrCopyOf);
                            } else if (iN3 == 1684425825) {
                                byte[] bArr4 = new byte[iN2 - 8];
                                bArr4[0] = 102;
                                bArr4[1] = 76;
                                bArr4[2] = 97;
                                bArr4[3] = 67;
                                qw7Var.O(iE + 12);
                                qw7Var.j(bArr4, 4, iN2 - 12);
                                listOf = ImmutableList.of(bArr4);
                                c2 = 24931;
                            } else if (iN3 == 1634492771) {
                                int i11 = iN2 - 12;
                                byte[] bArr5 = new byte[i11];
                                qw7Var.O(iE + 12);
                                qw7Var.j(bArr5, 0, i11);
                                Pair pairE = b51.e(bArr5);
                                int iIntValue2 = ((Integer) pairE.first).intValue();
                                int iIntValue3 = ((Integer) pairE.second).intValue();
                                listOf = ImmutableList.of(bArr5);
                                c2 = 24931;
                                iG = iIntValue3;
                                iD = iIntValue2;
                            } else {
                                c2 = 24931;
                            }
                            c2 = 24931;
                        }
                        iE += iN2;
                        i7 = i2;
                        i8 = i3;
                    }
                    c2 = 24931;
                    iE += iN2;
                    i7 = i2;
                    i8 = i3;
                }
                if (dVar.b == null || str4 == null) {
                }
                k.b bVarV = new k.b().R(i4).e0(str4).I(str5).H(iG).f0(iD).Y(i6).T(listOf).M(drmInitDataCopyWithSchemeType).V(str);
                if (bVarI != null) {
                    bVarV.G(Ints.n(bVarI.c)).Z(Ints.n(bVarI.d));
                }
                dVar.b = bVarV.E();
                return;
            }
            str2 = "audio/amr-wb";
        }
        str3 = str2;
        i6 = -1;
        str4 = str3;
        bVarI = null;
        str5 = null;
        listOf = null;
        while (iE - i7 < i8) {
            qw7Var.O(iE);
            iN2 = qw7Var.n();
            if (iN2 > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            rk3.a(z2, "childAtomSize must be positive");
            iN3 = qw7Var.n();
            if (iN3 == 1835557187) {
                int i12 = iN2 - 13;
                byte[] bArr6 = new byte[i12];
                qw7Var.O(iE + 13);
                qw7Var.j(bArr6, 0, i12);
                listOf = ImmutableList.of(bArr6);
            } else {
                if (iN3 != 1702061171) {
                    c2 = 24931;
                    if (iN3 == 1702061171) {
                        iC = iE;
                    } else {
                        iC = c(qw7Var, Mp4Box.TYPE_esds, iE, iN2);
                    }
                    if (iC != -1) {
                        bVarI = i(qw7Var, iC);
                        str4 = bVarI.a;
                        bArr = bVarI.b;
                        if (bArr != null) {
                            if ("audio/mp4a-latm".equals(str4)) {
                                i2.b bVarE2 = i2.e(bArr);
                                iD = bVarE2.a;
                                iG = bVarE2.b;
                                str5 = bVarE2.c;
                            }
                            listOf = ImmutableList.of(bArr);
                        }
                    }
                } else {
                    c2 = 24931;
                    if (iN3 == 1702061171) {
                        iC = iE;
                    } else {
                        iC = c(qw7Var, Mp4Box.TYPE_esds, iE, iN2);
                    }
                    if (iC != -1) {
                        bVarI = i(qw7Var, iC);
                        str4 = bVarI.a;
                        bArr = bVarI.b;
                        if (bArr != null) {
                            if ("audio/mp4a-latm".equals(str4)) {
                                i2.b bVarE3 = i2.e(bArr);
                                iD = bVarE3.a;
                                iG = bVarE3.b;
                                str5 = bVarE3.c;
                            }
                            listOf = ImmutableList.of(bArr);
                        }
                    }
                }
                iE += iN2;
                i7 = i2;
                i8 = i3;
            }
            c2 = 24931;
            iE += iN2;
            i7 = i2;
            i8 = i3;
        }
        if (dVar.b == null) {
        }
    }

    public static Pair g(qw7 qw7Var, int i, int i2) throws ParserException {
        int i3 = i + 8;
        int i4 = -1;
        int i5 = 0;
        String strZ = null;
        Integer numValueOf = null;
        while (i3 - i < i2) {
            qw7Var.O(i3);
            int iN = qw7Var.n();
            int iN2 = qw7Var.n();
            if (iN2 == 1718775137) {
                numValueOf = Integer.valueOf(qw7Var.n());
            } else if (iN2 == 1935894637) {
                qw7Var.P(4);
                strZ = qw7Var.z(4);
            } else if (iN2 == 1935894633) {
                i4 = i3;
                i5 = iN;
            }
            i3 += iN;
        }
        if (!C.CENC_TYPE_cenc.equals(strZ) && !C.CENC_TYPE_cbc1.equals(strZ) && !C.CENC_TYPE_cens.equals(strZ) && !C.CENC_TYPE_cbcs.equals(strZ)) {
            return null;
        }
        rk3.a(numValueOf != null, "frma atom is mandatory");
        rk3.a(i4 != -1, "schi atom is mandatory");
        vua vuaVarT = t(qw7Var, i4, i5, strZ);
        rk3.a(vuaVarT != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (vua) blb.j(vuaVarT));
    }

    public static Pair h(xk.a aVar) {
        xk.b bVarG = aVar.g(Mp4Box.TYPE_elst);
        if (bVarG == null) {
            return null;
        }
        qw7 qw7Var = bVarG.b;
        qw7Var.O(8);
        int iC = xk.c(qw7Var.n());
        int iG = qw7Var.G();
        long[] jArr = new long[iG];
        long[] jArr2 = new long[iG];
        for (int i = 0; i < iG; i++) {
            jArr[i] = iC == 1 ? qw7Var.H() : qw7Var.E();
            jArr2[i] = iC == 1 ? qw7Var.v() : qw7Var.n();
            if (qw7Var.y() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            qw7Var.P(2);
        }
        return Pair.create(jArr, jArr2);
    }

    public static b i(qw7 qw7Var, int i) {
        qw7Var.O(i + 12);
        qw7Var.P(1);
        j(qw7Var);
        qw7Var.P(2);
        int iC = qw7Var.C();
        if ((iC & 128) != 0) {
            qw7Var.P(2);
        }
        if ((iC & 64) != 0) {
            qw7Var.P(qw7Var.C());
        }
        if ((iC & 32) != 0) {
            qw7Var.P(2);
        }
        qw7Var.P(1);
        j(qw7Var);
        String strC = qp6.c(qw7Var.C());
        if ("audio/mpeg".equals(strC) || MimeTypes.AUDIO_DTS.equals(strC) || MimeTypes.AUDIO_DTS_HD.equals(strC)) {
            return new b(strC, null, -1L, -1L);
        }
        qw7Var.P(4);
        long jE = qw7Var.E();
        long jE2 = qw7Var.E();
        qw7Var.P(1);
        int iJ = j(qw7Var);
        byte[] bArr = new byte[iJ];
        qw7Var.j(bArr, 0, iJ);
        return new b(strC, bArr, jE2 > 0 ? jE2 : -1L, jE > 0 ? jE : -1L);
    }

    public static int j(qw7 qw7Var) {
        int iC = qw7Var.C();
        int i = iC & 127;
        while ((iC & 128) == 128) {
            iC = qw7Var.C();
            i = (i << 7) | (iC & 127);
        }
        return i;
    }

    public static int k(qw7 qw7Var) {
        qw7Var.O(16);
        return qw7Var.n();
    }

    public static Metadata l(qw7 qw7Var, int i) {
        qw7Var.P(8);
        ArrayList arrayList = new ArrayList();
        while (qw7Var.e() < i) {
            Metadata.Entry entryC = go6.c(qw7Var);
            if (entryC != null) {
                arrayList.add(entryC);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static Pair m(qw7 qw7Var) {
        qw7Var.O(8);
        int iC = xk.c(qw7Var.n());
        qw7Var.P(iC == 0 ? 8 : 16);
        long jE = qw7Var.E();
        qw7Var.P(iC == 0 ? 4 : 8);
        int I = qw7Var.I();
        return Pair.create(Long.valueOf(jE), "" + ((char) (((I >> 10) & 31) + 96)) + ((char) (((I >> 5) & 31) + 96)) + ((char) ((I & 31) + 96)));
    }

    public static Metadata n(xk.a aVar) {
        xk.b bVarG = aVar.g(Mp4Box.TYPE_hdlr);
        xk.b bVarG2 = aVar.g(Mp4Box.TYPE_keys);
        xk.b bVarG3 = aVar.g(Mp4Box.TYPE_ilst);
        if (bVarG == null || bVarG2 == null || bVarG3 == null || k(bVarG.b) != 1835299937) {
            return null;
        }
        qw7 qw7Var = bVarG2.b;
        qw7Var.O(12);
        int iN = qw7Var.n();
        String[] strArr = new String[iN];
        for (int i = 0; i < iN; i++) {
            int iN2 = qw7Var.n();
            qw7Var.P(4);
            strArr[i] = qw7Var.z(iN2 - 8);
        }
        qw7 qw7Var2 = bVarG3.b;
        qw7Var2.O(8);
        ArrayList arrayList = new ArrayList();
        while (qw7Var2.a() > 8) {
            int iE = qw7Var2.e();
            int iN3 = qw7Var2.n();
            int iN4 = qw7Var2.n() - 1;
            if (iN4 < 0 || iN4 >= iN) {
                op5.i("AtomParsers", "Skipped metadata with unknown key index: " + iN4);
            } else {
                MdtaMetadataEntry mdtaMetadataEntryF = go6.f(qw7Var2, iE + iN3, strArr[iN4]);
                if (mdtaMetadataEntryF != null) {
                    arrayList.add(mdtaMetadataEntryF);
                }
            }
            qw7Var2.O(iE + iN3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static void o(qw7 qw7Var, int i, int i2, int i3, d dVar) {
        qw7Var.O(i2 + 16);
        if (i == 1835365492) {
            qw7Var.w();
            String strW = qw7Var.w();
            if (strW != null) {
                dVar.b = new k.b().R(i3).e0(strW).E();
            }
        }
    }

    public static long p(qw7 qw7Var) {
        qw7Var.O(8);
        qw7Var.P(xk.c(qw7Var.n()) != 0 ? 16 : 8);
        return qw7Var.E();
    }

    public static float q(qw7 qw7Var, int i) {
        qw7Var.O(i + 8);
        return qw7Var.G() / qw7Var.G();
    }

    public static byte[] r(qw7 qw7Var, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            qw7Var.O(i3);
            int iN = qw7Var.n();
            if (qw7Var.n() == 1886547818) {
                return Arrays.copyOfRange(qw7Var.d(), i3, iN + i3);
            }
            i3 += iN;
        }
        return null;
    }

    public static Pair s(qw7 qw7Var, int i, int i2) throws ParserException {
        Pair pairG;
        int iE = qw7Var.e();
        while (iE - i < i2) {
            qw7Var.O(iE);
            int iN = qw7Var.n();
            rk3.a(iN > 0, "childAtomSize must be positive");
            if (qw7Var.n() == 1936289382 && (pairG = g(qw7Var, iE, iN)) != null) {
                return pairG;
            }
            iE += iN;
        }
        return null;
    }

    public static vua t(qw7 qw7Var, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            qw7Var.O(i5);
            int iN = qw7Var.n();
            if (qw7Var.n() == 1952804451) {
                int iC = xk.c(qw7Var.n());
                qw7Var.P(1);
                if (iC == 0) {
                    qw7Var.P(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int iC2 = qw7Var.C();
                    i3 = iC2 & 15;
                    i4 = (iC2 & 240) >> 4;
                }
                boolean z = qw7Var.C() == 1;
                int iC3 = qw7Var.C();
                byte[] bArr2 = new byte[16];
                qw7Var.j(bArr2, 0, 16);
                if (z && iC3 == 0) {
                    int iC4 = qw7Var.C();
                    bArr = new byte[iC4];
                    qw7Var.j(bArr, 0, iC4);
                }
                return new vua(z, str, iC3, bArr2, i4, i3, bArr);
            }
            i5 += iN;
        }
    }

    public static Metadata u(qw7 qw7Var, int i) {
        qw7Var.P(12);
        while (qw7Var.e() < i) {
            int iE = qw7Var.e();
            int iN = qw7Var.n();
            if (qw7Var.n() == 1935766900) {
                if (iN < 14) {
                    return null;
                }
                qw7Var.P(5);
                int iC = qw7Var.C();
                if (iC != 12 && iC != 13) {
                    return null;
                }
                float f2 = iC == 12 ? 240.0f : 120.0f;
                qw7Var.P(1);
                return new Metadata(new SmtaMetadataEntry(f2, qw7Var.C()));
            }
            qw7Var.O(iE + iN);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:151:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:155:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:157:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:165:0x0412  */
    /* JADX WARN: Code duplicated, block: B:166:0x0414  */
    /* JADX WARN: Code duplicated, block: B:168:0x0418  */
    /* JADX WARN: Code duplicated, block: B:173:0x0434  */
    /* JADX WARN: Code duplicated, block: B:176:0x0439  */
    /* JADX WARN: Code duplicated, block: B:177:0x043c  */
    /* JADX WARN: Code duplicated, block: B:179:0x043f  */
    /* JADX WARN: Code duplicated, block: B:180:0x0442  */
    /* JADX WARN: Code duplicated, block: B:182:0x0445  */
    /* JADX WARN: Code duplicated, block: B:183:0x0447  */
    /* JADX WARN: Code duplicated, block: B:185:0x044b  */
    /* JADX WARN: Code duplicated, block: B:186:0x044e  */
    /* JADX WARN: Code duplicated, block: B:190:0x045d  */
    /* JADX WARN: Code duplicated, block: B:192:0x046b  */
    /* JADX WARN: Code duplicated, block: B:193:0x047b  */
    /* JADX WARN: Code duplicated, block: B:196:0x0483  */
    /* JADX WARN: Code duplicated, block: B:198:0x04b6  */
    /* JADX WARN: Code duplicated, block: B:200:0x04bc  */
    /* JADX WARN: Code duplicated, block: B:201:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:211:0x0429 A[EDGE_INSN: B:211:0x0429->B:170:0x0429 BREAK  A[LOOP:2: B:153:0x03c8->B:169:0x0422], SYNTHETIC] */
    public static gva v(tua tuaVar, xk.a aVar, ed4 ed4Var) throws ParserException {
        c fVar;
        boolean z;
        int iG;
        int iG2;
        int iG3;
        int i;
        int i2;
        int i3;
        boolean z2;
        int i4;
        tua tuaVar2;
        int i5;
        long[] jArr;
        int[] iArr;
        int i6;
        long j;
        long[] jArr2;
        int[] iArr2;
        int iN;
        int i7;
        int i8;
        int i9;
        long[] jArr3;
        boolean z3;
        int[] iArr3;
        int[] iArr4;
        long[] jArr4;
        int i10;
        boolean z4;
        int i11;
        int i12;
        long[] jArr5;
        long[] jArr6;
        int[] iArr5;
        int i13;
        boolean z5;
        long[] jArr7;
        int[] iArr6;
        int i14;
        int[] iArr7;
        long[] jArr8;
        int i15;
        int[] iArr8;
        long j2;
        int i16;
        long j3;
        int i17;
        int i18;
        int[] iArr9;
        int i19;
        int i20;
        int i21;
        long j4;
        boolean z6;
        int i22;
        int i23;
        int i24;
        boolean z7;
        xk.b bVarG = aVar.g(Mp4Box.TYPE_stsz);
        if (bVarG != null) {
            fVar = new e(bVarG, tuaVar.f);
        } else {
            xk.b bVarG2 = aVar.g(Mp4Box.TYPE_stz2);
            if (bVarG2 == null) {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
            fVar = new f(bVarG2);
        }
        int sampleCount = fVar.getSampleCount();
        if (sampleCount == 0) {
            return new gva(tuaVar, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        xk.b bVarG3 = aVar.g(Mp4Box.TYPE_stco);
        if (bVarG3 == null) {
            bVarG3 = (xk.b) zi.e(aVar.g(Mp4Box.TYPE_co64));
            z = true;
        } else {
            z = false;
        }
        qw7 qw7Var = bVarG3.b;
        qw7 qw7Var2 = ((xk.b) zi.e(aVar.g(Mp4Box.TYPE_stsc))).b;
        qw7 qw7Var3 = ((xk.b) zi.e(aVar.g(Mp4Box.TYPE_stts))).b;
        xk.b bVarG4 = aVar.g(Mp4Box.TYPE_stss);
        qw7 qw7Var4 = bVarG4 != null ? bVarG4.b : null;
        xk.b bVarG5 = aVar.g(Mp4Box.TYPE_ctts);
        qw7 qw7Var5 = bVarG5 != null ? bVarG5.b : null;
        a aVar2 = new a(qw7Var2, qw7Var, z);
        qw7Var3.O(12);
        int iG4 = qw7Var3.G() - 1;
        int iG5 = qw7Var3.G();
        int iG6 = qw7Var3.G();
        if (qw7Var5 != null) {
            qw7Var5.O(12);
            iG = qw7Var5.G();
        } else {
            iG = 0;
        }
        if (qw7Var4 != null) {
            qw7Var4.O(12);
            iG3 = qw7Var4.G();
            if (iG3 > 0) {
                iG2 = qw7Var4.G() - 1;
            } else {
                iG2 = -1;
                qw7Var4 = null;
            }
        } else {
            iG2 = -1;
            iG3 = 0;
        }
        int fixedSampleSize = fVar.getFixedSampleSize();
        String str = tuaVar.f.m;
        if (fixedSampleSize != -1 && ("audio/raw".equals(str) || "audio/g711-mlaw".equals(str) || "audio/g711-alaw".equals(str)) && iG4 == 0 && iG == 0 && iG3 == 0) {
            int i25 = aVar2.a;
            long[] jArr9 = new long[i25];
            int[] iArr10 = new int[i25];
            while (aVar2.a()) {
                int i26 = aVar2.b;
                jArr9[i26] = aVar2.d;
                iArr10[i26] = aVar2.c;
            }
            jx3.b bVarA = jx3.a(fixedSampleSize, jArr9, iArr10, iG6);
            long[] jArr10 = bVarA.a;
            int[] iArr11 = bVarA.b;
            int i27 = bVarA.c;
            long[] jArr11 = bVarA.d;
            int[] iArr12 = bVarA.e;
            long j5 = bVarA.f;
            tuaVar2 = tuaVar;
            i5 = sampleCount;
            jArr = jArr10;
            iArr = iArr11;
            i6 = i27;
            iArr2 = iArr12;
            j = j5;
            jArr2 = jArr11;
        } else {
            long[] jArrCopyOf = new long[sampleCount];
            int[] iArrCopyOf = new int[sampleCount];
            long[] jArrCopyOf2 = new long[sampleCount];
            int[] iArrCopyOf2 = new int[sampleCount];
            int iG7 = iG2;
            int i28 = 0;
            int i29 = 0;
            int iN2 = 0;
            int i30 = 0;
            int iG8 = 0;
            long j6 = 0;
            long j7 = 0;
            int i31 = iG;
            int i32 = iG6;
            int i33 = iG5;
            int i34 = iG4;
            int i35 = iG3;
            while (true) {
                i = i34;
                if (i28 >= sampleCount) {
                    i2 = i33;
                    i3 = i30;
                    break;
                }
                long j8 = j7;
                int i36 = i30;
                boolean zA = true;
                while (i36 == 0) {
                    zA = aVar2.a();
                    if (!zA) {
                        break;
                    }
                    int i37 = i33;
                    long j9 = aVar2.d;
                    i36 = aVar2.c;
                    j8 = j9;
                    i33 = i37;
                    i32 = i32;
                    sampleCount = sampleCount;
                }
                int i38 = sampleCount;
                i2 = i33;
                int i39 = i32;
                if (!zA) {
                    op5.i("AtomParsers", "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i28);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i28);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i28);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i28);
                    sampleCount = i28;
                    i3 = i36;
                    break;
                }
                if (qw7Var5 != null) {
                    while (iG8 == 0 && i31 > 0) {
                        iG8 = qw7Var5.G();
                        iN2 = qw7Var5.n();
                        i31--;
                    }
                    iG8--;
                }
                int i40 = iN2;
                jArrCopyOf[i28] = j8;
                int nextSampleSize = fVar.readNextSampleSize();
                iArrCopyOf[i28] = nextSampleSize;
                if (nextSampleSize > i29) {
                    i29 = nextSampleSize;
                }
                jArrCopyOf2[i28] = j6 + ((long) i40);
                iArrCopyOf2[i28] = qw7Var4 == null ? 1 : 0;
                if (i28 == iG7) {
                    iArrCopyOf2[i28] = 1;
                    i35--;
                    if (i35 > 0) {
                        iG7 = ((qw7) zi.e(qw7Var4)).G() - 1;
                    }
                }
                int i41 = iG7;
                j6 += (long) i39;
                int iG9 = i2 - 1;
                if (iG9 != 0 || i <= 0) {
                    iN = i39;
                    i7 = i;
                } else {
                    iG9 = qw7Var3.G();
                    iN = qw7Var3.n();
                    i7 = i - 1;
                }
                int i42 = iG9;
                long j10 = j8 + ((long) iArrCopyOf[i28]);
                i30 = i36 - 1;
                i28++;
                j7 = j10;
                iG7 = i41;
                i32 = iN;
                sampleCount = i38;
                iN2 = i40;
                i34 = i7;
                i33 = i42;
            }
            long j11 = j6 + ((long) iN2);
            if (qw7Var5 == null) {
                z2 = true;
                break;
            }
            while (true) {
                if (i31 <= 0) {
                    z2 = true;
                    break;
                }
                if (qw7Var5.G() != 0) {
                    z2 = false;
                    break;
                }
                qw7Var5.n();
                i31--;
            }
            if (i35 == 0 && i2 == 0 && i3 == 0 && i == 0) {
                i4 = iG8;
                if (i4 == 0 && z2) {
                    tuaVar2 = tuaVar;
                }
                i5 = sampleCount;
                jArr = jArrCopyOf;
                iArr = iArrCopyOf;
                i6 = i29;
                j = j11;
                jArr2 = jArrCopyOf2;
                iArr2 = iArrCopyOf2;
            } else {
                i4 = iG8;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Inconsistent stbl box for track ");
            tuaVar2 = tuaVar;
            sb.append(tuaVar2.a);
            sb.append(": remainingSynchronizationSamples ");
            sb.append(i35);
            sb.append(", remainingSamplesAtTimestampDelta ");
            sb.append(i2);
            sb.append(", remainingSamplesInChunk ");
            sb.append(i3);
            sb.append(", remainingTimestampDeltaChanges ");
            sb.append(i);
            sb.append(", remainingSamplesAtTimestampOffset ");
            sb.append(i4);
            sb.append(!z2 ? ", ctts invalid" : "");
            op5.i("AtomParsers", sb.toString());
            i5 = sampleCount;
            jArr = jArrCopyOf;
            iArr = iArrCopyOf;
            i6 = i29;
            j = j11;
            jArr2 = jArrCopyOf2;
            iArr2 = iArrCopyOf2;
        }
        long jB0 = blb.B0(j, 1000000L, tuaVar2.c);
        long[] jArr12 = tuaVar2.h;
        if (jArr12 == null) {
            blb.C0(jArr2, 1000000L, tuaVar2.c);
            return new gva(tuaVar, jArr, iArr, i6, jArr2, iArr2, jB0);
        }
        if (jArr12.length == 1 && tuaVar2.b == 1 && jArr2.length >= 2) {
            long j12 = ((long[]) zi.e(tuaVar2.i))[0];
            long jB1 = j12 + blb.B0(tuaVar2.h[0], tuaVar2.c, tuaVar2.d);
            i8 = i5;
            if (b(jArr2, j, j12, jB1)) {
                long jB2 = blb.B0(j12 - jArr2[0], tuaVar2.f.A, tuaVar2.c);
                i9 = i6;
                long jB3 = blb.B0(j - jB1, tuaVar2.f.A, tuaVar2.c);
                if ((jB2 != 0 || jB3 != 0) && jB2 <= 2147483647L && jB3 <= 2147483647L) {
                    ed4Var.a = (int) jB2;
                    ed4Var.b = (int) jB3;
                    blb.C0(jArr2, 1000000L, tuaVar2.c);
                    return new gva(tuaVar, jArr, iArr, i9, jArr2, iArr2, blb.B0(tuaVar2.h[0], 1000000L, tuaVar2.d));
                }
            }
            jArr3 = tuaVar2.h;
            if (jArr3.length != 1 && jArr3[0] == 0) {
                long j13 = ((long[]) zi.e(tuaVar2.i))[0];
                for (int i43 = 0; i43 < jArr2.length; i43++) {
                    jArr2[i43] = blb.B0(jArr2[i43] - j13, 1000000L, tuaVar2.c);
                }
                return new gva(tuaVar, jArr, iArr, i9, jArr2, iArr2, blb.B0(j - j13, 1000000L, tuaVar2.c));
            }
            if (tuaVar2.b == 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            iArr3 = new int[jArr3.length];
            iArr4 = new int[jArr3.length];
            jArr4 = (long[]) zi.e(tuaVar2.i);
            i10 = 0;
            z4 = false;
            i11 = 0;
            i12 = 0;
            while (true) {
                jArr5 = tuaVar2.h;
                if (i10 < jArr5.length) {
                    break;
                }
                long[] jArr13 = jArr;
                int[] iArr13 = iArr;
                j4 = jArr4[i10];
                if (j4 != -1) {
                    i23 = i12;
                    boolean z8 = z4;
                    int i44 = i11;
                    long jB4 = blb.B0(jArr5[i10], tuaVar2.c, tuaVar2.d);
                    iArr3[i10] = blb.i(jArr2, j4, true, true);
                    iArr4[i10] = blb.e(jArr2, j4 + jB4, z3, false);
                    while (true) {
                        i24 = iArr3[i10];
                        i22 = iArr4[i10];
                        if (i24 >= i22 || (iArr2[i24] & 1) != 0) {
                            break;
                        }
                        iArr3[i10] = i24 + 1;
                    }
                    i11 = i44 + (i22 - i24);
                    if (i23 != i24) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z6 = z8 | z7;
                } else {
                    z6 = z4;
                    i22 = i12;
                }
                i10++;
                z4 = z6;
                i12 = i22;
                jArr = jArr13;
                iArr = iArr13;
            }
            jArr6 = jArr;
            iArr5 = iArr;
            boolean z9 = z4;
            i13 = 0;
            z5 = z9 | (i11 != i8);
            if (z5) {
                jArr7 = new long[i11];
            } else {
                jArr7 = jArr6;
            }
            if (z5) {
                iArr6 = new int[i11];
            } else {
                iArr6 = iArr5;
            }
            if (z5) {
                i14 = 0;
            } else {
                i14 = i9;
            }
            if (z5) {
                iArr7 = new int[i11];
            } else {
                iArr7 = iArr2;
            }
            jArr8 = new long[i11];
            i15 = i14;
            iArr8 = iArr5;
            j2 = 0;
            i16 = 0;
            while (i13 < tuaVar2.h.length) {
                j3 = tuaVar2.i[i13];
                i17 = iArr3[i13];
                int[] iArr14 = iArr3;
                i18 = iArr4[i13];
                int[] iArr15 = iArr4;
                if (z5) {
                    int i45 = i18 - i17;
                    System.arraycopy(jArr6, i17, jArr7, i16, i45);
                    iArr9 = iArr8;
                    System.arraycopy(iArr9, i17, iArr6, i16, i45);
                    System.arraycopy(iArr2, i17, iArr7, i16, i45);
                } else {
                    iArr9 = iArr8;
                }
                i19 = i15;
                while (i17 < i18) {
                    i20 = i19;
                    int i46 = i18;
                    long[] jArr14 = jArr2;
                    int[] iArr16 = iArr2;
                    int[] iArr17 = iArr7;
                    long j14 = j2;
                    jArr8[i16] = blb.B0(j2, 1000000L, tuaVar2.d) + blb.B0(Math.max(0L, jArr2[i17] - j3), 1000000L, tuaVar2.c);
                    if (z5) {
                        i21 = i20;
                        if (iArr6[i16] > i21) {
                            i19 = iArr9[i17];
                        }
                        i16++;
                        i17++;
                        i18 = i46;
                        j2 = j14;
                        jArr2 = jArr14;
                        iArr2 = iArr16;
                        iArr7 = iArr17;
                    } else {
                        i21 = i20;
                    }
                    i19 = i21;
                    i16++;
                    i17++;
                    i18 = i46;
                    j2 = j14;
                    jArr2 = jArr14;
                    iArr2 = iArr16;
                    iArr7 = iArr17;
                }
                long[] jArr15 = jArr2;
                long j15 = j2 + tuaVar2.h[i13];
                i13++;
                i15 = i19;
                iArr8 = iArr9;
                j2 = j15;
                iArr3 = iArr14;
                jArr2 = jArr15;
                iArr2 = iArr2;
                iArr4 = iArr15;
                jArr6 = jArr6;
                iArr7 = iArr7;
            }
            return new gva(tuaVar, jArr7, iArr6, i15, jArr8, iArr7, blb.B0(j2, 1000000L, tuaVar2.d));
        }
        i8 = i5;
        i9 = i6;
        jArr3 = tuaVar2.h;
        if (jArr3.length != 1) {
        }
        if (tuaVar2.b == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        iArr3 = new int[jArr3.length];
        iArr4 = new int[jArr3.length];
        jArr4 = (long[]) zi.e(tuaVar2.i);
        i10 = 0;
        z4 = false;
        i11 = 0;
        i12 = 0;
        while (true) {
            jArr5 = tuaVar2.h;
            if (i10 < jArr5.length) {
                break;
                break;
            }
            long[] jArr16 = jArr;
            int[] iArr18 = iArr;
            j4 = jArr4[i10];
            if (j4 != -1) {
                i23 = i12;
                boolean z10 = z4;
                int i47 = i11;
                long jB5 = blb.B0(jArr5[i10], tuaVar2.c, tuaVar2.d);
                iArr3[i10] = blb.i(jArr2, j4, true, true);
                iArr4[i10] = blb.e(jArr2, j4 + jB5, z3, false);
                while (true) {
                    i24 = iArr3[i10];
                    i22 = iArr4[i10];
                    if (i24 >= i22) {
                        break;
                    }
                    break;
                    break;
                    iArr3[i10] = i24 + 1;
                }
                i11 = i47 + (i22 - i24);
                if (i23 != i24) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z6 = z10 | z7;
            } else {
                z6 = z4;
                i22 = i12;
            }
            i10++;
            z4 = z6;
            i12 = i22;
            jArr = jArr16;
            iArr = iArr18;
        }
        jArr6 = jArr;
        iArr5 = iArr;
        boolean z11 = z4;
        i13 = 0;
        z5 = z11 | (i11 != i8);
        if (z5) {
            jArr7 = new long[i11];
        } else {
            jArr7 = jArr6;
        }
        if (z5) {
            iArr6 = new int[i11];
        } else {
            iArr6 = iArr5;
        }
        if (z5) {
            i14 = 0;
        } else {
            i14 = i9;
        }
        if (z5) {
            iArr7 = new int[i11];
        } else {
            iArr7 = iArr2;
        }
        jArr8 = new long[i11];
        i15 = i14;
        iArr8 = iArr5;
        j2 = 0;
        i16 = 0;
        while (i13 < tuaVar2.h.length) {
            j3 = tuaVar2.i[i13];
            i17 = iArr3[i13];
            int[] iArr19 = iArr3;
            i18 = iArr4[i13];
            int[] iArr110 = iArr4;
            if (z5) {
                int i48 = i18 - i17;
                System.arraycopy(jArr6, i17, jArr7, i16, i48);
                iArr9 = iArr8;
                System.arraycopy(iArr9, i17, iArr6, i16, i48);
                System.arraycopy(iArr2, i17, iArr7, i16, i48);
            } else {
                iArr9 = iArr8;
            }
            i19 = i15;
            while (i17 < i18) {
                i20 = i19;
                int i49 = i18;
                long[] jArr17 = jArr2;
                int[] iArr111 = iArr2;
                int[] iArr112 = iArr7;
                long j16 = j2;
                jArr8[i16] = blb.B0(j2, 1000000L, tuaVar2.d) + blb.B0(Math.max(0L, jArr2[i17] - j3), 1000000L, tuaVar2.c);
                if (z5) {
                    i21 = i20;
                    if (iArr6[i16] > i21) {
                        i19 = iArr9[i17];
                    }
                    i16++;
                    i17++;
                    i18 = i49;
                    j2 = j16;
                    jArr2 = jArr17;
                    iArr2 = iArr111;
                    iArr7 = iArr112;
                } else {
                    i21 = i20;
                }
                i19 = i21;
                i16++;
                i17++;
                i18 = i49;
                j2 = j16;
                jArr2 = jArr17;
                iArr2 = iArr111;
                iArr7 = iArr112;
            }
            long[] jArr18 = jArr2;
            long j17 = j2 + tuaVar2.h[i13];
            i13++;
            i15 = i19;
            iArr8 = iArr9;
            j2 = j17;
            iArr3 = iArr19;
            jArr2 = jArr18;
            iArr2 = iArr2;
            iArr4 = iArr110;
            jArr6 = jArr6;
            iArr7 = iArr7;
        }
        return new gva(tuaVar, jArr7, iArr6, i15, jArr8, iArr7, blb.B0(j2, 1000000L, tuaVar2.d));
    }

    public static d w(qw7 qw7Var, int i, int i2, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        int i3;
        qw7Var.O(12);
        int iN = qw7Var.n();
        d dVar = new d(iN);
        for (int i4 = 0; i4 < iN; i4++) {
            int iE = qw7Var.e();
            int iN2 = qw7Var.n();
            rk3.a(iN2 > 0, "childAtomSize must be positive");
            int iN3 = qw7Var.n();
            if (iN3 == 1635148593 || iN3 == 1635148595 || iN3 == 1701733238 || iN3 == 1831958048 || iN3 == 1836070006 || iN3 == 1752589105 || iN3 == 1751479857 || iN3 == 1932670515 || iN3 == 1211250227 || iN3 == 1987063864 || iN3 == 1987063865 || iN3 == 1635135537 || iN3 == 1685479798 || iN3 == 1685479729 || iN3 == 1685481573 || iN3 == 1685481521) {
                i3 = iE;
                D(qw7Var, iN3, i3, iN2, i, i2, drmInitData, dVar, i4);
            } else if (iN3 == 1836069985 || iN3 == 1701733217 || iN3 == 1633889587 || iN3 == 1700998451 || iN3 == 1633889588 || iN3 == 1835823201 || iN3 == 1685353315 || iN3 == 1685353317 || iN3 == 1685353320 || iN3 == 1685353324 || iN3 == 1685353336 || iN3 == 1935764850 || iN3 == 1935767394 || iN3 == 1819304813 || iN3 == 1936684916 || iN3 == 1953984371 || iN3 == 778924082 || iN3 == 778924083 || iN3 == 1835557169 || iN3 == 1835560241 || iN3 == 1634492771 || iN3 == 1634492791 || iN3 == 1970037111 || iN3 == 1332770163 || iN3 == 1716281667) {
                i3 = iE;
                f(qw7Var, iN3, iE, iN2, i, str, z, drmInitData, dVar, i4);
            } else {
                if (iN3 == 1414810956 || iN3 == 1954034535 || iN3 == 2004251764 || iN3 == 1937010800 || iN3 == 1664495672) {
                    x(qw7Var, iN3, iE, iN2, i, str, dVar);
                } else if (iN3 == 1835365492) {
                    o(qw7Var, iN3, iE, i, dVar);
                } else if (iN3 == 1667329389) {
                    dVar.b = new k.b().R(i).e0(MimeTypes.APPLICATION_CAMERA_MOTION).E();
                }
                i3 = iE;
            }
            qw7Var.O(i3 + iN2);
        }
        return dVar;
    }

    public static void x(qw7 qw7Var, int i, int i2, int i3, int i4, String str, d dVar) {
        qw7Var.O(i2 + 16);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableListOf = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = i3 - 16;
                byte[] bArr = new byte[i5];
                qw7Var.j(bArr, 0, i5);
                immutableListOf = ImmutableList.of(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i == 1937010800) {
                j = 0;
            } else {
                if (i != 1664495672) {
                    throw new IllegalStateException();
                }
                dVar.d = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        dVar.b = new k.b().R(i4).e0(str2).V(str).i0(j).T(immutableListOf).E();
    }

    public static g y(qw7 qw7Var) {
        long j;
        qw7Var.O(8);
        int iC = xk.c(qw7Var.n());
        qw7Var.P(iC == 0 ? 8 : 16);
        int iN = qw7Var.n();
        qw7Var.P(4);
        int iE = qw7Var.e();
        int i = iC == 0 ? 4 : 8;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            j = C.TIME_UNSET;
            if (i3 >= i) {
                qw7Var.P(i);
                break;
            }
            if (qw7Var.d()[iE + i3] != -1) {
                long jE = iC == 0 ? qw7Var.E() : qw7Var.H();
                if (jE == 0) {
                    break;
                }
                j = jE;
                break;
            }
            i3++;
        }
        qw7Var.P(16);
        int iN2 = qw7Var.n();
        int iN3 = qw7Var.n();
        qw7Var.P(4);
        int iN4 = qw7Var.n();
        int iN5 = qw7Var.n();
        if (iN2 == 0 && iN3 == 65536 && iN4 == -65536 && iN5 == 0) {
            i2 = 90;
        } else if (iN2 == 0 && iN3 == -65536 && iN4 == 65536 && iN5 == 0) {
            i2 = 270;
        } else if (iN2 == -65536 && iN3 == 0 && iN4 == 0 && iN5 == -65536) {
            i2 = 180;
        }
        return new g(iN, j, i2);
    }

    public static tua z(xk.a aVar, xk.b bVar, long j, DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long[] jArr;
        long[] jArr2;
        xk.a aVarF;
        Pair pairH;
        xk.a aVar2 = (xk.a) zi.e(aVar.f(Mp4Box.TYPE_mdia));
        int iD = d(k(((xk.b) zi.e(aVar2.g(Mp4Box.TYPE_hdlr))).b));
        if (iD == -1) {
            return null;
        }
        g gVarY = y(((xk.b) zi.e(aVar.g(Mp4Box.TYPE_tkhd))).b);
        long jB0 = C.TIME_UNSET;
        long j2 = j == C.TIME_UNSET ? gVarY.b : j;
        long jP = p(bVar.b);
        if (j2 != C.TIME_UNSET) {
            jB0 = blb.B0(j2, 1000000L, jP);
        }
        long j3 = jB0;
        xk.a aVar3 = (xk.a) zi.e(((xk.a) zi.e(aVar2.f(Mp4Box.TYPE_minf))).f(Mp4Box.TYPE_stbl));
        Pair pairM = m(((xk.b) zi.e(aVar2.g(Mp4Box.TYPE_mdhd))).b);
        d dVarW = w(((xk.b) zi.e(aVar3.g(Mp4Box.TYPE_stsd))).b, gVarY.a, gVarY.c, (String) pairM.second, drmInitData, z2);
        if (z || (aVarF = aVar.f(Mp4Box.TYPE_edts)) == null || (pairH = h(aVarF)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) pairH.first;
            jArr2 = (long[]) pairH.second;
            jArr = jArr3;
        }
        if (dVarW.b == null) {
            return null;
        }
        return new tua(gVarY.a, iD, ((Long) pairM.first).longValue(), jP, j3, dVarW.b, dVarW.d, dVarW.a, dVarW.c, jArr, jArr2);
    }
}
