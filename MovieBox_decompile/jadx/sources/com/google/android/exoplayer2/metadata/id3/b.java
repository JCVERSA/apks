package com.google.android.exoplayer2.metadata.id3;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.metadata.g;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

public final class b extends g {

    public static final a f24797b = new a() {
        @Override
        public final boolean evaluate(int i10, int i11, int i12, int i13, int i14) {
            return b.z(i10, i11, i12, i13, i14);
        }
    };

    private final a f24798a;

    public interface a {
        boolean evaluate(int i10, int i11, int i12, int i13, int i14);
    }

    private static final class C0345b {

        private final int f24799a;

        private final boolean f24800b;

        private final int f24801c;

        public C0345b(int i10, boolean z10, int i11) {
            this.f24799a = i10;
            this.f24800b = z10;
            this.f24801c = i11;
        }
    }

    public b() {
        this(null);
    }

    private static int A(d0 d0Var, int i10) {
        byte[] bArrD = d0Var.d();
        int iE = d0Var.e();
        int i11 = iE;
        while (true) {
            int i12 = i11 + 1;
            if (i12 >= iE + i10) {
                return i10;
            }
            if ((bArrD[i11] & 255) == 255 && bArrD[i12] == 0) {
                System.arraycopy(bArrD, i11 + 2, bArrD, i12, (i10 - (i11 - iE)) - 2);
                i10--;
            }
            i11 = i12;
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007c A[PHI: r3
      0x007c: PHI (r3v16 int) = (r3v5 int), (r3v19 int) binds: [B:42:0x0089, B:33:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    private static boolean B(d0 d0Var, int i10, int i11, boolean z10) {
        int iG;
        long jG;
        int iJ;
        int i12;
        int iE = d0Var.e();
        while (true) {
            try {
                boolean z11 = true;
                if (d0Var.a() < i11) {
                    d0Var.P(iE);
                    return true;
                }
                if (i10 >= 3) {
                    iG = d0Var.n();
                    jG = d0Var.F();
                    iJ = d0Var.J();
                } else {
                    iG = d0Var.G();
                    jG = d0Var.G();
                    iJ = 0;
                }
                if (iG == 0 && jG == 0 && iJ == 0) {
                    d0Var.P(iE);
                    return true;
                }
                if (i10 == 4 && !z10) {
                    if ((8421504 & jG) != 0) {
                        d0Var.P(iE);
                        return false;
                    }
                    jG = (((jG >> 24) & 255) << 21) | (jG & 255) | (((jG >> 8) & 255) << 7) | (((jG >> 16) & 255) << 14);
                }
                if (i10 == 4) {
                    i12 = (iJ & 64) != 0 ? 1 : 0;
                    if ((iJ & 1) == 0) {
                        z11 = false;
                    }
                } else if (i10 == 3) {
                    i12 = (iJ & 32) != 0 ? 1 : 0;
                    if ((iJ & 128) == 0) {
                        z11 = false;
                    }
                } else {
                    i12 = 0;
                    z11 = false;
                }
                if (z11) {
                    i12 += 4;
                }
                if (jG < i12) {
                    d0Var.P(iE);
                    return false;
                }
                if (d0Var.a() < jG) {
                    d0Var.P(iE);
                    return false;
                }
                d0Var.Q((int) jG);
            } catch (Throwable th2) {
                d0Var.P(iE);
                throw th2;
            }
        }
    }

    private static byte[] d(byte[] bArr, int i10, int i11) {
        return i11 <= i10 ? p0.f26859f : Arrays.copyOfRange(bArr, i10, i11);
    }

    private static ApicFrame f(d0 d0Var, int i10, int i11) {
        int iY;
        String strE;
        int iD = d0Var.D();
        String strV = v(iD);
        int i12 = i10 - 1;
        byte[] bArr = new byte[i12];
        d0Var.j(bArr, 0, i12);
        if (i11 == 2) {
            strE = "image/" + com.google.common.base.a.e(new String(bArr, 0, 3, "ISO-8859-1"));
            if ("image/jpg".equals(strE)) {
                strE = "image/jpeg";
            }
            iY = 2;
        } else {
            iY = y(bArr, 0);
            strE = com.google.common.base.a.e(new String(bArr, 0, iY, "ISO-8859-1"));
            if (strE.indexOf(47) == -1) {
                strE = "image/" + strE;
            }
        }
        int i13 = bArr[iY + 1] & 255;
        int i14 = iY + 2;
        int iX = x(bArr, i14, iD);
        return new ApicFrame(strE, new String(bArr, i14, iX - i14, strV), i13, d(bArr, iX + u(iD), i12));
    }

    private static BinaryFrame g(d0 d0Var, int i10, String str) {
        byte[] bArr = new byte[i10];
        d0Var.j(bArr, 0, i10);
        return new BinaryFrame(str, bArr);
    }

    private static ChapterFrame h(d0 d0Var, int i10, int i11, boolean z10, int i12, a aVar) {
        int iE = d0Var.e();
        int iY = y(d0Var.d(), iE);
        String str = new String(d0Var.d(), iE, iY - iE, "ISO-8859-1");
        d0Var.P(iY + 1);
        int iN = d0Var.n();
        int iN2 = d0Var.n();
        long jF = d0Var.F();
        long j10 = jF == 4294967295L ? -1L : jF;
        long jF2 = d0Var.F();
        long j11 = jF2 == 4294967295L ? -1L : jF2;
        ArrayList arrayList = new ArrayList();
        int i13 = iE + i10;
        while (d0Var.e() < i13) {
            Id3Frame id3FrameK = k(i11, d0Var, z10, i12, aVar);
            if (id3FrameK != null) {
                arrayList.add(id3FrameK);
            }
        }
        return new ChapterFrame(str, iN, iN2, j10, j11, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    private static ChapterTocFrame i(d0 d0Var, int i10, int i11, boolean z10, int i12, a aVar) {
        int iE = d0Var.e();
        int iY = y(d0Var.d(), iE);
        String str = new String(d0Var.d(), iE, iY - iE, "ISO-8859-1");
        d0Var.P(iY + 1);
        int iD = d0Var.D();
        boolean z11 = (iD & 2) != 0;
        boolean z12 = (iD & 1) != 0;
        int iD2 = d0Var.D();
        String[] strArr = new String[iD2];
        for (int i13 = 0; i13 < iD2; i13++) {
            int iE2 = d0Var.e();
            int iY2 = y(d0Var.d(), iE2);
            strArr[i13] = new String(d0Var.d(), iE2, iY2 - iE2, "ISO-8859-1");
            d0Var.P(iY2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i14 = iE + i10;
        while (d0Var.e() < i14) {
            Id3Frame id3FrameK = k(i11, d0Var, z10, i12, aVar);
            if (id3FrameK != null) {
                arrayList.add(id3FrameK);
            }
        }
        return new ChapterTocFrame(str, z11, z12, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    private static CommentFrame j(d0 d0Var, int i10) {
        if (i10 < 4) {
            return null;
        }
        int iD = d0Var.D();
        String strV = v(iD);
        byte[] bArr = new byte[3];
        d0Var.j(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i11 = i10 - 4;
        byte[] bArr2 = new byte[i11];
        d0Var.j(bArr2, 0, i11);
        int iX = x(bArr2, 0, iD);
        String str2 = new String(bArr2, 0, iX, strV);
        int iU = iX + u(iD);
        return new CommentFrame(str, str2, p(bArr2, iU, x(bArr2, iU, iD), strV));
    }

    /* JADX WARN: Code duplicated, block: B:133:0x0198  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:147:0x01c5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:151:0x01db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:152:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:157:0x01ea A[Catch: all -> 0x0122, UnsupportedEncodingException -> 0x0218, Merged into TryCatch #0 {all -> 0x0122, UnsupportedEncodingException -> 0x0218, blocks: (B:91:0x011c, B:159:0x01f4, B:162:0x0218, B:95:0x0127, B:102:0x013d, B:104:0x0145, B:112:0x015f, B:121:0x0177, B:132:0x0192, B:139:0x01a4, B:145:0x01b3, B:150:0x01cb, B:156:0x01e5, B:157:0x01ea), top: B:169:0x0112 }] */
    private static Id3Frame k(int i10, d0 d0Var, boolean z10, int i11, a aVar) {
        int iH;
        int i12;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        Id3Frame id3FrameG;
        int iD = d0Var.D();
        int iD2 = d0Var.D();
        int iD3 = d0Var.D();
        int iD4 = i10 >= 3 ? d0Var.D() : 0;
        if (i10 == 4) {
            iH = d0Var.H();
            if (!z10) {
                iH = (((iH >> 24) & 255) << 21) | (iH & 255) | (((iH >> 8) & 255) << 7) | (((iH >> 16) & 255) << 14);
            }
        } else {
            iH = i10 == 3 ? d0Var.H() : d0Var.G();
        }
        int iA = iH;
        int iJ = i10 >= 3 ? d0Var.J() : 0;
        if (iD == 0 && iD2 == 0 && iD3 == 0 && iD4 == 0 && iA == 0 && iJ == 0) {
            d0Var.P(d0Var.f());
            return null;
        }
        int iE = d0Var.e() + iA;
        if (iE > d0Var.f()) {
            s.i("Id3Decoder", "Frame size exceeds remaining tag data");
            d0Var.P(d0Var.f());
            return null;
        }
        if (aVar != null) {
            i12 = iE;
            if (!aVar.evaluate(i10, iD, iD2, iD3, iD4)) {
                d0Var.P(i12);
                return null;
            }
        } else {
            i12 = iE;
        }
        if (i10 == 3) {
            int i13 = iJ;
            z12 = (i13 & 128) != 0;
            z13 = (i13 & 64) != 0;
            z11 = (i13 & 32) != 0;
            z15 = z12;
            z14 = false;
        } else {
            int i14 = iJ;
            if (i10 == 4) {
                boolean z16 = (i14 & 64) != 0;
                boolean z17 = (i14 & 8) != 0;
                boolean z18 = (i14 & 4) != 0;
                z14 = (i14 & 2) != 0;
                boolean z19 = (i14 & 1) != 0;
                z11 = z16;
                z12 = z19;
                z15 = z17;
                z13 = z18;
            } else {
                z11 = false;
                z12 = false;
                z13 = false;
                z14 = false;
                z15 = false;
            }
        }
        if (z15 || z13) {
            s.i(r4, "Skipping unsupported compressed or encrypted frame");
            d0Var.P(i12);
            return null;
        }
        if (z11) {
            iA--;
            d0Var.Q(1);
        }
        if (z12) {
            iA -= 4;
            d0Var.Q(4);
        }
        if (z14) {
            iA = A(d0Var, iA);
        }
        try {
            if (iD == 84 && iD2 == 88 && iD3 == 88 && (i10 == 2 || iD4 == 88)) {
                id3FrameG = r(d0Var, iA);
            } else if (iD == 84) {
                id3FrameG = q(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
            } else if (iD == 87 && iD2 == 88 && iD3 == 88 && (i10 == 2 || iD4 == 88)) {
                id3FrameG = t(d0Var, iA);
            } else if (iD == 87) {
                id3FrameG = s(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
            } else if (iD == 80 && iD2 == 82 && iD3 == 73 && iD4 == 86) {
                id3FrameG = o(d0Var, iA);
            } else if (iD == 71 && iD2 == 69 && iD3 == 79 && (iD4 == 66 || i10 == 2)) {
                id3FrameG = l(d0Var, iA);
            } else if (i10 == 2) {
                if (iD == 80 && iD2 == 73 && iD3 == 67) {
                    id3FrameG = f(d0Var, iA, i10);
                } else if (iD != 67 && iD2 == 79 && iD3 == 77 && (iD4 == 77 || i10 == 2)) {
                    id3FrameG = j(d0Var, iA);
                } else if (iD != 67 && iD2 == 72 && iD3 == 65 && iD4 == 80) {
                    id3FrameG = h(d0Var, iA, i10, z10, i11, aVar);
                } else if (iD != 67 && iD2 == 84 && iD3 == 79 && iD4 == 67) {
                    id3FrameG = i(d0Var, iA, i10, z10, i11, aVar);
                } else if (iD != 77 && iD2 == 76 && iD3 == 76 && iD4 == 84) {
                    id3FrameG = n(d0Var, iA);
                } else {
                    id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                }
            } else if (iD == 65 && iD2 == 80 && iD3 == 73 && iD4 == 67) {
                id3FrameG = f(d0Var, iA, i10);
            } else if (iD != 67) {
                if (iD != 67) {
                    if (iD != 67) {
                        if (iD != 77) {
                            id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                        } else {
                            id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                        }
                    } else if (iD != 77) {
                        id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                    } else {
                        id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                    }
                } else if (iD != 67) {
                    if (iD != 77) {
                        id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                    } else {
                        id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                    }
                } else if (iD != 77) {
                    id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                } else {
                    id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                }
            } else if (iD != 67) {
                if (iD != 67) {
                    if (iD != 77) {
                        id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                    } else {
                        id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                    }
                } else if (iD != 77) {
                    id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                } else {
                    id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                }
            } else if (iD != 67) {
                if (iD != 77) {
                    id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                } else {
                    id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
                }
            } else if (iD != 77) {
                id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
            } else {
                id3FrameG = g(d0Var, iA, w(i10, iD, iD2, iD3, iD4));
            }
            if (id3FrameG == null) {
                s.i("Id3Decoder", "Failed to decode frame: id=" + w(i10, iD, iD2, iD3, iD4) + ", frameSize=" + iA);
            }
            d0Var.P(i12);
            return id3FrameG;
        } catch (UnsupportedEncodingException unused) {
            s.i(r4, "Unsupported character encoding");
            return null;
        } finally {
            d0Var.P(i12);
        }
    }

    private static GeobFrame l(d0 d0Var, int i10) {
        int iD = d0Var.D();
        String strV = v(iD);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        d0Var.j(bArr, 0, i11);
        int iY = y(bArr, 0);
        String str = new String(bArr, 0, iY, "ISO-8859-1");
        int i12 = iY + 1;
        int iX = x(bArr, i12, iD);
        String strP = p(bArr, i12, iX, strV);
        int iU = iX + u(iD);
        int iX2 = x(bArr, iU, iD);
        return new GeobFrame(str, strP, p(bArr, iU, iX2, strV), d(bArr, iX2 + u(iD), i11));
    }

    private static C0345b m(d0 d0Var) {
        boolean z10 = false;
        if (d0Var.a() < 10) {
            s.i("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        int iG = d0Var.G();
        if (iG != 4801587) {
            s.i("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(iG)));
            return null;
        }
        int iD = d0Var.D();
        d0Var.Q(1);
        int iD2 = d0Var.D();
        int iC = d0Var.C();
        if (iD == 2) {
            if ((iD2 & 64) != 0) {
                s.i("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (iD == 3) {
            if ((iD2 & 64) != 0) {
                int iN = d0Var.n();
                d0Var.Q(iN);
                iC -= iN + 4;
            }
        } else {
            if (iD != 4) {
                s.i("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + iD);
                return null;
            }
            if ((iD2 & 64) != 0) {
                int iC2 = d0Var.C();
                d0Var.Q(iC2 - 4);
                iC -= iC2;
            }
            if ((iD2 & 16) != 0) {
                iC -= 10;
            }
        }
        if (iD < 4 && (iD2 & 128) != 0) {
            z10 = true;
        }
        return new C0345b(iD, z10, iC);
    }

    private static MlltFrame n(d0 d0Var, int i10) {
        int iJ = d0Var.J();
        int iG = d0Var.G();
        int iG2 = d0Var.G();
        int iD = d0Var.D();
        int iD2 = d0Var.D();
        c0 c0Var = new c0();
        c0Var.m(d0Var);
        int i11 = ((i10 - 10) * 8) / (iD + iD2);
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int iH = c0Var.h(iD);
            int iH2 = c0Var.h(iD2);
            iArr[i12] = iH;
            iArr2[i12] = iH2;
        }
        return new MlltFrame(iJ, iG, iG2, iArr, iArr2);
    }

    private static PrivFrame o(d0 d0Var, int i10) {
        byte[] bArr = new byte[i10];
        d0Var.j(bArr, 0, i10);
        int iY = y(bArr, 0);
        return new PrivFrame(new String(bArr, 0, iY, "ISO-8859-1"), d(bArr, iY + 1, i10));
    }

    private static String p(byte[] bArr, int i10, int i11, String str) {
        return (i11 <= i10 || i11 > bArr.length) ? "" : new String(bArr, i10, i11 - i10, str);
    }

    private static TextInformationFrame q(d0 d0Var, int i10, String str) {
        if (i10 < 1) {
            return null;
        }
        int iD = d0Var.D();
        String strV = v(iD);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        d0Var.j(bArr, 0, i11);
        return new TextInformationFrame(str, null, new String(bArr, 0, x(bArr, 0, iD), strV));
    }

    private static TextInformationFrame r(d0 d0Var, int i10) {
        if (i10 < 1) {
            return null;
        }
        int iD = d0Var.D();
        String strV = v(iD);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        d0Var.j(bArr, 0, i11);
        int iX = x(bArr, 0, iD);
        String str = new String(bArr, 0, iX, strV);
        int iU = iX + u(iD);
        return new TextInformationFrame("TXXX", str, p(bArr, iU, x(bArr, iU, iD), strV));
    }

    private static UrlLinkFrame s(d0 d0Var, int i10, String str) {
        byte[] bArr = new byte[i10];
        d0Var.j(bArr, 0, i10);
        return new UrlLinkFrame(str, null, new String(bArr, 0, y(bArr, 0), "ISO-8859-1"));
    }

    private static UrlLinkFrame t(d0 d0Var, int i10) {
        if (i10 < 1) {
            return null;
        }
        int iD = d0Var.D();
        String strV = v(iD);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        d0Var.j(bArr, 0, i11);
        int iX = x(bArr, 0, iD);
        String str = new String(bArr, 0, iX, strV);
        int iU = iX + u(iD);
        return new UrlLinkFrame("WXXX", str, p(bArr, iU, y(bArr, iU), "ISO-8859-1"));
    }

    private static int u(int i10) {
        return (i10 == 0 || i10 == 3) ? 1 : 2;
    }

    private static String v(int i10) {
        if (i10 == 1) {
            return C.UTF16_NAME;
        }
        if (i10 != 2) {
            return i10 != 3 ? "ISO-8859-1" : "UTF-8";
        }
        return "UTF-16BE";
    }

    private static String w(int i10, int i11, int i12, int i13, int i14) {
        return i10 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
    }

    private static int x(byte[] bArr, int i10, int i11) {
        int iY = y(bArr, i10);
        if (i11 == 0 || i11 == 3) {
            return iY;
        }
        while (iY < bArr.length - 1) {
            if ((iY - i10) % 2 == 0 && bArr[iY + 1] == 0) {
                return iY;
            }
            iY = y(bArr, iY + 1);
        }
        return bArr.length;
    }

    private static int y(byte[] bArr, int i10) {
        while (i10 < bArr.length) {
            if (bArr[i10] == 0) {
                return i10;
            }
            i10++;
        }
        return bArr.length;
    }

    public static boolean z(int i10, int i11, int i12, int i13, int i14) {
        return false;
    }

    @Override
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        return e(byteBuffer.array(), byteBuffer.limit());
    }

    public Metadata e(byte[] bArr, int i10) {
        ArrayList arrayList = new ArrayList();
        d0 d0Var = new d0(bArr, i10);
        C0345b c0345bM = m(d0Var);
        if (c0345bM == null) {
            return null;
        }
        int iE = d0Var.e();
        int i11 = c0345bM.f24799a == 2 ? 6 : 10;
        int iA = c0345bM.f24801c;
        if (c0345bM.f24800b) {
            iA = A(d0Var, c0345bM.f24801c);
        }
        d0Var.O(iE + iA);
        boolean z10 = false;
        if (!B(d0Var, c0345bM.f24799a, i11, false)) {
            if (c0345bM.f24799a != 4 || !B(d0Var, 4, i11, true)) {
                s.i("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + c0345bM.f24799a);
                return null;
            }
            z10 = true;
        }
        while (d0Var.a() >= i11) {
            Id3Frame id3FrameK = k(c0345bM.f24799a, d0Var, z10, i11, this.f24798a);
            if (id3FrameK != null) {
                arrayList.add(id3FrameK);
            }
        }
        return new Metadata(arrayList);
    }

    public b(a aVar) {
        this.f24798a = aVar;
    }
}
