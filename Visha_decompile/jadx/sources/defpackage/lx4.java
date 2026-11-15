package defpackage;

import androidx.media3.muxer.MuxerUtil;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.BinaryFrame;
import com.google.android.exoplayer2.metadata.id3.ChapterFrame;
import com.google.android.exoplayer2.metadata.id3.ChapterTocFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.GeobFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.id3.UrlLinkFrame;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import org.apache.commons.lang3.CharEncoding;

public final class lx4 extends jm9 {
    public static final a b = new a() {
        @Override
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            return lx4.z(i, i2, i3, i4, i5);
        }
    };
    public final a a;

    public interface a {
        boolean evaluate(int i, int i2, int i3, int i4, int i5);
    }

    public static final class b {
        public final int a;
        public final boolean b;
        public final int c;

        public b(int i, boolean z, int i2) {
            this.a = i;
            this.b = z;
            this.c = i2;
        }
    }

    public lx4() {
        this(null);
    }

    public static int A(qw7 qw7Var, int i) {
        byte[] bArrD = qw7Var.d();
        int iE = qw7Var.e();
        int i2 = iE;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= iE + i) {
                return i;
            }
            if ((bArrD[i2] & 255) == 255 && bArrD[i3] == 0) {
                System.arraycopy(bArrD, i2 + 2, bArrD, i3, (i - (i2 - iE)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007c A[PHI: r3
      0x007c: PHI (r3v16 int) = (r3v5 int), (r3v19 int) binds: [B:42:0x0089, B:33:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    public static boolean B(qw7 qw7Var, int i, int i2, boolean z) {
        int iF;
        long jF;
        int I;
        int i3;
        int iE = qw7Var.e();
        while (true) {
            try {
                boolean z2 = true;
                if (qw7Var.a() < i2) {
                    qw7Var.O(iE);
                    return true;
                }
                if (i >= 3) {
                    iF = qw7Var.n();
                    jF = qw7Var.E();
                    I = qw7Var.I();
                } else {
                    iF = qw7Var.F();
                    jF = qw7Var.F();
                    I = 0;
                }
                if (iF == 0 && jF == 0 && I == 0) {
                    qw7Var.O(iE);
                    return true;
                }
                if (i == 4 && !z) {
                    if ((8421504 & jF) != 0) {
                        qw7Var.O(iE);
                        return false;
                    }
                    jF = (((jF >> 24) & 255) << 21) | (jF & 255) | (((jF >> 8) & 255) << 7) | (((jF >> 16) & 255) << 14);
                }
                if (i == 4) {
                    i3 = (I & 64) != 0 ? 1 : 0;
                    if ((I & 1) == 0) {
                        z2 = false;
                    }
                } else if (i == 3) {
                    i3 = (I & 32) != 0 ? 1 : 0;
                    if ((I & 128) == 0) {
                        z2 = false;
                    }
                } else {
                    i3 = 0;
                    z2 = false;
                }
                if (z2) {
                    i3 += 4;
                }
                if (jF < i3) {
                    qw7Var.O(iE);
                    return false;
                }
                if (qw7Var.a() < jF) {
                    qw7Var.O(iE);
                    return false;
                }
                qw7Var.P((int) jF);
            } catch (Throwable th) {
                qw7Var.O(iE);
                throw th;
            }
        }
    }

    public static byte[] d(byte[] bArr, int i, int i2) {
        return i2 <= i ? blb.f : Arrays.copyOfRange(bArr, i, i2);
    }

    public static ApicFrame f(qw7 qw7Var, int i, int i2) {
        int iY;
        String strE;
        int iC = qw7Var.C();
        String strV = v(iC);
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        qw7Var.j(bArr, 0, i3);
        if (i2 == 2) {
            strE = "image/" + ui.e(new String(bArr, 0, 3, CharEncoding.ISO_8859_1));
            if (ImageFormats.MIME_TYPE_JPG.equals(strE)) {
                strE = "image/jpeg";
            }
            iY = 2;
        } else {
            iY = y(bArr, 0);
            strE = ui.e(new String(bArr, 0, iY, CharEncoding.ISO_8859_1));
            if (strE.indexOf(47) == -1) {
                strE = "image/" + strE;
            }
        }
        int i4 = bArr[iY + 1] & 255;
        int i5 = iY + 2;
        int iX = x(bArr, i5, iC);
        return new ApicFrame(strE, new String(bArr, i5, iX - i5, strV), i4, d(bArr, iX + u(iC), i3));
    }

    public static BinaryFrame g(qw7 qw7Var, int i, String str) {
        byte[] bArr = new byte[i];
        qw7Var.j(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    public static ChapterFrame h(qw7 qw7Var, int i, int i2, boolean z, int i3, a aVar) {
        int iE = qw7Var.e();
        int iY = y(qw7Var.d(), iE);
        String str = new String(qw7Var.d(), iE, iY - iE, CharEncoding.ISO_8859_1);
        qw7Var.O(iY + 1);
        int iN = qw7Var.n();
        int iN2 = qw7Var.n();
        long jE = qw7Var.E();
        long j = jE == MuxerUtil.UNSIGNED_INT_MAX_VALUE ? -1L : jE;
        long jE2 = qw7Var.E();
        long j2 = jE2 == MuxerUtil.UNSIGNED_INT_MAX_VALUE ? -1L : jE2;
        ArrayList arrayList = new ArrayList();
        int i4 = iE + i;
        while (qw7Var.e() < i4) {
            Id3Frame id3FrameK = k(i2, qw7Var, z, i3, aVar);
            if (id3FrameK != null) {
                arrayList.add(id3FrameK);
            }
        }
        return new ChapterFrame(str, iN, iN2, j, j2, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    public static ChapterTocFrame i(qw7 qw7Var, int i, int i2, boolean z, int i3, a aVar) {
        int iE = qw7Var.e();
        int iY = y(qw7Var.d(), iE);
        String str = new String(qw7Var.d(), iE, iY - iE, CharEncoding.ISO_8859_1);
        qw7Var.O(iY + 1);
        int iC = qw7Var.C();
        boolean z2 = (iC & 2) != 0;
        boolean z3 = (iC & 1) != 0;
        int iC2 = qw7Var.C();
        String[] strArr = new String[iC2];
        for (int i4 = 0; i4 < iC2; i4++) {
            int iE2 = qw7Var.e();
            int iY2 = y(qw7Var.d(), iE2);
            strArr[i4] = new String(qw7Var.d(), iE2, iY2 - iE2, CharEncoding.ISO_8859_1);
            qw7Var.O(iY2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i5 = iE + i;
        while (qw7Var.e() < i5) {
            Id3Frame id3FrameK = k(i2, qw7Var, z, i3, aVar);
            if (id3FrameK != null) {
                arrayList.add(id3FrameK);
            }
        }
        return new ChapterTocFrame(str, z2, z3, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    public static CommentFrame j(qw7 qw7Var, int i) {
        if (i < 4) {
            return null;
        }
        int iC = qw7Var.C();
        String strV = v(iC);
        byte[] bArr = new byte[3];
        qw7Var.j(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        qw7Var.j(bArr2, 0, i2);
        int iX = x(bArr2, 0, iC);
        String str2 = new String(bArr2, 0, iX, strV);
        int iU = iX + u(iC);
        return new CommentFrame(str, str2, p(bArr2, iU, x(bArr2, iU, iC), strV));
    }

    /* JADX WARN: Code duplicated, block: B:133:0x0198  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:147:0x01c5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:151:0x01db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:152:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:157:0x01ea A[Catch: all -> 0x0122, UnsupportedEncodingException -> 0x0218, Merged into TryCatch #0 {all -> 0x0122, UnsupportedEncodingException -> 0x0218, blocks: (B:91:0x011c, B:159:0x01f4, B:162:0x0218, B:95:0x0127, B:102:0x013d, B:104:0x0145, B:112:0x015f, B:121:0x0177, B:132:0x0192, B:139:0x01a4, B:145:0x01b3, B:150:0x01cb, B:156:0x01e5, B:157:0x01ea), top: B:169:0x0112 }] */
    public static Id3Frame k(int i, qw7 qw7Var, boolean z, int i2, a aVar) {
        int iG;
        int i3;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        Id3Frame id3FrameG;
        int iC = qw7Var.C();
        int iC2 = qw7Var.C();
        int iC3 = qw7Var.C();
        int iC4 = i >= 3 ? qw7Var.C() : 0;
        if (i == 4) {
            iG = qw7Var.G();
            if (!z) {
                iG = (((iG >> 24) & 255) << 21) | (iG & 255) | (((iG >> 8) & 255) << 7) | (((iG >> 16) & 255) << 14);
            }
        } else {
            iG = i == 3 ? qw7Var.G() : qw7Var.F();
        }
        int iA = iG;
        int I = i >= 3 ? qw7Var.I() : 0;
        if (iC == 0 && iC2 == 0 && iC3 == 0 && iC4 == 0 && iA == 0 && I == 0) {
            qw7Var.O(qw7Var.f());
            return null;
        }
        int iE = qw7Var.e() + iA;
        if (iE > qw7Var.f()) {
            op5.i("Id3Decoder", "Frame size exceeds remaining tag data");
            qw7Var.O(qw7Var.f());
            return null;
        }
        if (aVar != null) {
            i3 = iE;
            if (!aVar.evaluate(i, iC, iC2, iC3, iC4)) {
                qw7Var.O(i3);
                return null;
            }
        } else {
            i3 = iE;
        }
        if (i == 3) {
            int i4 = I;
            z3 = (i4 & 128) != 0;
            z4 = (i4 & 64) != 0;
            z2 = (i4 & 32) != 0;
            z6 = z3;
            z5 = false;
        } else {
            int i5 = I;
            if (i == 4) {
                boolean z7 = (i5 & 64) != 0;
                boolean z8 = (i5 & 8) != 0;
                boolean z9 = (i5 & 4) != 0;
                z5 = (i5 & 2) != 0;
                boolean z10 = (i5 & 1) != 0;
                z2 = z7;
                z3 = z10;
                z6 = z8;
                z4 = z9;
            } else {
                z2 = false;
                z3 = false;
                z4 = false;
                z5 = false;
                z6 = false;
            }
        }
        if (z6 || z4) {
            op5.i(r4, "Skipping unsupported compressed or encrypted frame");
            qw7Var.O(i3);
            return null;
        }
        if (z2) {
            iA--;
            qw7Var.P(1);
        }
        if (z3) {
            iA -= 4;
            qw7Var.P(4);
        }
        if (z5) {
            iA = A(qw7Var, iA);
        }
        try {
            if (iC == 84 && iC2 == 88 && iC3 == 88 && (i == 2 || iC4 == 88)) {
                id3FrameG = r(qw7Var, iA);
            } else if (iC == 84) {
                id3FrameG = q(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
            } else if (iC == 87 && iC2 == 88 && iC3 == 88 && (i == 2 || iC4 == 88)) {
                id3FrameG = t(qw7Var, iA);
            } else if (iC == 87) {
                id3FrameG = s(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
            } else if (iC == 80 && iC2 == 82 && iC3 == 73 && iC4 == 86) {
                id3FrameG = o(qw7Var, iA);
            } else if (iC == 71 && iC2 == 69 && iC3 == 79 && (iC4 == 66 || i == 2)) {
                id3FrameG = l(qw7Var, iA);
            } else if (i == 2) {
                if (iC == 80 && iC2 == 73 && iC3 == 67) {
                    id3FrameG = f(qw7Var, iA, i);
                } else if (iC != 67 && iC2 == 79 && iC3 == 77 && (iC4 == 77 || i == 2)) {
                    id3FrameG = j(qw7Var, iA);
                } else if (iC != 67 && iC2 == 72 && iC3 == 65 && iC4 == 80) {
                    id3FrameG = h(qw7Var, iA, i, z, i2, aVar);
                } else if (iC != 67 && iC2 == 84 && iC3 == 79 && iC4 == 67) {
                    id3FrameG = i(qw7Var, iA, i, z, i2, aVar);
                } else if (iC != 77 && iC2 == 76 && iC3 == 76 && iC4 == 84) {
                    id3FrameG = n(qw7Var, iA);
                } else {
                    id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                }
            } else if (iC == 65 && iC2 == 80 && iC3 == 73 && iC4 == 67) {
                id3FrameG = f(qw7Var, iA, i);
            } else if (iC != 67) {
                if (iC != 67) {
                    if (iC != 67) {
                        if (iC != 77) {
                            id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                        } else {
                            id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                        }
                    } else if (iC != 77) {
                        id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                    } else {
                        id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                    }
                } else if (iC != 67) {
                    if (iC != 77) {
                        id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                    } else {
                        id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                    }
                } else if (iC != 77) {
                    id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                } else {
                    id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                }
            } else if (iC != 67) {
                if (iC != 67) {
                    if (iC != 77) {
                        id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                    } else {
                        id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                    }
                } else if (iC != 77) {
                    id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                } else {
                    id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                }
            } else if (iC != 67) {
                if (iC != 77) {
                    id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                } else {
                    id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
                }
            } else if (iC != 77) {
                id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
            } else {
                id3FrameG = g(qw7Var, iA, w(i, iC, iC2, iC3, iC4));
            }
            if (id3FrameG == null) {
                op5.i("Id3Decoder", "Failed to decode frame: id=" + w(i, iC, iC2, iC3, iC4) + ", frameSize=" + iA);
            }
            qw7Var.O(i3);
            return id3FrameG;
        } catch (UnsupportedEncodingException unused) {
            op5.i(r4, "Unsupported character encoding");
            return null;
        } finally {
            qw7Var.O(i3);
        }
    }

    public static GeobFrame l(qw7 qw7Var, int i) {
        int iC = qw7Var.C();
        String strV = v(iC);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        qw7Var.j(bArr, 0, i2);
        int iY = y(bArr, 0);
        String str = new String(bArr, 0, iY, CharEncoding.ISO_8859_1);
        int i3 = iY + 1;
        int iX = x(bArr, i3, iC);
        String strP = p(bArr, i3, iX, strV);
        int iU = iX + u(iC);
        int iX2 = x(bArr, iU, iC);
        return new GeobFrame(str, strP, p(bArr, iU, iX2, strV), d(bArr, iX2 + u(iC), i2));
    }

    public static b m(qw7 qw7Var) {
        if (qw7Var.a() < 10) {
            op5.i("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        int iF = qw7Var.F();
        if (iF != 4801587) {
            op5.i("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(iF)));
            return null;
        }
        int iC = qw7Var.C();
        qw7Var.P(1);
        int iC2 = qw7Var.C();
        int iB = qw7Var.B();
        if (iC == 2) {
            if ((iC2 & 64) != 0) {
                op5.i("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (iC == 3) {
            if ((iC2 & 64) != 0) {
                int iN = qw7Var.n();
                qw7Var.P(iN);
                iB -= iN + 4;
            }
        } else {
            if (iC != 4) {
                op5.i("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + iC);
                return null;
            }
            if ((iC2 & 64) != 0) {
                int iB2 = qw7Var.B();
                qw7Var.P(iB2 - 4);
                iB -= iB2;
            }
            if ((iC2 & 16) != 0) {
                iB -= 10;
            }
        }
        return new b(iC, iC < 4 && (iC2 & 128) != 0, iB);
    }

    public static MlltFrame n(qw7 qw7Var, int i) {
        int I = qw7Var.I();
        int iF = qw7Var.F();
        int iF2 = qw7Var.F();
        int iC = qw7Var.C();
        int iC2 = qw7Var.C();
        pw7 pw7Var = new pw7();
        pw7Var.m(qw7Var);
        int i2 = ((i - 10) * 8) / (iC + iC2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int iH = pw7Var.h(iC);
            int iH2 = pw7Var.h(iC2);
            iArr[i3] = iH;
            iArr2[i3] = iH2;
        }
        return new MlltFrame(I, iF, iF2, iArr, iArr2);
    }

    public static PrivFrame o(qw7 qw7Var, int i) {
        byte[] bArr = new byte[i];
        qw7Var.j(bArr, 0, i);
        int iY = y(bArr, 0);
        return new PrivFrame(new String(bArr, 0, iY, CharEncoding.ISO_8859_1), d(bArr, iY + 1, i));
    }

    public static String p(byte[] bArr, int i, int i2, String str) {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    public static TextInformationFrame q(qw7 qw7Var, int i, String str) {
        if (i < 1) {
            return null;
        }
        int iC = qw7Var.C();
        String strV = v(iC);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        qw7Var.j(bArr, 0, i2);
        return new TextInformationFrame(str, null, new String(bArr, 0, x(bArr, 0, iC), strV));
    }

    public static TextInformationFrame r(qw7 qw7Var, int i) {
        if (i < 1) {
            return null;
        }
        int iC = qw7Var.C();
        String strV = v(iC);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        qw7Var.j(bArr, 0, i2);
        int iX = x(bArr, 0, iC);
        String str = new String(bArr, 0, iX, strV);
        int iU = iX + u(iC);
        return new TextInformationFrame("TXXX", str, p(bArr, iU, x(bArr, iU, iC), strV));
    }

    public static UrlLinkFrame s(qw7 qw7Var, int i, String str) {
        byte[] bArr = new byte[i];
        qw7Var.j(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, y(bArr, 0), CharEncoding.ISO_8859_1));
    }

    public static UrlLinkFrame t(qw7 qw7Var, int i) {
        if (i < 1) {
            return null;
        }
        int iC = qw7Var.C();
        String strV = v(iC);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        qw7Var.j(bArr, 0, i2);
        int iX = x(bArr, 0, iC);
        String str = new String(bArr, 0, iX, strV);
        int iU = iX + u(iC);
        return new UrlLinkFrame("WXXX", str, p(bArr, iU, y(bArr, iU), CharEncoding.ISO_8859_1));
    }

    public static int u(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    public static String v(int i) {
        if (i == 1) {
            return CharEncoding.UTF_16;
        }
        if (i != 2) {
            return i != 3 ? CharEncoding.ISO_8859_1 : "UTF-8";
        }
        return CharEncoding.UTF_16BE;
    }

    public static String w(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static int x(byte[] bArr, int i, int i2) {
        int iY = y(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iY;
        }
        while (iY < bArr.length - 1) {
            if ((iY - i) % 2 == 0 && bArr[iY + 1] == 0) {
                return iY;
            }
            iY = y(bArr, iY + 1);
        }
        return bArr.length;
    }

    public static int y(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    public static boolean z(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    @Override
    public Metadata b(eo6 eo6Var, ByteBuffer byteBuffer) {
        return e(byteBuffer.array(), byteBuffer.limit());
    }

    public Metadata e(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        qw7 qw7Var = new qw7(bArr, i);
        b bVarM = m(qw7Var);
        if (bVarM == null) {
            return null;
        }
        int iE = qw7Var.e();
        int i2 = bVarM.a == 2 ? 6 : 10;
        int iA = bVarM.c;
        if (bVarM.b) {
            iA = A(qw7Var, bVarM.c);
        }
        qw7Var.N(iE + iA);
        boolean z = false;
        if (!B(qw7Var, bVarM.a, i2, false)) {
            if (bVarM.a != 4 || !B(qw7Var, 4, i2, true)) {
                op5.i("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + bVarM.a);
                return null;
            }
            z = true;
        }
        while (qw7Var.a() >= i2) {
            Id3Frame id3FrameK = k(bVarM.a, qw7Var, z, i2, this.a);
            if (id3FrameK != null) {
                arrayList.add(id3FrameK);
            }
        }
        return new Metadata(arrayList);
    }

    public lx4(a aVar) {
        this.a = aVar;
    }
}
