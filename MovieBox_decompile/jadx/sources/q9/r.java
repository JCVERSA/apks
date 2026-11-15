package q9;

import com.google.android.exoplayer2.util.p0;
import org.mvel2.ast.ASTNode;

final class r {

    public final o f69569a;

    public final int f69570b;

    public final long[] f69571c;

    public final int[] f69572d;

    public final int f69573e;

    public final long[] f69574f;

    public final int[] f69575g;

    public final long f69576h;

    public r(o oVar, long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j10) {
        com.google.android.exoplayer2.util.a.a(iArr.length == jArr2.length);
        com.google.android.exoplayer2.util.a.a(jArr.length == jArr2.length);
        com.google.android.exoplayer2.util.a.a(iArr2.length == jArr2.length);
        this.f69569a = oVar;
        this.f69571c = jArr;
        this.f69572d = iArr;
        this.f69573e = i10;
        this.f69574f = jArr2;
        this.f69575g = iArr2;
        this.f69576h = j10;
        this.f69570b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | ASTNode.DISCARD;
        }
    }

    public int a(long j10) {
        for (int i10 = p0.i(this.f69574f, j10, true, false); i10 >= 0; i10--) {
            if ((this.f69575g[i10] & 1) != 0) {
                return i10;
            }
        }
        return -1;
    }

    public int b(long j10) {
        for (int iE = p0.e(this.f69574f, j10, true, false); iE < this.f69574f.length; iE++) {
            if ((this.f69575g[iE] & 1) != 0) {
                return iE;
            }
        }
        return -1;
    }
}
