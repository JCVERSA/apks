package e0;

import androidx.compose.ui.input.pointer.v;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private int f59226a;

    private long[] f59227b = new long[2];

    public final boolean a(long j10) {
        if (d(j10)) {
            return false;
        }
        k(this.f59226a, j10);
        return true;
    }

    public final boolean b(long j10) {
        return a(j10);
    }

    public final void c() {
        this.f59226a = 0;
    }

    public final boolean d(long j10) {
        int i10 = this.f59226a;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f59227b[i11] == j10) {
                return true;
            }
        }
        return false;
    }

    public final long e(int i10) {
        return v.b(this.f59227b[i10]);
    }

    public final int f() {
        return this.f59226a;
    }

    public final boolean g() {
        return this.f59226a == 0;
    }

    public final boolean h(long j10) {
        int i10 = this.f59226a;
        for (int i11 = 0; i11 < i10; i11++) {
            if (j10 == e(i11)) {
                j(i11);
                return true;
            }
        }
        return false;
    }

    public final boolean i(long j10) {
        return h(j10);
    }

    public final boolean j(int i10) {
        int i11 = this.f59226a;
        if (i10 >= i11) {
            return false;
        }
        int i12 = i11 - 1;
        while (i10 < i12) {
            long[] jArr = this.f59227b;
            int i13 = i10 + 1;
            jArr[i10] = jArr[i13];
            i10 = i13;
        }
        this.f59226a--;
        return true;
    }

    public final void k(int i10, long j10) {
        long[] jArr = this.f59227b;
        if (i10 >= jArr.length) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, Math.max(i10 + 1, jArr.length * 2));
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f59227b = jArrCopyOf;
        }
        this.f59227b[i10] = j10;
        if (i10 >= this.f59226a) {
            this.f59226a = i10 + 1;
        }
    }
}
