package x9;

import com.google.android.exoplayer2.source.a0;
import com.google.android.exoplayer2.util.s;
import i9.e0;

public final class c implements g.b {

    private final int[] f75164a;

    private final a0[] f75165b;

    public c(int[] iArr, a0[] a0VarArr) {
        this.f75164a = iArr;
        this.f75165b = a0VarArr;
    }

    public int[] a() {
        int[] iArr = new int[this.f75165b.length];
        int i10 = 0;
        while (true) {
            a0[] a0VarArr = this.f75165b;
            if (i10 >= a0VarArr.length) {
                return iArr;
            }
            iArr[i10] = a0VarArr[i10].G();
            i10++;
        }
    }

    public void b(long j10) {
        for (a0 a0Var : this.f75165b) {
            a0Var.a0(j10);
        }
    }

    @Override
    public e0 track(int i10, int i11) {
        int i12 = 0;
        while (true) {
            int[] iArr = this.f75164a;
            if (i12 >= iArr.length) {
                s.c("BaseMediaChunkOutput", "Unmatched track of type: " + i11);
                return new i9.k();
            }
            if (i11 == iArr[i12]) {
                return this.f75165b[i12];
            }
            i12++;
        }
    }
}
