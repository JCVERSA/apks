package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.a3;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.r2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

public final class u implements a3 {

    private static final a f2763e = new a(null);

    private final int f2764a;

    private final int f2765b;

    private final i1 f2766c;

    private int f2767d;

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IntRange b(int i10, int i11, int i12) {
            int i13 = (i10 / i11) * i11;
            return RangesKt.s(Math.max(i13 - i12, 0), i13 + i11 + i12);
        }

        private a() {
        }
    }

    public u(int i10, int i11, int i12) {
        this.f2764a = i11;
        this.f2765b = i12;
        this.f2766c = r2.e(f2763e.b(i10, i11, i12), r2.j());
        this.f2767d = i10;
    }

    private void d(IntRange intRange) {
        this.f2766c.setValue(intRange);
    }

    @Override
    public IntRange getValue() {
        return (IntRange) this.f2766c.getValue();
    }

    public final void e(int i10) {
        if (i10 != this.f2767d) {
            this.f2767d = i10;
            d(f2763e.b(i10, this.f2764a, this.f2765b));
        }
    }
}
