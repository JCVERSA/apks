package defpackage;

import androidx.media3.muxer.MuxerUtil;
import com.google.common.collect.k;
import java.util.Arrays;

public class wb7 extends k {
    public transient long[] i;
    public transient int j;
    public transient int k;

    public wb7(int i) {
        this(i, 1.0f);
    }

    public final int E(int i) {
        return (int) (this.i[i] >>> 32);
    }

    public final int F(int i) {
        return (int) this.i[i];
    }

    public final void G(int i, int i2) {
        long[] jArr = this.i;
        jArr[i] = (jArr[i] & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i2) << 32);
    }

    public final void H(int i, int i2) {
        if (i == -2) {
            this.j = i2;
        } else {
            I(i, i2);
        }
        if (i2 == -2) {
            this.k = i;
        } else {
            G(i2, i);
        }
    }

    public final void I(int i, int i2) {
        long[] jArr = this.i;
        jArr[i] = (jArr[i] & (-4294967296L)) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    @Override
    public void a() {
        super.a();
        this.j = -2;
        this.k = -2;
    }

    @Override
    public int e() {
        int i = this.j;
        if (i == -2) {
            return -1;
        }
        return i;
    }

    @Override
    public void n(int i, float f) {
        super.n(i, f);
        this.j = -2;
        this.k = -2;
        long[] jArr = new long[i];
        this.i = jArr;
        Arrays.fill(jArr, -1L);
    }

    @Override
    public void o(int i, Object obj, int i2, int i3) {
        super.o(i, obj, i2, i3);
        H(this.k, i);
        H(i, -2);
    }

    @Override
    public void p(int i) {
        int iC = C() - 1;
        H(E(i), F(i));
        if (i < iC) {
            H(E(iC), i);
            H(i, F(iC));
        }
        super.p(i);
    }

    @Override
    public int s(int i) {
        int iF = F(i);
        if (iF == -2) {
            return -1;
        }
        return iF;
    }

    @Override
    public int t(int i, int i2) {
        return i == C() ? i2 : i;
    }

    @Override
    public void y(int i) {
        super.y(i);
        long[] jArr = this.i;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i);
        this.i = jArrCopyOf;
        Arrays.fill(jArrCopyOf, length, i, -1L);
    }

    public wb7(int i, float f) {
        super(i, f);
    }
}
