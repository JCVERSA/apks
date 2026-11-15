package androidx.compose.animation.core;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class o0 implements g {

    private final float f2169a;

    private final float f2170b;

    private final Object f2171c;

    public o0() {
        this(0.0f, 0.0f, null, 7, null);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof o0)) {
            return false;
        }
        o0 o0Var = (o0) obj;
        return o0Var.f2169a == this.f2169a && o0Var.f2170b == this.f2170b && Intrinsics.c(o0Var.f2171c, this.f2171c);
    }

    @Override
    public e1 a(s0 s0Var) {
        return new e1(this.f2169a, this.f2170b, h.b(s0Var, this.f2171c));
    }

    public int hashCode() {
        Object obj = this.f2171c;
        return ((((obj != null ? obj.hashCode() : 0) * 31) + Float.floatToIntBits(this.f2169a)) * 31) + Float.floatToIntBits(this.f2170b);
    }

    public o0(float f10, float f11, Object obj) {
        this.f2169a = f10;
        this.f2170b = f11;
        this.f2171c = obj;
    }

    public o0(float f10, float f11, Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 1.0f : f10, (i10 & 2) != 0 ? 1500.0f : f11, (i10 & 4) != 0 ? null : obj);
    }
}
