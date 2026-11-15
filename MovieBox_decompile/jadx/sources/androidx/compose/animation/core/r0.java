package androidx.compose.animation.core;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class r0 implements g {

    private final int f2181a;

    private final int f2182b;

    private final z f2183c;

    public r0() {
        this(0, 0, null, 7, null);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof r0)) {
            return false;
        }
        r0 r0Var = (r0) obj;
        return r0Var.f2181a == this.f2181a && r0Var.f2182b == this.f2182b && Intrinsics.c(r0Var.f2183c, this.f2183c);
    }

    @Override
    public f1 a(s0 s0Var) {
        return new f1(this.f2181a, this.f2182b, this.f2183c);
    }

    public int hashCode() {
        return (((this.f2181a * 31) + this.f2183c.hashCode()) * 31) + this.f2182b;
    }

    public r0(int i10, int i11, z zVar) {
        this.f2181a = i10;
        this.f2182b = i11;
        this.f2183c = zVar;
    }

    public r0(int i10, int i11, z zVar, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 300 : i10, (i12 & 2) != 0 ? 0 : i11, (i12 & 4) != 0 ? b0.c() : zVar);
    }
}
