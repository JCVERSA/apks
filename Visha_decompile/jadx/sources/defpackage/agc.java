package defpackage;

import android.util.Base64;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.vorbis.VorbisComment;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class agc {

    public static final class a {
        public final int a;
        public final int b;
        public final long[] c;
        public final int d;
        public final boolean e;

        public a(int i, int i2, long[] jArr, int i3, boolean z) {
            this.a = i;
            this.b = i2;
            this.c = jArr;
            this.d = i3;
            this.e = z;
        }
    }

    public static final class b {
        public final String a;
        public final String[] b;
        public final int c;

        public b(String str, String[] strArr, int i) {
            this.a = str;
            this.b = strArr;
            this.c = i;
        }
    }

    public static final class c {
        public final boolean a;
        public final int b;
        public final int c;
        public final int d;

        public c(boolean z, int i, int i2, int i3) {
            this.a = z;
            this.b = i;
            this.c = i2;
            this.d = i3;
        }
    }

    public static final class d {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final boolean i;
        public final byte[] j;

        public d(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
            this.g = i7;
            this.h = i8;
            this.i = z;
            this.j = bArr;
        }
    }

    public static int a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static long b(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    public static Metadata c(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            String[] strArrG0 = blb.G0(str, "=");
            if (strArrG0.length != 2) {
                op5.i("VorbisUtil", "Failed to parse Vorbis comment: " + str);
            } else if (strArrG0[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.fromPictureBlock(new qw7(Base64.decode(strArrG0[1], 0))));
                } catch (RuntimeException e) {
                    op5.j("VorbisUtil", "Failed to parse vorbis picture", e);
                }
            } else {
                arrayList.add(new VorbisComment(strArrG0[0], strArrG0[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static a d(yfc yfcVar) throws ParserException {
        if (yfcVar.d(24) != 5653314) {
            throw ParserException.createForMalformedContainer("expected code book to start with [0x56, 0x43, 0x42] at " + yfcVar.b(), null);
        }
        int iD = yfcVar.d(16);
        int iD2 = yfcVar.d(24);
        long[] jArr = new long[iD2];
        boolean zC = yfcVar.c();
        long jB = 0;
        if (zC) {
            int iD3 = yfcVar.d(5) + 1;
            int i = 0;
            while (i < iD2) {
                int iD4 = yfcVar.d(a(iD2 - i));
                for (int i2 = 0; i2 < iD4 && i < iD2; i2++) {
                    jArr[i] = iD3;
                    i++;
                }
                iD3++;
            }
        } else {
            boolean zC2 = yfcVar.c();
            for (int i3 = 0; i3 < iD2; i3++) {
                if (!zC2) {
                    jArr[i3] = yfcVar.d(5) + 1;
                } else if (yfcVar.c()) {
                    jArr[i3] = yfcVar.d(5) + 1;
                } else {
                    jArr[i3] = 0;
                }
            }
        }
        int iD5 = yfcVar.d(4);
        if (iD5 > 2) {
            throw ParserException.createForMalformedContainer("lookup type greater than 2 not decodable: " + iD5, null);
        }
        if (iD5 == 1 || iD5 == 2) {
            yfcVar.e(32);
            yfcVar.e(32);
            int iD6 = yfcVar.d(4) + 1;
            yfcVar.e(1);
            if (iD5 != 1) {
                jB = ((long) iD2) * ((long) iD);
            } else if (iD != 0) {
                jB = b(iD2, iD);
            }
            yfcVar.e((int) (jB * ((long) iD6)));
        }
        return new a(iD, iD2, jArr, iD5, zC);
    }

    public static void e(yfc yfcVar) throws ParserException {
        int iD = yfcVar.d(6) + 1;
        for (int i = 0; i < iD; i++) {
            int iD2 = yfcVar.d(16);
            if (iD2 == 0) {
                yfcVar.e(8);
                yfcVar.e(16);
                yfcVar.e(16);
                yfcVar.e(6);
                yfcVar.e(8);
                int iD3 = yfcVar.d(4) + 1;
                for (int i2 = 0; i2 < iD3; i2++) {
                    yfcVar.e(8);
                }
            } else {
                if (iD2 != 1) {
                    throw ParserException.createForMalformedContainer("floor type greater than 1 not decodable: " + iD2, null);
                }
                int iD4 = yfcVar.d(5);
                int[] iArr = new int[iD4];
                int i3 = -1;
                for (int i4 = 0; i4 < iD4; i4++) {
                    int iD5 = yfcVar.d(4);
                    iArr[i4] = iD5;
                    if (iD5 > i3) {
                        i3 = iD5;
                    }
                }
                int i5 = i3 + 1;
                int[] iArr2 = new int[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    iArr2[i6] = yfcVar.d(3) + 1;
                    int iD6 = yfcVar.d(2);
                    if (iD6 > 0) {
                        yfcVar.e(8);
                    }
                    for (int i7 = 0; i7 < (1 << iD6); i7++) {
                        yfcVar.e(8);
                    }
                }
                yfcVar.e(2);
                int iD7 = yfcVar.d(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < iD4; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        yfcVar.e(iD7);
                        i9++;
                    }
                }
            }
        }
    }

    public static void f(int i, yfc yfcVar) throws ParserException {
        int iD = yfcVar.d(6) + 1;
        for (int i2 = 0; i2 < iD; i2++) {
            int iD2 = yfcVar.d(16);
            if (iD2 != 0) {
                op5.c("VorbisUtil", "mapping type other than 0 not supported: " + iD2);
            } else {
                int iD3 = yfcVar.c() ? yfcVar.d(4) + 1 : 1;
                if (yfcVar.c()) {
                    int iD4 = yfcVar.d(8) + 1;
                    for (int i3 = 0; i3 < iD4; i3++) {
                        int i4 = i - 1;
                        yfcVar.e(a(i4));
                        yfcVar.e(a(i4));
                    }
                }
                if (yfcVar.d(2) != 0) {
                    throw ParserException.createForMalformedContainer("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (iD3 > 1) {
                    for (int i5 = 0; i5 < i; i5++) {
                        yfcVar.e(4);
                    }
                }
                for (int i6 = 0; i6 < iD3; i6++) {
                    yfcVar.e(8);
                    yfcVar.e(8);
                    yfcVar.e(8);
                }
            }
        }
    }

    public static c[] g(yfc yfcVar) {
        int iD = yfcVar.d(6) + 1;
        c[] cVarArr = new c[iD];
        for (int i = 0; i < iD; i++) {
            cVarArr[i] = new c(yfcVar.c(), yfcVar.d(16), yfcVar.d(16), yfcVar.d(8));
        }
        return cVarArr;
    }

    public static void h(yfc yfcVar) throws ParserException {
        int iD = yfcVar.d(6) + 1;
        for (int i = 0; i < iD; i++) {
            if (yfcVar.d(16) > 2) {
                throw ParserException.createForMalformedContainer("residueType greater than 2 is not decodable", null);
            }
            yfcVar.e(24);
            yfcVar.e(24);
            yfcVar.e(24);
            int iD2 = yfcVar.d(6) + 1;
            yfcVar.e(8);
            int[] iArr = new int[iD2];
            for (int i2 = 0; i2 < iD2; i2++) {
                iArr[i2] = ((yfcVar.c() ? yfcVar.d(5) : 0) * 8) + yfcVar.d(3);
            }
            for (int i3 = 0; i3 < iD2; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        yfcVar.e(8);
                    }
                }
            }
        }
    }

    public static b i(qw7 qw7Var) {
        return j(qw7Var, true, true);
    }

    public static b j(qw7 qw7Var, boolean z, boolean z2) throws ParserException {
        if (z) {
            m(3, qw7Var, false);
        }
        String strZ = qw7Var.z((int) qw7Var.s());
        int length = strZ.length();
        long jS = qw7Var.s();
        String[] strArr = new String[(int) jS];
        int length2 = length + 15;
        for (int i = 0; i < jS; i++) {
            String strZ2 = qw7Var.z((int) qw7Var.s());
            strArr[i] = strZ2;
            length2 = length2 + 4 + strZ2.length();
        }
        if (z2 && (qw7Var.C() & 1) == 0) {
            throw ParserException.createForMalformedContainer("framing bit expected to be set", null);
        }
        return new b(strZ, strArr, length2 + 1);
    }

    public static d k(qw7 qw7Var) throws ParserException {
        m(1, qw7Var, false);
        int iT = qw7Var.t();
        int iC = qw7Var.C();
        int iT2 = qw7Var.t();
        int iP = qw7Var.p();
        if (iP <= 0) {
            iP = -1;
        }
        int iP2 = qw7Var.p();
        if (iP2 <= 0) {
            iP2 = -1;
        }
        int iP3 = qw7Var.p();
        if (iP3 <= 0) {
            iP3 = -1;
        }
        int iC2 = qw7Var.C();
        return new d(iT, iC, iT2, iP, iP2, iP3, (int) Math.pow(2.0d, iC2 & 15), (int) Math.pow(2.0d, (iC2 & 240) >> 4), (qw7Var.C() & 1) > 0, Arrays.copyOf(qw7Var.d(), qw7Var.f()));
    }

    public static c[] l(qw7 qw7Var, int i) throws ParserException {
        m(5, qw7Var, false);
        int iC = qw7Var.C() + 1;
        yfc yfcVar = new yfc(qw7Var.d());
        yfcVar.e(qw7Var.e() * 8);
        for (int i2 = 0; i2 < iC; i2++) {
            d(yfcVar);
        }
        int iD = yfcVar.d(6) + 1;
        for (int i3 = 0; i3 < iD; i3++) {
            if (yfcVar.d(16) != 0) {
                throw ParserException.createForMalformedContainer("placeholder of time domain transforms not zeroed out", null);
            }
        }
        e(yfcVar);
        h(yfcVar);
        f(i, yfcVar);
        c[] cVarArrG = g(yfcVar);
        if (yfcVar.c()) {
            return cVarArrG;
        }
        throw ParserException.createForMalformedContainer("framing bit after modes not set as expected", null);
    }

    public static boolean m(int i, qw7 qw7Var, boolean z) throws ParserException {
        if (qw7Var.a() < 7) {
            if (z) {
                return false;
            }
            throw ParserException.createForMalformedContainer("too short header: " + qw7Var.a(), null);
        }
        if (qw7Var.C() != i) {
            if (z) {
                return false;
            }
            throw ParserException.createForMalformedContainer("expected header type " + Integer.toHexString(i), null);
        }
        if (qw7Var.C() == 118 && qw7Var.C() == 111 && qw7Var.C() == 114 && qw7Var.C() == 98 && qw7Var.C() == 105 && qw7Var.C() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw ParserException.createForMalformedContainer("expected characters 'vorbis'", null);
    }
}
