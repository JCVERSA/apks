package defpackage;

import com.google.android.exoplayer2.ParserException;

public abstract class sx3 {

    public static final class a {
        public long a;
    }

    public static boolean a(qw7 qw7Var, wx3 wx3Var, int i) {
        int iJ = j(qw7Var, i);
        return iJ != -1 && iJ <= wx3Var.b;
    }

    public static boolean b(qw7 qw7Var, int i) {
        return qw7Var.C() == blb.s(qw7Var.d(), i, qw7Var.e() - 1, 0);
    }

    public static boolean c(qw7 qw7Var, wx3 wx3Var, boolean z, a aVar) {
        try {
            long J = qw7Var.J();
            if (!z) {
                J *= (long) wx3Var.b;
            }
            aVar.a = J;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean d(qw7 qw7Var, wx3 wx3Var, int i, a aVar) {
        int iE = qw7Var.e();
        long jE = qw7Var.E();
        long j = jE >>> 16;
        if (j != i) {
            return false;
        }
        return g((int) ((jE >> 4) & 15), wx3Var) && f((int) ((jE >> 1) & 7), wx3Var) && !(((jE & 1) > 1L ? 1 : ((jE & 1) == 1L ? 0 : -1)) == 0) && c(qw7Var, wx3Var, ((j & 1) > 1L ? 1 : ((j & 1) == 1L ? 0 : -1)) == 0, aVar) && a(qw7Var, wx3Var, (int) ((jE >> 12) & 15)) && e(qw7Var, wx3Var, (int) ((jE >> 8) & 15)) && b(qw7Var, iE);
    }

    public static boolean e(qw7 qw7Var, wx3 wx3Var, int i) {
        int i2 = wx3Var.e;
        if (i == 0) {
            return true;
        }
        if (i <= 11) {
            return i == wx3Var.f;
        }
        if (i == 12) {
            return qw7Var.C() * 1000 == i2;
        }
        if (i > 14) {
            return false;
        }
        int I = qw7Var.I();
        if (i == 14) {
            I *= 10;
        }
        return I == i2;
    }

    public static boolean f(int i, wx3 wx3Var) {
        return i == 0 || i == wx3Var.i;
    }

    public static boolean g(int i, wx3 wx3Var) {
        if (i <= 7) {
            return i == wx3Var.g - 1;
        }
        return i <= 10 && wx3Var.g == 2;
    }

    public static boolean h(pk3 pk3Var, wx3 wx3Var, int i, a aVar) {
        long peekPosition = pk3Var.getPeekPosition();
        byte[] bArr = new byte[2];
        pk3Var.peekFully(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
            pk3Var.resetPeekPosition();
            pk3Var.advancePeekPosition((int) (peekPosition - pk3Var.getPosition()));
            return false;
        }
        qw7 qw7Var = new qw7(16);
        System.arraycopy(bArr, 0, qw7Var.d(), 0, 2);
        qw7Var.N(rk3.c(pk3Var, qw7Var.d(), 2, 14));
        pk3Var.resetPeekPosition();
        pk3Var.advancePeekPosition((int) (peekPosition - pk3Var.getPosition()));
        return d(qw7Var, wx3Var, i, aVar);
    }

    public static long i(pk3 pk3Var, wx3 wx3Var) throws ParserException {
        pk3Var.resetPeekPosition();
        pk3Var.advancePeekPosition(1);
        byte[] bArr = new byte[1];
        pk3Var.peekFully(bArr, 0, 1);
        boolean z = (bArr[0] & 1) == 1;
        pk3Var.advancePeekPosition(2);
        int i = z ? 7 : 6;
        qw7 qw7Var = new qw7(i);
        qw7Var.N(rk3.c(pk3Var, qw7Var.d(), 0, i));
        pk3Var.resetPeekPosition();
        a aVar = new a();
        if (c(qw7Var, wx3Var, z, aVar)) {
            return aVar.a;
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static int j(qw7 qw7Var, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return qw7Var.C() + 1;
            case 7:
                return qw7Var.I() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }
}
