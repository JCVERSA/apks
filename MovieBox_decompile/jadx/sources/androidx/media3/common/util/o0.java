package androidx.media3.common.util;

import java.util.Arrays;

public final class o0 {

    private long[] f10120a;

    private Object[] f10121b;

    private int f10122c;

    private int f10123d;

    public o0() {
        this(10);
    }

    private void b(long j10, Object obj) {
        int i10 = this.f10122c;
        int i11 = this.f10123d;
        Object[] objArr = this.f10121b;
        int length = (i10 + i11) % objArr.length;
        this.f10120a[length] = j10;
        objArr[length] = obj;
        this.f10123d = i11 + 1;
    }

    private void d(long j10) {
        int i10 = this.f10123d;
        if (i10 > 0) {
            if (j10 <= this.f10120a[((this.f10122c + i10) - 1) % this.f10121b.length]) {
                c();
            }
        }
    }

    private void e() {
        int length = this.f10121b.length;
        if (this.f10123d < length) {
            return;
        }
        int i10 = length * 2;
        long[] jArr = new long[i10];
        Object[] objArrF = f(i10);
        int i11 = this.f10122c;
        int i12 = length - i11;
        System.arraycopy(this.f10120a, i11, jArr, 0, i12);
        System.arraycopy(this.f10121b, this.f10122c, objArrF, 0, i12);
        int i13 = this.f10122c;
        if (i13 > 0) {
            System.arraycopy(this.f10120a, 0, jArr, i12, i13);
            System.arraycopy(this.f10121b, 0, objArrF, i12, this.f10122c);
        }
        this.f10120a = jArr;
        this.f10121b = objArrF;
        this.f10122c = 0;
    }

    private static Object[] f(int i10) {
        return new Object[i10];
    }

    private Object h(long j10, boolean z10) {
        Object objK = null;
        long j11 = Long.MAX_VALUE;
        while (this.f10123d > 0) {
            long j12 = j10 - this.f10120a[this.f10122c];
            if (j12 < 0 && (z10 || (-j12) >= j11)) {
                break;
            }
            objK = k();
            j11 = j12;
        }
        return objK;
    }

    private Object k() {
        a.g(this.f10123d > 0);
        Object[] objArr = this.f10121b;
        int i10 = this.f10122c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f10122c = (i10 + 1) % objArr.length;
        this.f10123d--;
        return obj;
    }

    public synchronized void a(long j10, Object obj) {
        d(j10);
        e();
        b(j10, obj);
    }

    public synchronized void c() {
        this.f10122c = 0;
        this.f10123d = 0;
        Arrays.fill(this.f10121b, (Object) null);
    }

    public synchronized Object g(long j10) {
        return h(j10, false);
    }

    public synchronized Object i() {
        return this.f10123d == 0 ? null : k();
    }

    public synchronized Object j(long j10) {
        return h(j10, true);
    }

    public synchronized int l() {
        return this.f10123d;
    }

    public o0(int i10) {
        this.f10120a = new long[i10];
        this.f10121b = f(i10);
    }
}
