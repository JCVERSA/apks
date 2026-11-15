package defpackage;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;

public abstract class tx3 {

    public static final class a {
        public wx3 a;

        public a(wx3 wx3Var) {
            this.a = wx3Var;
        }
    }

    public static boolean a(pk3 pk3Var) {
        qw7 qw7Var = new qw7(4);
        pk3Var.peekFully(qw7Var.d(), 0, 4);
        return qw7Var.E() == 1716281667;
    }

    public static int b(pk3 pk3Var) throws ParserException {
        pk3Var.resetPeekPosition();
        qw7 qw7Var = new qw7(2);
        pk3Var.peekFully(qw7Var.d(), 0, 2);
        int I = qw7Var.I();
        if ((I >> 2) == 16382) {
            pk3Var.resetPeekPosition();
            return I;
        }
        pk3Var.resetPeekPosition();
        throw ParserException.createForMalformedContainer("First frame does not start with sync code.", null);
    }

    public static Metadata c(pk3 pk3Var, boolean z) {
        Metadata metadataA = new mx4().a(pk3Var, z ? null : lx4.b);
        if (metadataA == null || metadataA.length() == 0) {
            return null;
        }
        return metadataA;
    }

    public static Metadata d(pk3 pk3Var, boolean z) {
        pk3Var.resetPeekPosition();
        long peekPosition = pk3Var.getPeekPosition();
        Metadata metadataC = c(pk3Var, z);
        pk3Var.skipFully((int) (pk3Var.getPeekPosition() - peekPosition));
        return metadataC;
    }

    public static boolean e(pk3 pk3Var, a aVar) {
        pk3Var.resetPeekPosition();
        pw7 pw7Var = new pw7(new byte[4]);
        pk3Var.peekFully(pw7Var.a, 0, 4);
        boolean zG = pw7Var.g();
        int iH = pw7Var.h(7);
        int iH2 = pw7Var.h(24) + 4;
        if (iH == 0) {
            aVar.a = h(pk3Var);
        } else {
            wx3 wx3Var = aVar.a;
            if (wx3Var == null) {
                throw new IllegalArgumentException();
            }
            if (iH == 3) {
                aVar.a = wx3Var.b(f(pk3Var, iH2));
            } else if (iH == 4) {
                aVar.a = wx3Var.c(j(pk3Var, iH2));
            } else if (iH == 6) {
                qw7 qw7Var = new qw7(iH2);
                pk3Var.readFully(qw7Var.d(), 0, iH2);
                qw7Var.P(4);
                aVar.a = wx3Var.a(ImmutableList.of(PictureFrame.fromPictureBlock(qw7Var)));
            } else {
                pk3Var.skipFully(iH2);
            }
        }
        return zG;
    }

    public static wx3.a f(pk3 pk3Var, int i) {
        qw7 qw7Var = new qw7(i);
        pk3Var.readFully(qw7Var.d(), 0, i);
        return g(qw7Var);
    }

    public static wx3.a g(qw7 qw7Var) {
        qw7Var.P(1);
        int iF = qw7Var.F();
        long jE = ((long) qw7Var.e()) + ((long) iF);
        int i = iF / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            long jV = qw7Var.v();
            if (jV == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = jV;
            jArrCopyOf2[i2] = qw7Var.v();
            qw7Var.P(2);
        }
        qw7Var.P((int) (jE - ((long) qw7Var.e())));
        return new wx3.a(jArrCopyOf, jArrCopyOf2);
    }

    public static wx3 h(pk3 pk3Var) {
        byte[] bArr = new byte[38];
        pk3Var.readFully(bArr, 0, 38);
        return new wx3(bArr, 4);
    }

    public static void i(pk3 pk3Var) throws ParserException {
        qw7 qw7Var = new qw7(4);
        pk3Var.readFully(qw7Var.d(), 0, 4);
        if (qw7Var.E() != 1716281667) {
            throw ParserException.createForMalformedContainer("Failed to read FLAC stream marker.", null);
        }
    }

    public static List j(pk3 pk3Var, int i) {
        qw7 qw7Var = new qw7(i);
        pk3Var.readFully(qw7Var.d(), 0, i);
        qw7Var.P(4);
        return Arrays.asList(agc.j(qw7Var, false, false).b);
    }
}
