package androidx.compose.runtime.internal;

public final class f {

    private final int f3458a;

    private final long[] f3459b;

    private final Object[] f3460c;

    public f(int i10, long[] jArr, Object[] objArr) {
        this.f3458a = i10;
        this.f3459b = jArr;
        this.f3460c = objArr;
    }

    private final int a(long j10) {
        int i10 = this.f3458a - 1;
        if (i10 == -1) {
            return -1;
        }
        int i11 = 0;
        if (i10 == 0) {
            long j11 = this.f3459b[0];
            if (j11 == j10) {
                return 0;
            }
            return j11 > j10 ? -2 : -1;
        }
        while (i11 <= i10) {
            int i12 = (i11 + i10) >>> 1;
            long j12 = this.f3459b[i12] - j10;
            if (j12 < 0) {
                i11 = i12 + 1;
            } else {
                if (j12 <= 0) {
                    return i12;
                }
                i10 = i12 - 1;
            }
        }
        return -(i11 + 1);
    }

    public final Object b(long j10) {
        int iA = a(j10);
        if (iA >= 0) {
            return this.f3460c[iA];
        }
        return null;
    }

    public final f c(long j10, Object obj) {
        int i10 = this.f3458a;
        int i11 = 0;
        int i12 = 0;
        for (Object obj2 : this.f3460c) {
            if (obj2 != null) {
                i12++;
            }
        }
        int i13 = i12 + 1;
        long[] jArr = new long[i13];
        Object[] objArr = new Object[i13];
        if (i13 > 1) {
            int i14 = 0;
            while (i11 < i13 && i14 < i10) {
                long j11 = this.f3459b[i14];
                Object obj3 = this.f3460c[i14];
                if (j11 > j10) {
                    jArr[i11] = j10;
                    objArr[i11] = obj;
                    i11++;
                    break;
                }
                if (obj3 != null) {
                    jArr[i11] = j11;
                    objArr[i11] = obj3;
                    i11++;
                }
                i14++;
            }
            if (i14 == i10) {
                jArr[i12] = j10;
                objArr[i12] = obj;
            } else {
                while (i11 < i13) {
                    long j12 = this.f3459b[i14];
                    Object obj4 = this.f3460c[i14];
                    if (obj4 != null) {
                        jArr[i11] = j12;
                        objArr[i11] = obj4;
                        i11++;
                    }
                    i14++;
                }
            }
        } else {
            jArr[0] = j10;
            objArr[0] = obj;
        }
        return new f(i13, jArr, objArr);
    }

    public final boolean d(long j10, Object obj) {
        int iA = a(j10);
        if (iA < 0) {
            return false;
        }
        this.f3460c[iA] = obj;
        return true;
    }
}
