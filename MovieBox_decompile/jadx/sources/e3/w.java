package e3;

import androidx.media3.common.util.a1;
import org.mvel2.ast.ASTNode;

public final class w {

    public final t f59437a;

    public final int f59438b;

    public final long[] f59439c;

    public final int[] f59440d;

    public final int f59441e;

    public final long[] f59442f;

    public final int[] f59443g;

    public final long f59444h;

    public w(t tVar, long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j10) {
        androidx.media3.common.util.a.a(iArr.length == jArr2.length);
        androidx.media3.common.util.a.a(jArr.length == jArr2.length);
        androidx.media3.common.util.a.a(iArr2.length == jArr2.length);
        this.f59437a = tVar;
        this.f59439c = jArr;
        this.f59440d = iArr;
        this.f59441e = i10;
        this.f59442f = jArr2;
        this.f59443g = iArr2;
        this.f59444h = j10;
        this.f59438b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | ASTNode.DISCARD;
        }
    }

    public int a(long j10) {
        for (int iH = a1.h(this.f59442f, j10, true, false); iH >= 0; iH--) {
            if ((this.f59443g[iH] & 1) != 0) {
                return iH;
            }
        }
        return -1;
    }

    public int b(long j10) {
        for (int iD = a1.d(this.f59442f, j10, true, false); iD < this.f59442f.length; iD++) {
            if ((this.f59443g[iD] & 1) != 0) {
                return iD;
            }
        }
        return -1;
    }
}
