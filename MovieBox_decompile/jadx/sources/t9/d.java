package t9;

import android.util.Pair;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import i9.m;

abstract class d {

    private static final class a {

        public final int f72603a;

        public final long f72604b;

        private a(int i10, long j10) {
            this.f72603a = i10;
            this.f72604b = j10;
        }

        public static a a(m mVar, d0 d0Var) {
            mVar.peekFully(d0Var.d(), 0, 8);
            d0Var.P(0);
            return new a(d0Var.n(), d0Var.t());
        }
    }

    public static boolean a(m mVar) {
        d0 d0Var = new d0(8);
        int i10 = a.a(mVar, d0Var).f72603a;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        mVar.peekFully(d0Var.d(), 0, 4);
        d0Var.P(0);
        int iN = d0Var.n();
        if (iN == 1463899717) {
            return true;
        }
        s.c("WavHeaderReader", "Unsupported form type: " + iN);
        return false;
    }

    public static c b(m mVar) throws ParserException {
        byte[] bArr;
        d0 d0Var = new d0(16);
        a aVarD = d(1718449184, mVar, d0Var);
        com.google.android.exoplayer2.util.a.g(aVarD.f72604b >= 16);
        mVar.peekFully(d0Var.d(), 0, 16);
        d0Var.P(0);
        int iV = d0Var.v();
        int iV2 = d0Var.v();
        int iU = d0Var.u();
        int iU2 = d0Var.u();
        int iV3 = d0Var.v();
        int iV4 = d0Var.v();
        int i10 = ((int) aVarD.f72604b) - 16;
        if (i10 > 0) {
            byte[] bArr2 = new byte[i10];
            mVar.peekFully(bArr2, 0, i10);
            bArr = bArr2;
        } else {
            bArr = p0.f26859f;
        }
        mVar.skipFully((int) (mVar.getPeekPosition() - mVar.getPosition()));
        return new c(iV, iV2, iU, iU2, iV3, iV4, bArr);
    }

    public static long c(m mVar) {
        d0 d0Var = new d0(8);
        a aVarA = a.a(mVar, d0Var);
        if (aVarA.f72603a != 1685272116) {
            mVar.resetPeekPosition();
            return -1L;
        }
        mVar.advancePeekPosition(8);
        d0Var.P(0);
        mVar.peekFully(d0Var.d(), 0, 8);
        long jR = d0Var.r();
        mVar.skipFully(((int) aVarA.f72604b) + 8);
        return jR;
    }

    private static a d(int i10, m mVar, d0 d0Var) throws ParserException {
        a aVarA = a.a(mVar, d0Var);
        while (aVarA.f72603a != i10) {
            s.i("WavHeaderReader", "Ignoring unknown WAV chunk: " + aVarA.f72603a);
            long j10 = aVarA.f72604b + 8;
            if (j10 > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Chunk is too large (~2GB+) to skip; id: " + aVarA.f72603a);
            }
            mVar.skipFully((int) j10);
            aVarA = a.a(mVar, d0Var);
        }
        return aVarA;
    }

    public static Pair e(m mVar) throws ParserException {
        mVar.resetPeekPosition();
        a aVarD = d(1684108385, mVar, new d0(8));
        mVar.skipFully(8);
        return Pair.create(Long.valueOf(mVar.getPosition()), Long.valueOf(aVarD.f72604b));
    }
}
