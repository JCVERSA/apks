package i9;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;

public abstract class s {

    public static final class a {

        public long f61970a;
    }

    private static boolean a(com.google.android.exoplayer2.util.d0 d0Var, v vVar, int i10) {
        int iJ = j(d0Var, i10);
        return iJ != -1 && iJ <= vVar.f61975b;
    }

    private static boolean b(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        return d0Var.D() == p0.u(d0Var.d(), i10, d0Var.e() - 1, 0);
    }

    private static boolean c(com.google.android.exoplayer2.util.d0 d0Var, v vVar, boolean z10, a aVar) {
        try {
            long jK = d0Var.K();
            if (!z10) {
                jK *= (long) vVar.f61975b;
            }
            aVar.f61970a = jK;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean d(com.google.android.exoplayer2.util.d0 d0Var, v vVar, int i10, a aVar) {
        int iE = d0Var.e();
        long jF = d0Var.F();
        long j10 = jF >>> 16;
        if (j10 != i10) {
            return false;
        }
        return g((int) ((jF >> 4) & 15), vVar) && f((int) ((jF >> 1) & 7), vVar) && !(((jF & 1) > 1L ? 1 : ((jF & 1) == 1L ? 0 : -1)) == 0) && c(d0Var, vVar, ((j10 & 1) > 1L ? 1 : ((j10 & 1) == 1L ? 0 : -1)) == 0, aVar) && a(d0Var, vVar, (int) ((jF >> 12) & 15)) && e(d0Var, vVar, (int) ((jF >> 8) & 15)) && b(d0Var, iE);
    }

    private static boolean e(com.google.android.exoplayer2.util.d0 d0Var, v vVar, int i10) {
        int i11 = vVar.f61978e;
        if (i10 == 0) {
            return true;
        }
        if (i10 <= 11) {
            return i10 == vVar.f61979f;
        }
        if (i10 == 12) {
            return d0Var.D() * 1000 == i11;
        }
        if (i10 > 14) {
            return false;
        }
        int iJ = d0Var.J();
        if (i10 == 14) {
            iJ *= 10;
        }
        return iJ == i11;
    }

    private static boolean f(int i10, v vVar) {
        return i10 == 0 || i10 == vVar.f61982i;
    }

    private static boolean g(int i10, v vVar) {
        if (i10 <= 7) {
            return i10 == vVar.f61980g - 1;
        }
        return i10 <= 10 && vVar.f61980g == 2;
    }

    public static boolean h(m mVar, v vVar, int i10, a aVar) {
        long peekPosition = mVar.getPeekPosition();
        byte[] bArr = new byte[2];
        mVar.peekFully(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i10) {
            mVar.resetPeekPosition();
            mVar.advancePeekPosition((int) (peekPosition - mVar.getPosition()));
            return false;
        }
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(16);
        System.arraycopy(bArr, 0, d0Var.d(), 0, 2);
        d0Var.O(o.c(mVar, d0Var.d(), 2, 14));
        mVar.resetPeekPosition();
        mVar.advancePeekPosition((int) (peekPosition - mVar.getPosition()));
        return d(d0Var, vVar, i10, aVar);
    }

    public static long i(m mVar, v vVar) throws ParserException {
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(1);
        byte[] bArr = new byte[1];
        mVar.peekFully(bArr, 0, 1);
        boolean z10 = (bArr[0] & 1) == 1;
        mVar.advancePeekPosition(2);
        int i10 = z10 ? 7 : 6;
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(i10);
        d0Var.O(o.c(mVar, d0Var.d(), 0, i10));
        mVar.resetPeekPosition();
        a aVar = new a();
        if (c(d0Var, vVar, z10, aVar)) {
            return aVar.f61970a;
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static int j(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        switch (i10) {
            case 1:
                return PsExtractor.AUDIO_STREAM;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i10 - 2);
            case 6:
                return d0Var.D() + 1;
            case 7:
                return d0Var.J() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i10 - 8);
            default:
                return -1;
        }
    }
}
