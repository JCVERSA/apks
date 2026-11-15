package k2;

import android.util.Base64;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class v0 {

    public static final class a {

        public final String f63702a;

        public final String[] f63703b;

        public final int f63704c;

        public a(String str, String[] strArr, int i10) {
            this.f63702a = str;
            this.f63703b = strArr;
            this.f63704c = i10;
        }
    }

    public static final class b {

        public final boolean f63705a;

        public final int f63706b;

        public final int f63707c;

        public final int f63708d;

        public b(boolean z10, int i10, int i11, int i12) {
            this.f63705a = z10;
            this.f63706b = i10;
            this.f63707c = i11;
            this.f63708d = i12;
        }
    }

    public static final class c {

        public final int f63709a;

        public final int f63710b;

        public final int f63711c;

        public final int f63712d;

        public final int f63713e;

        public final int f63714f;

        public final int f63715g;

        public final int f63716h;

        public final boolean f63717i;

        public final byte[] f63718j;

        public c(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, byte[] bArr) {
            this.f63709a = i10;
            this.f63710b = i11;
            this.f63711c = i12;
            this.f63712d = i13;
            this.f63713e = i14;
            this.f63714f = i15;
            this.f63715g = i16;
            this.f63716h = i17;
            this.f63717i = z10;
            this.f63718j = bArr;
        }
    }

    public static int[] a(int i10) {
        if (i10 == 3) {
            return new int[]{0, 2, 1};
        }
        if (i10 == 5) {
            return new int[]{0, 2, 1, 3, 4};
        }
        if (i10 == 6) {
            return new int[]{0, 2, 1, 5, 3, 4};
        }
        if (i10 == 7) {
            return new int[]{0, 2, 1, 6, 5, 3, 4};
        }
        if (i10 != 8) {
            return null;
        }
        return new int[]{0, 2, 1, 7, 5, 6, 3, 4};
    }

    public static int b(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i11++;
            i10 >>>= 1;
        }
        return i11;
    }

    private static long c(long j10, long j11) {
        return (long) Math.floor(Math.pow(j10, 1.0d / j11));
    }

    public static androidx.media3.common.x d(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = (String) list.get(i10);
            String[] strArrP1 = a1.p1(str, UrlUtils.EQUAL_MARK);
            if (strArrP1.length != 2) {
                androidx.media3.common.util.u.h("VorbisUtil", "Failed to parse Vorbis comment: " + str);
            } else if (strArrP1[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(w2.a.b(new androidx.media3.common.util.j0(Base64.decode(strArrP1[1], 0))));
                } catch (RuntimeException e10) {
                    androidx.media3.common.util.u.i("VorbisUtil", "Failed to parse vorbis picture", e10);
                }
            } else {
                arrayList.add(new b3.a(strArrP1[0], strArrP1[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new androidx.media3.common.x(arrayList);
    }

    public static ImmutableList e(byte[] bArr) {
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(bArr);
        j0Var.X(1);
        int i10 = 0;
        while (j0Var.a() > 0 && j0Var.j() == 255) {
            i10 += 255;
            j0Var.X(1);
        }
        int iH = i10 + j0Var.H();
        int i11 = 0;
        while (j0Var.a() > 0 && j0Var.j() == 255) {
            i11 += 255;
            j0Var.X(1);
        }
        int iH2 = i11 + j0Var.H();
        byte[] bArr2 = new byte[iH];
        int iF = j0Var.f();
        System.arraycopy(bArr, iF, bArr2, 0, iH);
        int i12 = iF + iH + iH2;
        int length = bArr.length - i12;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr, i12, bArr3, 0, length);
        return ImmutableList.of(bArr2, bArr3);
    }

    private static void f(u0 u0Var) throws ParserException {
        int iD = u0Var.d(6) + 1;
        for (int i10 = 0; i10 < iD; i10++) {
            int iD2 = u0Var.d(16);
            if (iD2 == 0) {
                u0Var.e(8);
                u0Var.e(16);
                u0Var.e(16);
                u0Var.e(6);
                u0Var.e(8);
                int iD3 = u0Var.d(4) + 1;
                for (int i11 = 0; i11 < iD3; i11++) {
                    u0Var.e(8);
                }
            } else {
                if (iD2 != 1) {
                    throw ParserException.createForMalformedContainer("floor type greater than 1 not decodable: " + iD2, null);
                }
                int iD4 = u0Var.d(5);
                int[] iArr = new int[iD4];
                int i12 = -1;
                for (int i13 = 0; i13 < iD4; i13++) {
                    int iD5 = u0Var.d(4);
                    iArr[i13] = iD5;
                    if (iD5 > i12) {
                        i12 = iD5;
                    }
                }
                int i14 = i12 + 1;
                int[] iArr2 = new int[i14];
                for (int i15 = 0; i15 < i14; i15++) {
                    iArr2[i15] = u0Var.d(3) + 1;
                    int iD6 = u0Var.d(2);
                    if (iD6 > 0) {
                        u0Var.e(8);
                    }
                    for (int i16 = 0; i16 < (1 << iD6); i16++) {
                        u0Var.e(8);
                    }
                }
                u0Var.e(2);
                int iD7 = u0Var.d(4);
                int i17 = 0;
                int i18 = 0;
                for (int i19 = 0; i19 < iD4; i19++) {
                    i17 += iArr2[iArr[i19]];
                    while (i18 < i17) {
                        u0Var.e(iD7);
                        i18++;
                    }
                }
            }
        }
    }

    private static void g(int i10, u0 u0Var) throws ParserException {
        int iD = u0Var.d(6) + 1;
        for (int i11 = 0; i11 < iD; i11++) {
            int iD2 = u0Var.d(16);
            if (iD2 != 0) {
                androidx.media3.common.util.u.c("VorbisUtil", "mapping type other than 0 not supported: " + iD2);
            } else {
                int iD3 = u0Var.c() ? u0Var.d(4) + 1 : 1;
                if (u0Var.c()) {
                    int iD4 = u0Var.d(8) + 1;
                    for (int i12 = 0; i12 < iD4; i12++) {
                        int i13 = i10 - 1;
                        u0Var.e(b(i13));
                        u0Var.e(b(i13));
                    }
                }
                if (u0Var.d(2) != 0) {
                    throw ParserException.createForMalformedContainer("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (iD3 > 1) {
                    for (int i14 = 0; i14 < i10; i14++) {
                        u0Var.e(4);
                    }
                }
                for (int i15 = 0; i15 < iD3; i15++) {
                    u0Var.e(8);
                    u0Var.e(8);
                    u0Var.e(8);
                }
            }
        }
    }

    private static b[] h(u0 u0Var) {
        int iD = u0Var.d(6) + 1;
        b[] bVarArr = new b[iD];
        for (int i10 = 0; i10 < iD; i10++) {
            bVarArr[i10] = new b(u0Var.c(), u0Var.d(16), u0Var.d(16), u0Var.d(8));
        }
        return bVarArr;
    }

    private static void i(u0 u0Var) throws ParserException {
        int iD = u0Var.d(6) + 1;
        for (int i10 = 0; i10 < iD; i10++) {
            if (u0Var.d(16) > 2) {
                throw ParserException.createForMalformedContainer("residueType greater than 2 is not decodable", null);
            }
            u0Var.e(24);
            u0Var.e(24);
            u0Var.e(24);
            int iD2 = u0Var.d(6) + 1;
            u0Var.e(8);
            int[] iArr = new int[iD2];
            for (int i11 = 0; i11 < iD2; i11++) {
                iArr[i11] = ((u0Var.c() ? u0Var.d(5) : 0) * 8) + u0Var.d(3);
            }
            for (int i12 = 0; i12 < iD2; i12++) {
                for (int i13 = 0; i13 < 8; i13++) {
                    if ((iArr[i12] & (1 << i13)) != 0) {
                        u0Var.e(8);
                    }
                }
            }
        }
    }

    public static a j(androidx.media3.common.util.j0 j0Var) {
        return k(j0Var, true, true);
    }

    public static a k(androidx.media3.common.util.j0 j0Var, boolean z10, boolean z11) throws ParserException {
        if (z10) {
            o(3, j0Var, false);
        }
        String strE = j0Var.E((int) j0Var.x());
        int length = strE.length();
        long jX = j0Var.x();
        String[] strArr = new String[(int) jX];
        int length2 = length + 15;
        for (int i10 = 0; i10 < jX; i10++) {
            String strE2 = j0Var.E((int) j0Var.x());
            strArr[i10] = strE2;
            length2 = length2 + 4 + strE2.length();
        }
        if (z11 && (j0Var.H() & 1) == 0) {
            throw ParserException.createForMalformedContainer("framing bit expected to be set", null);
        }
        return new a(strE, strArr, length2 + 1);
    }

    public static c l(androidx.media3.common.util.j0 j0Var) throws ParserException {
        o(1, j0Var, false);
        int iY = j0Var.y();
        int iH = j0Var.H();
        int iY2 = j0Var.y();
        int iU = j0Var.u();
        if (iU <= 0) {
            iU = -1;
        }
        int iU2 = j0Var.u();
        if (iU2 <= 0) {
            iU2 = -1;
        }
        int iU3 = j0Var.u();
        if (iU3 <= 0) {
            iU3 = -1;
        }
        int iH2 = j0Var.H();
        return new c(iY, iH, iY2, iU, iU2, iU3, (int) Math.pow(2.0d, iH2 & 15), (int) Math.pow(2.0d, (iH2 & 240) >> 4), (j0Var.H() & 1) > 0, Arrays.copyOf(j0Var.e(), j0Var.g()));
    }

    public static b[] m(androidx.media3.common.util.j0 j0Var, int i10) throws ParserException {
        o(5, j0Var, false);
        int iH = j0Var.H() + 1;
        u0 u0Var = new u0(j0Var.e());
        u0Var.e(j0Var.f() * 8);
        for (int i11 = 0; i11 < iH; i11++) {
            n(u0Var);
        }
        int iD = u0Var.d(6) + 1;
        for (int i12 = 0; i12 < iD; i12++) {
            if (u0Var.d(16) != 0) {
                throw ParserException.createForMalformedContainer("placeholder of time domain transforms not zeroed out", null);
            }
        }
        f(u0Var);
        i(u0Var);
        g(i10, u0Var);
        b[] bVarArrH = h(u0Var);
        if (u0Var.c()) {
            return bVarArrH;
        }
        throw ParserException.createForMalformedContainer("framing bit after modes not set as expected", null);
    }

    private static void n(u0 u0Var) throws ParserException {
        long jC;
        if (u0Var.d(24) != 5653314) {
            throw ParserException.createForMalformedContainer("expected code book to start with [0x56, 0x43, 0x42] at " + u0Var.b(), null);
        }
        int iD = u0Var.d(16);
        int iD2 = u0Var.d(24);
        int iD3 = 0;
        if (u0Var.c()) {
            u0Var.e(5);
            while (iD3 < iD2) {
                iD3 += u0Var.d(b(iD2 - iD3));
            }
        } else {
            boolean zC = u0Var.c();
            while (iD3 < iD2) {
                if (!zC) {
                    u0Var.e(5);
                } else if (u0Var.c()) {
                    u0Var.e(5);
                }
                iD3++;
            }
        }
        int iD4 = u0Var.d(4);
        if (iD4 > 2) {
            throw ParserException.createForMalformedContainer("lookup type greater than 2 not decodable: " + iD4, null);
        }
        if (iD4 == 1 || iD4 == 2) {
            u0Var.e(32);
            u0Var.e(32);
            int iD5 = u0Var.d(4) + 1;
            u0Var.e(1);
            if (iD4 == 1) {
                jC = iD != 0 ? c(iD2, iD) : 0L;
            } else {
                jC = ((long) iD) * ((long) iD2);
            }
            u0Var.e((int) (jC * ((long) iD5)));
        }
    }

    public static boolean o(int i10, androidx.media3.common.util.j0 j0Var, boolean z10) throws ParserException {
        if (j0Var.a() < 7) {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("too short header: " + j0Var.a(), null);
        }
        if (j0Var.H() != i10) {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("expected header type " + Integer.toHexString(i10), null);
        }
        if (j0Var.H() == 118 && j0Var.H() == 111 && j0Var.H() == 114 && j0Var.H() == 98 && j0Var.H() == 105 && j0Var.H() == 115) {
            return true;
        }
        if (z10) {
            return false;
        }
        throw ParserException.createForMalformedContainer("expected characters 'vorbis'", null);
    }
}
