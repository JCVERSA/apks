package d3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.i0;
import org.apache.tools.zip.UnixStat;

final class i {

    public final i0.a f58884a;

    public final long f58885b;

    public final long f58886c;

    public final int f58887d;

    public final int f58888e;

    public final long[] f58889f;

    private i(i0.a aVar, long j10, long j11, long[] jArr, int i10, int i11) {
        this.f58884a = new i0.a(aVar);
        this.f58885b = j10;
        this.f58886c = j11;
        this.f58889f = jArr;
        this.f58887d = i10;
        this.f58888e = i11;
    }

    public static i b(i0.a aVar, j0 j0Var) {
        long[] jArr;
        int i10;
        int i11;
        int iQ = j0Var.q();
        int iL = (iQ & 1) != 0 ? j0Var.L() : -1;
        long J = (iQ & 2) != 0 ? j0Var.J() : -1L;
        if ((iQ & 4) == 4) {
            long[] jArr2 = new long[100];
            for (int i12 = 0; i12 < 100; i12++) {
                jArr2[i12] = j0Var.H();
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        if ((iQ & 8) != 0) {
            j0Var.X(4);
        }
        if (j0Var.a() >= 24) {
            j0Var.X(21);
            int iK = j0Var.K();
            i11 = iK & UnixStat.PERM_MASK;
            i10 = (16773120 & iK) >> 12;
        } else {
            i10 = -1;
            i11 = -1;
        }
        return new i(aVar, iL, J, jArr, i10, i11);
    }

    public long a() {
        long j10 = this.f58885b;
        if (j10 == -1 || j10 == 0) {
            return C.TIME_UNSET;
        }
        i0.a aVar = this.f58884a;
        return a1.d1((j10 * ((long) aVar.f63619g)) - 1, aVar.f63616d);
    }
}
