package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a0 {

    private final x f5770a;

    private final x f5771b;

    private final x f5772c;

    private final x f5773d;

    public a0() {
        this(null, null, null, null, 15, null);
    }

    public final x a() {
        return this.f5771b;
    }

    public final x b() {
        return this.f5772c;
    }

    public final x c() {
        return this.f5773d;
    }

    public final x d() {
        return this.f5770a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return Intrinsics.c(this.f5770a, a0Var.f5770a) && Intrinsics.c(this.f5771b, a0Var.f5771b) && Intrinsics.c(this.f5772c, a0Var.f5772c) && Intrinsics.c(this.f5773d, a0Var.f5773d);
    }

    public int hashCode() {
        x xVar = this.f5770a;
        int iHashCode = (xVar != null ? xVar.hashCode() : 0) * 31;
        x xVar2 = this.f5771b;
        int iHashCode2 = (iHashCode + (xVar2 != null ? xVar2.hashCode() : 0)) * 31;
        x xVar3 = this.f5772c;
        int iHashCode3 = (iHashCode2 + (xVar3 != null ? xVar3.hashCode() : 0)) * 31;
        x xVar4 = this.f5773d;
        return iHashCode3 + (xVar4 != null ? xVar4.hashCode() : 0);
    }

    public a0(x xVar, x xVar2, x xVar3, x xVar4) {
        this.f5770a = xVar;
        this.f5771b = xVar2;
        this.f5772c = xVar3;
        this.f5773d = xVar4;
    }

    public a0(x xVar, x xVar2, x xVar3, x xVar4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : xVar, (i10 & 2) != 0 ? null : xVar2, (i10 & 4) != 0 ? null : xVar3, (i10 & 8) != 0 ? null : xVar4);
    }
}
