package androidx.compose.ui.graphics;

import android.graphics.ColorFilter;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class d1 extends v1 {

    private final long f4118c;

    private final int f4119d;

    public d1(long j10, int i10, ColorFilter colorFilter, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, i10, colorFilter);
    }

    public final int b() {
        return this.f4119d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d1)) {
            return false;
        }
        d1 d1Var = (d1) obj;
        return u1.m(this.f4118c, d1Var.f4118c) && c1.E(this.f4119d, d1Var.f4119d);
    }

    public int hashCode() {
        return (u1.s(this.f4118c) * 31) + c1.F(this.f4119d);
    }

    public String toString() {
        return "BlendModeColorFilter(color=" + ((Object) u1.t(this.f4118c)) + ", blendMode=" + ((Object) c1.G(this.f4119d)) + ')';
    }

    public d1(long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, i10);
    }

    private d1(long j10, int i10, ColorFilter colorFilter) {
        super(colorFilter);
        this.f4118c = j10;
        this.f4119d = i10;
    }

    private d1(long j10, int i10) {
        this(j10, i10, i0.a(j10, i10), null);
    }
}
