package kotlinx.serialization.internal;

import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e0 {

    private static final a f65157e = new a(null);

    private static final long[] f65158f = new long[0];

    private final kotlinx.serialization.descriptors.f f65159a;

    private final Function2 f65160b;

    private long f65161c;

    private final long[] f65162d;

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public e0(kotlinx.serialization.descriptors.f descriptor, Function2 readIfAbsent) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(readIfAbsent, "readIfAbsent");
        this.f65159a = descriptor;
        this.f65160b = readIfAbsent;
        int iE = descriptor.e();
        if (iE <= 64) {
            this.f65161c = iE != 64 ? (-1) << iE : 0L;
            this.f65162d = f65158f;
        } else {
            this.f65161c = 0L;
            this.f65162d = e(iE);
        }
    }

    private final void b(int i10) {
        int i11 = (i10 >>> 6) - 1;
        long[] jArr = this.f65162d;
        jArr[i11] = jArr[i11] | (1 << (i10 & 63));
    }

    private final int c() {
        int length = this.f65162d.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            int i12 = i11 * 64;
            long j10 = this.f65162d[i10];
            while (j10 != -1) {
                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j10);
                j10 |= 1 << iNumberOfTrailingZeros;
                int i13 = iNumberOfTrailingZeros + i12;
                if (((Boolean) this.f65160b.invoke(this.f65159a, Integer.valueOf(i13))).booleanValue()) {
                    this.f65162d[i10] = j10;
                    return i13;
                }
            }
            this.f65162d[i10] = j10;
            i10 = i11;
        }
        return -1;
    }

    private final long[] e(int i10) {
        long[] jArr = new long[(i10 - 1) >>> 6];
        if ((i10 & 63) != 0) {
            jArr[ArraysKt.X(jArr)] = (-1) << i10;
        }
        return jArr;
    }

    public final void a(int i10) {
        if (i10 < 64) {
            this.f65161c |= 1 << i10;
        } else {
            b(i10);
        }
    }

    public final int d() {
        int iNumberOfTrailingZeros;
        int iE = this.f65159a.e();
        do {
            long j10 = this.f65161c;
            if (j10 == -1) {
                if (iE > 64) {
                    return c();
                }
                return -1;
            }
            iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j10);
            this.f65161c |= 1 << iNumberOfTrailingZeros;
        } while (!((Boolean) this.f65160b.invoke(this.f65159a, Integer.valueOf(iNumberOfTrailingZeros))).booleanValue());
        return iNumberOfTrailingZeros;
    }
}
