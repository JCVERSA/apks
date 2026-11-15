package com.google.android.exoplayer2.util;

import java.util.Arrays;

public final class k0 {

    private long[] f26827a;

    private Object[] f26828b;

    private int f26829c;

    private int f26830d;

    public k0() {
        this(10);
    }

    private void b(long j10, Object obj) {
        int i10 = this.f26829c;
        int i11 = this.f26830d;
        Object[] objArr = this.f26828b;
        int length = (i10 + i11) % objArr.length;
        this.f26827a[length] = j10;
        objArr[length] = obj;
        this.f26830d = i11 + 1;
    }

    private void d(long j10) {
        int i10 = this.f26830d;
        if (i10 > 0) {
            if (j10 <= this.f26827a[((this.f26829c + i10) - 1) % this.f26828b.length]) {
                c();
            }
        }
    }

    private void e() {
        int length = this.f26828b.length;
        if (this.f26830d < length) {
            return;
        }
        int i10 = length * 2;
        long[] jArr = new long[i10];
        Object[] objArrF = f(i10);
        int i11 = this.f26829c;
        int i12 = length - i11;
        System.arraycopy(this.f26827a, i11, jArr, 0, i12);
        System.arraycopy(this.f26828b, this.f26829c, objArrF, 0, i12);
        int i13 = this.f26829c;
        if (i13 > 0) {
            System.arraycopy(this.f26827a, 0, jArr, i12, i13);
            System.arraycopy(this.f26828b, 0, objArrF, i12, this.f26829c);
        }
        this.f26827a = jArr;
        this.f26828b = objArrF;
        this.f26829c = 0;
    }

    private static Object[] f(int i10) {
        return new Object[i10];
    }

    private Object h(long j10, boolean z10) {
        Object objK = null;
        long j11 = Long.MAX_VALUE;
        while (this.f26830d > 0) {
            long j12 = j10 - this.f26827a[this.f26829c];
            if (j12 < 0 && (z10 || (-j12) >= j11)) {
                break;
            }
            objK = k();
            j11 = j12;
        }
        return objK;
    }

    private Object k() {
        a.g(this.f26830d > 0);
        Object[] objArr = this.f26828b;
        int i10 = this.f26829c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        this.f26829c = (i10 + 1) % objArr.length;
        this.f26830d--;
        return obj;
    }

    public synchronized void a(long j10, Object obj) {
        d(j10);
        e();
        b(j10, obj);
    }

    public synchronized void c() {
        this.f26829c = 0;
        this.f26830d = 0;
        Arrays.fill(this.f26828b, (Object) null);
    }

    public synchronized Object g(long j10) {
        return h(j10, false);
    }

    public synchronized Object i() {
        return this.f26830d == 0 ? null : k();
    }

    public synchronized Object j(long j10) {
        return h(j10, true);
    }

    public synchronized int l() {
        return this.f26830d;
    }

    public k0(int i10) {
        this.f26827a = new long[i10];
        this.f26828b = f(i10);
    }
}
