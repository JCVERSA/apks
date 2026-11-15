package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class l83 {
    public static final a e = new a(null);
    public static final long[] f = new long[0];
    public final kotlinx.serialization.descriptors.a a;
    public final s74 b;
    public long c;
    public final long[] d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public l83(kotlinx.serialization.descriptors.a aVar, s74 s74Var) {
        y45.j(aVar, "descriptor");
        y45.j(s74Var, "readIfAbsent");
        this.a = aVar;
        this.b = s74Var;
        int iE = aVar.e();
        if (iE <= 64) {
            this.c = iE != 64 ? (-1) << iE : 0L;
            this.d = f;
        } else {
            this.c = 0L;
            this.d = e(iE);
        }
    }

    public final void a(int i) {
        if (i < 64) {
            this.c |= 1 << i;
        } else {
            b(i);
        }
    }

    public final void b(int i) {
        int i2 = (i >>> 6) - 1;
        long[] jArr = this.d;
        jArr[i2] = jArr[i2] | (1 << (i & 63));
    }

    public final int c() {
        int length = this.d.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            int i3 = i2 * 64;
            long j = this.d[i];
            while (j != -1) {
                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j);
                j |= 1 << iNumberOfTrailingZeros;
                int i4 = iNumberOfTrailingZeros + i3;
                if (((Boolean) this.b.invoke(this.a, Integer.valueOf(i4))).booleanValue()) {
                    this.d[i] = j;
                    return i4;
                }
            }
            this.d[i] = j;
            i = i2;
        }
        return -1;
    }

    public final int d() {
        int iNumberOfTrailingZeros;
        int iE = this.a.e();
        do {
            long j = this.c;
            if (j == -1) {
                if (iE > 64) {
                    return c();
                }
                return -1;
            }
            iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j);
            this.c |= 1 << iNumberOfTrailingZeros;
        } while (!((Boolean) this.b.invoke(this.a, Integer.valueOf(iNumberOfTrailingZeros))).booleanValue());
        return iNumberOfTrailingZeros;
    }

    public final long[] e(int i) {
        long[] jArr = new long[(i - 1) >>> 6];
        if ((i & 63) != 0) {
            jArr[hi.c0(jArr)] = (-1) << i;
        }
        return jArr;
    }
}
