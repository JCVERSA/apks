package androidx.compose.foundation;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e0 {

    private final long f2313a;

    private final androidx.compose.foundation.layout.t f2314b;

    public e0(long j10, androidx.compose.foundation.layout.t tVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, tVar);
    }

    public final androidx.compose.foundation.layout.t a() {
        return this.f2314b;
    }

    public final long b() {
        return this.f2313a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.c(e0.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.foundation.OverscrollConfiguration");
        e0 e0Var = (e0) obj;
        return u1.m(this.f2313a, e0Var.f2313a) && Intrinsics.c(this.f2314b, e0Var.f2314b);
    }

    public int hashCode() {
        return (u1.s(this.f2313a) * 31) + this.f2314b.hashCode();
    }

    public String toString() {
        return "OverscrollConfiguration(glowColor=" + ((Object) u1.t(this.f2313a)) + ", drawPadding=" + this.f2314b + ')';
    }

    private e0(long j10, androidx.compose.foundation.layout.t tVar) {
        this.f2313a = j10;
        this.f2314b = tVar;
    }

    public e0(long j10, androidx.compose.foundation.layout.t tVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? w1.d(4284900966L) : j10, (i10 & 2) != 0 ? PaddingKt.c(0.0f, 0.0f, 3, null) : tVar, null);
    }
}
