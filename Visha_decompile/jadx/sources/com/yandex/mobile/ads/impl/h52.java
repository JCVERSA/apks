package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.Arrays;

public final class h52<V> {
    private long[] a;
    private V[] b;
    private int c;
    private int d;

    public h52() {
        this(0);
    }

    private static Object[] b() {
        return new Object[10];
    }

    public final synchronized void a(Object obj, long j) {
        try {
            int i = this.d;
            if (i > 0) {
                if (j <= this.a[((this.c + i) - 1) % this.b.length]) {
                    a();
                }
            }
            int length = this.b.length;
            if (this.d >= length) {
                int i2 = length * 2;
                long[] jArr = new long[i2];
                V[] vArr = (V[]) new Object[i2];
                int i3 = this.c;
                int i4 = length - i3;
                System.arraycopy(this.a, i3, jArr, 0, i4);
                System.arraycopy(this.b, this.c, vArr, 0, i4);
                int i5 = this.c;
                if (i5 > 0) {
                    System.arraycopy(this.a, 0, jArr, i4, i5);
                    System.arraycopy(this.b, 0, vArr, i4, this.c);
                }
                this.a = jArr;
                this.b = vArr;
                this.c = 0;
            }
            int i6 = this.c;
            int i7 = this.d;
            Object[] objArr = (V[]) this.b;
            int length2 = (i6 + i7) % objArr.length;
            this.a[length2] = j;
            objArr[length2] = obj;
            this.d = i7 + 1;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Nullable
    public final synchronized V c() {
        V v;
        int i = this.d;
        v = null;
        if (i != 0) {
            if (i <= 0) {
                throw new IllegalStateException();
            }
            V[] vArr = this.b;
            int i2 = this.c;
            V v2 = vArr[i2];
            vArr[i2] = null;
            this.c = (i2 + 1) % vArr.length;
            this.d = i - 1;
            v = v2;
        }
        return v;
    }

    public final synchronized int d() {
        return this.d;
    }

    public h52(int i) {
        this.a = new long[10];
        this.b = (V[]) b();
    }

    @Nullable
    public final synchronized V b(long j) {
        V v;
        v = null;
        while (true) {
            try {
                int i = this.d;
                if (i <= 0) {
                    break;
                }
                long[] jArr = this.a;
                int i2 = this.c;
                if (j - jArr[i2] < 0) {
                    break;
                }
                if (i <= 0) {
                    throw new IllegalStateException();
                }
                V[] vArr = this.b;
                V v2 = vArr[i2];
                vArr[i2] = null;
                this.c = (i2 + 1) % vArr.length;
                this.d = i - 1;
                v = v2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return v;
    }

    public final synchronized void a() {
        this.c = 0;
        this.d = 0;
        Arrays.fill(this.b, (Object) null);
    }

    @Nullable
    public final synchronized V a(long j) {
        V v;
        long j2 = Long.MAX_VALUE;
        v = null;
        while (true) {
            try {
                int i = this.d;
                if (i <= 0) {
                    break;
                }
                long[] jArr = this.a;
                int i2 = this.c;
                long j3 = j - jArr[i2];
                if (j3 < 0 && (-j3) >= j2) {
                    break;
                }
                if (i > 0) {
                    V[] vArr = this.b;
                    v = vArr[i2];
                    vArr[i2] = null;
                    this.c = (i2 + 1) % vArr.length;
                    this.d = i - 1;
                    j2 = j3;
                } else {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return v;
    }
}
