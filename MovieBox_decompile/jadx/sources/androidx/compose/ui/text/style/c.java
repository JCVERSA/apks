package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class c implements l {

    private final long f6052b;

    public c(long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10);
    }

    @Override
    public long a() {
        return this.f6052b;
    }

    @Override
    public l b(Function0 function0) {
        return TextForegroundStyle$CC.b(this, function0);
    }

    @Override
    public l c(l lVar) {
        return TextForegroundStyle$CC.a(this, lVar);
    }

    @Override
    public j1 d() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && u1.m(this.f6052b, ((c) obj).f6052b);
    }

    @Override
    public float getAlpha() {
        return u1.n(a());
    }

    public int hashCode() {
        return u1.s(this.f6052b);
    }

    public String toString() {
        return "ColorStyle(value=" + ((Object) u1.t(this.f6052b)) + ')';
    }

    private c(long j10) {
        this.f6052b = j10;
        if (j10 == 16) {
            throw new IllegalArgumentException("ColorStyle value must be specified, use TextForegroundStyle.Unspecified instead.");
        }
    }
}
