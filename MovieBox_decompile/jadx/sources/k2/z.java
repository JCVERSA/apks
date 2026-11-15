package k2;

import androidx.media3.common.ParserException;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

public abstract class z {

    public static final class a {

        public b0 f63721a;

        public a(b0 b0Var) {
            this.f63721a = b0Var;
        }
    }

    public static boolean a(s sVar) {
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(4);
        sVar.peekFully(j0Var.e(), 0, 4);
        return j0Var.J() == 1716281667;
    }

    public static int b(s sVar) throws ParserException {
        sVar.resetPeekPosition();
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(2);
        sVar.peekFully(j0Var.e(), 0, 2);
        int iP = j0Var.P();
        if ((iP >> 2) == 16382) {
            sVar.resetPeekPosition();
            return iP;
        }
        sVar.resetPeekPosition();
        throw ParserException.createForMalformedContainer("First frame does not start with sync code.", null);
    }

    public static androidx.media3.common.x c(s sVar, boolean z10) {
        androidx.media3.common.x xVarA = new g0().a(sVar, z10 ? null : y2.h.f76112b);
        if (xVarA == null || xVarA.e() == 0) {
            return null;
        }
        return xVarA;
    }

    public static androidx.media3.common.x d(s sVar, boolean z10) {
        sVar.resetPeekPosition();
        long peekPosition = sVar.getPeekPosition();
        androidx.media3.common.x xVarC = c(sVar, z10);
        sVar.skipFully((int) (sVar.getPeekPosition() - peekPosition));
        return xVarC;
    }

    public static boolean e(s sVar, a aVar) {
        sVar.resetPeekPosition();
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(new byte[4]);
        sVar.peekFully(i0Var.f10076a, 0, 4);
        boolean zG = i0Var.g();
        int iH = i0Var.h(7);
        int iH2 = i0Var.h(24) + 4;
        if (iH == 0) {
            aVar.f63721a = h(sVar);
        } else {
            b0 b0Var = aVar.f63721a;
            if (b0Var == null) {
                throw new IllegalArgumentException();
            }
            if (iH == 3) {
                aVar.f63721a = b0Var.b(g(sVar, iH2));
            } else if (iH == 4) {
                aVar.f63721a = b0Var.c(j(sVar, iH2));
            } else if (iH == 6) {
                androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(iH2);
                sVar.readFully(j0Var.e(), 0, iH2);
                j0Var.X(4);
                aVar.f63721a = b0Var.a(ImmutableList.of(w2.a.b(j0Var)));
            } else {
                sVar.skipFully(iH2);
            }
        }
        return zG;
    }

    public static b0.a f(androidx.media3.common.util.j0 j0Var) {
        j0Var.X(1);
        int iK = j0Var.K();
        long jF = ((long) j0Var.f()) + ((long) iK);
        int i10 = iK / 18;
        long[] jArrCopyOf = new long[i10];
        long[] jArrCopyOf2 = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            long jA = j0Var.A();
            if (jA == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i11);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i11);
                break;
            }
            jArrCopyOf[i11] = jA;
            jArrCopyOf2[i11] = j0Var.A();
            j0Var.X(2);
        }
        j0Var.X((int) (jF - ((long) j0Var.f())));
        return new b0.a(jArrCopyOf, jArrCopyOf2);
    }

    private static b0.a g(s sVar, int i10) {
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(i10);
        sVar.readFully(j0Var.e(), 0, i10);
        return f(j0Var);
    }

    private static b0 h(s sVar) {
        byte[] bArr = new byte[38];
        sVar.readFully(bArr, 0, 38);
        return new b0(bArr, 4);
    }

    public static void i(s sVar) throws ParserException {
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(4);
        sVar.readFully(j0Var.e(), 0, 4);
        if (j0Var.J() != 1716281667) {
            throw ParserException.createForMalformedContainer("Failed to read FLAC stream marker.", null);
        }
    }

    private static List j(s sVar, int i10) {
        androidx.media3.common.util.j0 j0Var = new androidx.media3.common.util.j0(i10);
        sVar.readFully(j0Var.e(), 0, i10);
        j0Var.X(4);
        return Arrays.asList(v0.k(j0Var, false, false).f63703b);
    }
}
