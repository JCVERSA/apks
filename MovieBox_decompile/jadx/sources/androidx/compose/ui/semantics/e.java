package androidx.compose.ui.semantics;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

public final class e {

    public static final a f5650d = new a(null);

    private static final e f5651e = new e(0.0f, RangesKt.b(0.0f, 0.0f), 0, 4, null);

    private final float f5652a;

    private final ClosedFloatingPointRange f5653b;

    private final int f5654c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a() {
            return e.f5651e;
        }

        private a() {
        }
    }

    public e(float f10, ClosedFloatingPointRange closedFloatingPointRange, int i10) {
        this.f5652a = f10;
        this.f5653b = closedFloatingPointRange;
        this.f5654c = i10;
        if (Float.isNaN(f10)) {
            throw new IllegalArgumentException("current must not be NaN");
        }
    }

    public final float b() {
        return this.f5652a;
    }

    public final ClosedFloatingPointRange c() {
        return this.f5653b;
    }

    public final int d() {
        return this.f5654c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f5652a == eVar.f5652a && Intrinsics.c(this.f5653b, eVar.f5653b) && this.f5654c == eVar.f5654c;
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.f5652a) * 31) + this.f5653b.hashCode()) * 31) + this.f5654c;
    }

    public String toString() {
        return "ProgressBarRangeInfo(current=" + this.f5652a + ", range=" + this.f5653b + ", steps=" + this.f5654c + ')';
    }

    public e(float f10, ClosedFloatingPointRange closedFloatingPointRange, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, closedFloatingPointRange, (i11 & 4) != 0 ? 0 : i10);
    }
}
