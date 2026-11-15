package s3;

import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import k2.s;

abstract class d {

    private static final class a {

        public final int f71519a;

        public final long f71520b;

        private a(int i10, long j10) {
            this.f71519a = i10;
            this.f71520b = j10;
        }

        public static a a(s sVar, j0 j0Var) {
            sVar.peekFully(j0Var.e(), 0, 8);
            j0Var.W(0);
            return new a(j0Var.q(), j0Var.x());
        }
    }

    public static boolean a(s sVar) {
        j0 j0Var = new j0(8);
        int i10 = a.a(sVar, j0Var).f71519a;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        sVar.peekFully(j0Var.e(), 0, 4);
        j0Var.W(0);
        int iQ = j0Var.q();
        if (iQ == 1463899717) {
            return true;
        }
        u.c("WavHeaderReader", "Unsupported form type: " + iQ);
        return false;
    }

    public static c b(s sVar) throws ParserException {
        byte[] bArr;
        j0 j0Var = new j0(16);
        a aVarD = d(1718449184, sVar, j0Var);
        androidx.media3.common.util.a.g(aVarD.f71520b >= 16);
        sVar.peekFully(j0Var.e(), 0, 16);
        j0Var.W(0);
        int iZ = j0Var.z();
        int iZ2 = j0Var.z();
        int iY = j0Var.y();
        int iY2 = j0Var.y();
        int iZ3 = j0Var.z();
        int iZ4 = j0Var.z();
        int i10 = ((int) aVarD.f71520b) - 16;
        if (i10 > 0) {
            byte[] bArr2 = new byte[i10];
            sVar.peekFully(bArr2, 0, i10);
            bArr = bArr2;
        } else {
            bArr = a1.f10043f;
        }
        sVar.skipFully((int) (sVar.getPeekPosition() - sVar.getPosition()));
        return new c(iZ, iZ2, iY, iY2, iZ3, iZ4, bArr);
    }

    public static long c(s sVar) {
        j0 j0Var = new j0(8);
        a aVarA = a.a(sVar, j0Var);
        if (aVarA.f71519a != 1685272116) {
            sVar.resetPeekPosition();
            return -1L;
        }
        sVar.advancePeekPosition(8);
        j0Var.W(0);
        sVar.peekFully(j0Var.e(), 0, 8);
        long jV = j0Var.v();
        sVar.skipFully(((int) aVarA.f71520b) + 8);
        return jV;
    }

    private static a d(int i10, s sVar, j0 j0Var) throws ParserException {
        a aVarA = a.a(sVar, j0Var);
        while (aVarA.f71519a != i10) {
            u.h("WavHeaderReader", "Ignoring unknown WAV chunk: " + aVarA.f71519a);
            long j10 = aVarA.f71520b;
            long j11 = 8 + j10;
            if (j10 % 2 != 0) {
                j11 = 9 + j10;
            }
            if (j11 > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Chunk is too large (~2GB+) to skip; id: " + aVarA.f71519a);
            }
            sVar.skipFully((int) j11);
            aVarA = a.a(sVar, j0Var);
        }
        return aVarA;
    }

    public static Pair e(s sVar) throws ParserException {
        sVar.resetPeekPosition();
        a aVarD = d(1684108385, sVar, new j0(8));
        sVar.skipFully(8);
        return Pair.create(Long.valueOf(sVar.getPosition()), Long.valueOf(aVarD.f71520b));
    }
}
