package i9;

import android.util.Base64;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.vorbis.VorbisComment;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class h0 {

    private static final class a {

        public final int f61927a;

        public final int f61928b;

        public final long[] f61929c;

        public final int f61930d;

        public final boolean f61931e;

        public a(int i10, int i11, long[] jArr, int i12, boolean z10) {
            this.f61927a = i10;
            this.f61928b = i11;
            this.f61929c = jArr;
            this.f61930d = i12;
            this.f61931e = z10;
        }
    }

    public static final class b {

        public final String f61932a;

        public final String[] f61933b;

        public final int f61934c;

        public b(String str, String[] strArr, int i10) {
            this.f61932a = str;
            this.f61933b = strArr;
            this.f61934c = i10;
        }
    }

    public static final class c {

        public final boolean f61935a;

        public final int f61936b;

        public final int f61937c;

        public final int f61938d;

        public c(boolean z10, int i10, int i11, int i12) {
            this.f61935a = z10;
            this.f61936b = i10;
            this.f61937c = i11;
            this.f61938d = i12;
        }
    }

    public static final class d {

        public final int f61939a;

        public final int f61940b;

        public final int f61941c;

        public final int f61942d;

        public final int f61943e;

        public final int f61944f;

        public final int f61945g;

        public final int f61946h;

        public final boolean f61947i;

        public final byte[] f61948j;

        public d(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, byte[] bArr) {
            this.f61939a = i10;
            this.f61940b = i11;
            this.f61941c = i12;
            this.f61942d = i13;
            this.f61943e = i14;
            this.f61944f = i15;
            this.f61945g = i16;
            this.f61946h = i17;
            this.f61947i = z10;
            this.f61948j = bArr;
        }
    }

    public static int a(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i11++;
            i10 >>>= 1;
        }
        return i11;
    }

    private static long b(long j10, long j11) {
        return (long) Math.floor(Math.pow(j10, 1.0d / j11));
    }

    public static Metadata c(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = (String) list.get(i10);
            String[] strArrT0 = p0.T0(str, UrlUtils.EQUAL_MARK);
            if (strArrT0.length != 2) {
                com.google.android.exoplayer2.util.s.i("VorbisUtil", "Failed to parse Vorbis comment: " + str);
            } else if (strArrT0[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.fromPictureBlock(new com.google.android.exoplayer2.util.d0(Base64.decode(strArrT0[1], 0))));
                } catch (RuntimeException e10) {
                    com.google.android.exoplayer2.util.s.j("VorbisUtil", "Failed to parse vorbis picture", e10);
                }
            } else {
                arrayList.add(new VorbisComment(strArrT0[0], strArrT0[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static a d(g0 g0Var) throws ParserException {
        if (g0Var.d(24) != 5653314) {
            throw ParserException.createForMalformedContainer("expected code book to start with [0x56, 0x43, 0x42] at " + g0Var.b(), null);
        }
        int iD = g0Var.d(16);
        int iD2 = g0Var.d(24);
        long[] jArr = new long[iD2];
        boolean zC = g0Var.c();
        long jB = 0;
        if (zC) {
            int iD3 = g0Var.d(5) + 1;
            int i10 = 0;
            while (i10 < iD2) {
                int iD4 = g0Var.d(a(iD2 - i10));
                for (int i11 = 0; i11 < iD4 && i10 < iD2; i11++) {
                    jArr[i10] = iD3;
                    i10++;
                }
                iD3++;
            }
        } else {
            boolean zC2 = g0Var.c();
            for (int i12 = 0; i12 < iD2; i12++) {
                if (!zC2) {
                    jArr[i12] = g0Var.d(5) + 1;
                } else if (g0Var.c()) {
                    jArr[i12] = g0Var.d(5) + 1;
                } else {
                    jArr[i12] = 0;
                }
            }
        }
        int iD5 = g0Var.d(4);
        if (iD5 > 2) {
            throw ParserException.createForMalformedContainer("lookup type greater than 2 not decodable: " + iD5, null);
        }
        if (iD5 == 1 || iD5 == 2) {
            g0Var.e(32);
            g0Var.e(32);
            int iD6 = g0Var.d(4) + 1;
            g0Var.e(1);
            if (iD5 != 1) {
                jB = ((long) iD2) * ((long) iD);
            } else if (iD != 0) {
                jB = b(iD2, iD);
            }
            g0Var.e((int) (jB * ((long) iD6)));
        }
        return new a(iD, iD2, jArr, iD5, zC);
    }

    private static void e(g0 g0Var) throws ParserException {
        int iD = g0Var.d(6) + 1;
        for (int i10 = 0; i10 < iD; i10++) {
            int iD2 = g0Var.d(16);
            if (iD2 == 0) {
                g0Var.e(8);
                g0Var.e(16);
                g0Var.e(16);
                g0Var.e(6);
                g0Var.e(8);
                int iD3 = g0Var.d(4) + 1;
                for (int i11 = 0; i11 < iD3; i11++) {
                    g0Var.e(8);
                }
            } else {
                if (iD2 != 1) {
                    throw ParserException.createForMalformedContainer("floor type greater than 1 not decodable: " + iD2, null);
                }
                int iD4 = g0Var.d(5);
                int[] iArr = new int[iD4];
                int i12 = -1;
                for (int i13 = 0; i13 < iD4; i13++) {
                    int iD5 = g0Var.d(4);
                    iArr[i13] = iD5;
                    if (iD5 > i12) {
                        i12 = iD5;
                    }
                }
                int i14 = i12 + 1;
                int[] iArr2 = new int[i14];
                for (int i15 = 0; i15 < i14; i15++) {
                    iArr2[i15] = g0Var.d(3) + 1;
                    int iD6 = g0Var.d(2);
                    if (iD6 > 0) {
                        g0Var.e(8);
                    }
                    for (int i16 = 0; i16 < (1 << iD6); i16++) {
                        g0Var.e(8);
                    }
                }
                g0Var.e(2);
                int iD7 = g0Var.d(4);
                int i17 = 0;
                int i18 = 0;
                for (int i19 = 0; i19 < iD4; i19++) {
                    i17 += iArr2[iArr[i19]];
                    while (i18 < i17) {
                        g0Var.e(iD7);
                        i18++;
                    }
                }
            }
        }
    }

    private static void f(int i10, g0 g0Var) throws ParserException {
        int iD = g0Var.d(6) + 1;
        for (int i11 = 0; i11 < iD; i11++) {
            int iD2 = g0Var.d(16);
            if (iD2 != 0) {
                com.google.android.exoplayer2.util.s.c("VorbisUtil", "mapping type other than 0 not supported: " + iD2);
            } else {
                int iD3 = g0Var.c() ? g0Var.d(4) + 1 : 1;
                if (g0Var.c()) {
                    int iD4 = g0Var.d(8) + 1;
                    for (int i12 = 0; i12 < iD4; i12++) {
                        int i13 = i10 - 1;
                        g0Var.e(a(i13));
                        g0Var.e(a(i13));
                    }
                }
                if (g0Var.d(2) != 0) {
                    throw ParserException.createForMalformedContainer("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (iD3 > 1) {
                    for (int i14 = 0; i14 < i10; i14++) {
                        g0Var.e(4);
                    }
                }
                for (int i15 = 0; i15 < iD3; i15++) {
                    g0Var.e(8);
                    g0Var.e(8);
                    g0Var.e(8);
                }
            }
        }
    }

    private static c[] g(g0 g0Var) {
        int iD = g0Var.d(6) + 1;
        c[] cVarArr = new c[iD];
        for (int i10 = 0; i10 < iD; i10++) {
            cVarArr[i10] = new c(g0Var.c(), g0Var.d(16), g0Var.d(16), g0Var.d(8));
        }
        return cVarArr;
    }

    private static void h(g0 g0Var) throws ParserException {
        int iD = g0Var.d(6) + 1;
        for (int i10 = 0; i10 < iD; i10++) {
            if (g0Var.d(16) > 2) {
                throw ParserException.createForMalformedContainer("residueType greater than 2 is not decodable", null);
            }
            g0Var.e(24);
            g0Var.e(24);
            g0Var.e(24);
            int iD2 = g0Var.d(6) + 1;
            g0Var.e(8);
            int[] iArr = new int[iD2];
            for (int i11 = 0; i11 < iD2; i11++) {
                iArr[i11] = ((g0Var.c() ? g0Var.d(5) : 0) * 8) + g0Var.d(3);
            }
            for (int i12 = 0; i12 < iD2; i12++) {
                for (int i13 = 0; i13 < 8; i13++) {
                    if ((iArr[i12] & (1 << i13)) != 0) {
                        g0Var.e(8);
                    }
                }
            }
        }
    }

    public static b i(com.google.android.exoplayer2.util.d0 d0Var) {
        return j(d0Var, true, true);
    }

    public static b j(com.google.android.exoplayer2.util.d0 d0Var, boolean z10, boolean z11) throws ParserException {
        if (z10) {
            m(3, d0Var, false);
        }
        String strA = d0Var.A((int) d0Var.t());
        int length = strA.length();
        long jT = d0Var.t();
        String[] strArr = new String[(int) jT];
        int length2 = length + 15;
        for (int i10 = 0; i10 < jT; i10++) {
            String strA2 = d0Var.A((int) d0Var.t());
            strArr[i10] = strA2;
            length2 = length2 + 4 + strA2.length();
        }
        if (z11 && (d0Var.D() & 1) == 0) {
            throw ParserException.createForMalformedContainer("framing bit expected to be set", null);
        }
        return new b(strA, strArr, length2 + 1);
    }

    public static d k(com.google.android.exoplayer2.util.d0 d0Var) throws ParserException {
        m(1, d0Var, false);
        int iU = d0Var.u();
        int iD = d0Var.D();
        int iU2 = d0Var.u();
        int iQ = d0Var.q();
        if (iQ <= 0) {
            iQ = -1;
        }
        int iQ2 = d0Var.q();
        if (iQ2 <= 0) {
            iQ2 = -1;
        }
        int iQ3 = d0Var.q();
        if (iQ3 <= 0) {
            iQ3 = -1;
        }
        int iD2 = d0Var.D();
        return new d(iU, iD, iU2, iQ, iQ2, iQ3, (int) Math.pow(2.0d, iD2 & 15), (int) Math.pow(2.0d, (iD2 & 240) >> 4), (d0Var.D() & 1) > 0, Arrays.copyOf(d0Var.d(), d0Var.f()));
    }

    public static c[] l(com.google.android.exoplayer2.util.d0 d0Var, int i10) throws ParserException {
        m(5, d0Var, false);
        int iD = d0Var.D() + 1;
        g0 g0Var = new g0(d0Var.d());
        g0Var.e(d0Var.e() * 8);
        for (int i11 = 0; i11 < iD; i11++) {
            d(g0Var);
        }
        int iD2 = g0Var.d(6) + 1;
        for (int i12 = 0; i12 < iD2; i12++) {
            if (g0Var.d(16) != 0) {
                throw ParserException.createForMalformedContainer("placeholder of time domain transforms not zeroed out", null);
            }
        }
        e(g0Var);
        h(g0Var);
        f(i10, g0Var);
        c[] cVarArrG = g(g0Var);
        if (g0Var.c()) {
            return cVarArrG;
        }
        throw ParserException.createForMalformedContainer("framing bit after modes not set as expected", null);
    }

    public static boolean m(int i10, com.google.android.exoplayer2.util.d0 d0Var, boolean z10) throws ParserException {
        if (d0Var.a() < 7) {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("too short header: " + d0Var.a(), null);
        }
        if (d0Var.D() != i10) {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("expected header type " + Integer.toHexString(i10), null);
        }
        if (d0Var.D() == 118 && d0Var.D() == 111 && d0Var.D() == 114 && d0Var.D() == 98 && d0Var.D() == 105 && d0Var.D() == 115) {
            return true;
        }
        if (z10) {
            return false;
        }
        throw ParserException.createForMalformedContainer("expected characters 'vorbis'", null);
    }
}
