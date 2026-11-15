package androidx.compose.foundation.layout;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class z {

    private float f2577a;

    private boolean f2578b;

    private m f2579c;

    public z() {
        this(0.0f, false, null, null, 15, null);
    }

    public final m a() {
        return this.f2579c;
    }

    public final boolean b() {
        return this.f2578b;
    }

    public final p c() {
        return null;
    }

    public final float d() {
        return this.f2577a;
    }

    public final void e(m mVar) {
        this.f2579c = mVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return Float.compare(this.f2577a, zVar.f2577a) == 0 && this.f2578b == zVar.f2578b && Intrinsics.c(this.f2579c, zVar.f2579c) && Intrinsics.c(null, null);
    }

    public final void f(boolean z10) {
        this.f2578b = z10;
    }

    public final void g(float f10) {
        this.f2577a = f10;
    }

    public int hashCode() {
        int iFloatToIntBits = ((Float.floatToIntBits(this.f2577a) * 31) + androidx.compose.foundation.e.a(this.f2578b)) * 31;
        m mVar = this.f2579c;
        return (iFloatToIntBits + (mVar == null ? 0 : mVar.hashCode())) * 31;
    }

    public String toString() {
        return "RowColumnParentData(weight=" + this.f2577a + ", fill=" + this.f2578b + ", crossAxisAlignment=" + this.f2579c + ", flowLayoutData=" + ((Object) null) + ')';
    }

    public z(float f10, boolean z10, m mVar, p pVar) {
        this.f2577a = f10;
        this.f2578b = z10;
        this.f2579c = mVar;
    }

    public z(float f10, boolean z10, m mVar, p pVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0.0f : f10, (i10 & 2) != 0 ? true : z10, (i10 & 4) != 0 ? null : mVar, (i10 & 8) != 0 ? null : pVar);
    }
}
