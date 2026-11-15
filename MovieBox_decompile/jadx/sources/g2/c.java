package g2;

import androidx.media3.common.util.u;
import androidx.media3.exoplayer.source.e0;
import k2.s0;

public final class c implements f.b {

    private final int[] f60572a;

    private final e0[] f60573b;

    public c(int[] iArr, e0[] e0VarArr) {
        this.f60572a = iArr;
        this.f60573b = e0VarArr;
    }

    public int[] a() {
        int[] iArr = new int[this.f60573b.length];
        int i10 = 0;
        while (true) {
            e0[] e0VarArr = this.f60573b;
            if (i10 >= e0VarArr.length) {
                return iArr;
            }
            iArr[i10] = e0VarArr[i10].J();
            i10++;
        }
    }

    public void b(long j10) {
        for (e0 e0Var : this.f60573b) {
            e0Var.d0(j10);
        }
    }

    @Override
    public s0 track(int i10, int i11) {
        int i12 = 0;
        while (true) {
            int[] iArr = this.f60572a;
            if (i12 >= iArr.length) {
                u.c("BaseMediaChunkOutput", "Unmatched track of type: " + i11);
                return new k2.n();
            }
            if (i11 == iArr[i12]) {
                return this.f60573b[i12];
            }
            i12++;
        }
    }
}
