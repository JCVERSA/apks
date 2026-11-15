package z;

import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d5;
import androidx.compose.ui.graphics.p4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class m extends h {

    public static final a f76455e = new a(null);

    private static final int f76456f = c5.f4009a.a();

    private static final int f76457g = d5.f4121a.b();

    private final float f76458a;

    private final float f76459b;

    private final int f76460c;

    private final int f76461d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return m.f76456f;
        }

        private a() {
        }
    }

    public m(float f10, float f11, int i10, int i11, p4 p4Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, i10, i11, p4Var);
    }

    public final int b() {
        return this.f76460c;
    }

    public final int c() {
        return this.f76461d;
    }

    public final float d() {
        return this.f76459b;
    }

    public final p4 e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f76458a != mVar.f76458a || this.f76459b != mVar.f76459b || !c5.e(this.f76460c, mVar.f76460c) || !d5.e(this.f76461d, mVar.f76461d)) {
            return false;
        }
        mVar.getClass();
        return Intrinsics.c(null, null);
    }

    public final float f() {
        return this.f76458a;
    }

    public int hashCode() {
        return ((((((Float.floatToIntBits(this.f76458a) * 31) + Float.floatToIntBits(this.f76459b)) * 31) + c5.f(this.f76460c)) * 31) + d5.f(this.f76461d)) * 31;
    }

    public String toString() {
        return "Stroke(width=" + this.f76458a + ", miter=" + this.f76459b + ", cap=" + ((Object) c5.g(this.f76460c)) + ", join=" + ((Object) d5.g(this.f76461d)) + ", pathEffect=" + ((Object) null) + ')';
    }

    public m(float f10, float f11, int i10, int i11, p4 p4Var, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0.0f : f10, (i12 & 2) != 0 ? 4.0f : f11, (i12 & 4) != 0 ? f76456f : i10, (i12 & 8) != 0 ? f76457g : i11, (i12 & 16) != 0 ? null : p4Var, null);
    }

    private m(float f10, float f11, int i10, int i11, p4 p4Var) {
        super(null);
        this.f76458a = f10;
        this.f76459b = f11;
        this.f76460c = i10;
        this.f76461d = i11;
    }
}
