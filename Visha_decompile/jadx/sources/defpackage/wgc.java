package defpackage;

import android.util.Pair;
import androidx.media3.extractor.WavUtil;
import com.google.android.exoplayer2.ParserException;

public abstract class wgc {

    public static final class a {
        public final int a;
        public final long b;

        public a(int i, long j) {
            this.a = i;
            this.b = j;
        }

        public static a a(pk3 pk3Var, qw7 qw7Var) {
            pk3Var.peekFully(qw7Var.d(), 0, 8);
            qw7Var.O(0);
            return new a(qw7Var.n(), qw7Var.s());
        }
    }

    public static boolean a(pk3 pk3Var) {
        qw7 qw7Var = new qw7(8);
        int i = a.a(pk3Var, qw7Var).a;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        pk3Var.peekFully(qw7Var.d(), 0, 4);
        qw7Var.O(0);
        int iN = qw7Var.n();
        if (iN == 1463899717) {
            return true;
        }
        op5.c("WavHeaderReader", "Unsupported form type: " + iN);
        return false;
    }

    public static vgc b(pk3 pk3Var) throws ParserException {
        byte[] bArr;
        qw7 qw7Var = new qw7(16);
        a aVarD = d(WavUtil.FMT_FOURCC, pk3Var, qw7Var);
        zi.g(aVarD.b >= 16);
        pk3Var.peekFully(qw7Var.d(), 0, 16);
        qw7Var.O(0);
        int iU = qw7Var.u();
        int iU2 = qw7Var.u();
        int iT = qw7Var.t();
        int iT2 = qw7Var.t();
        int iU3 = qw7Var.u();
        int iU4 = qw7Var.u();
        int i = ((int) aVarD.b) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            pk3Var.peekFully(bArr2, 0, i);
            bArr = bArr2;
        } else {
            bArr = blb.f;
        }
        pk3Var.skipFully((int) (pk3Var.getPeekPosition() - pk3Var.getPosition()));
        return new vgc(iU, iU2, iT, iT2, iU3, iU4, bArr);
    }

    public static long c(pk3 pk3Var) {
        qw7 qw7Var = new qw7(8);
        a aVarA = a.a(pk3Var, qw7Var);
        if (aVarA.a != 1685272116) {
            pk3Var.resetPeekPosition();
            return -1L;
        }
        pk3Var.advancePeekPosition(8);
        qw7Var.O(0);
        pk3Var.peekFully(qw7Var.d(), 0, 8);
        long jQ = qw7Var.q();
        pk3Var.skipFully(((int) aVarA.b) + 8);
        return jQ;
    }

    public static a d(int i, pk3 pk3Var, qw7 qw7Var) throws ParserException {
        a aVarA = a.a(pk3Var, qw7Var);
        while (aVarA.a != i) {
            op5.i("WavHeaderReader", "Ignoring unknown WAV chunk: " + aVarA.a);
            long j = aVarA.b + 8;
            if (j > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Chunk is too large (~2GB+) to skip; id: " + aVarA.a);
            }
            pk3Var.skipFully((int) j);
            aVarA = a.a(pk3Var, qw7Var);
        }
        return aVarA;
    }

    public static Pair e(pk3 pk3Var) throws ParserException {
        pk3Var.resetPeekPosition();
        a aVarD = d(1684108385, pk3Var, new qw7(8));
        pk3Var.skipFully(8);
        return Pair.create(Long.valueOf(pk3Var.getPosition()), Long.valueOf(aVarD.b));
    }
}
