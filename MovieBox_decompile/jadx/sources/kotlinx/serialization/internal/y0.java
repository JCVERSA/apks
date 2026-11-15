package kotlinx.serialization.internal;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class y0 implements kotlinx.serialization.descriptors.f {

    private final kotlinx.serialization.descriptors.f f65246a;

    private final int f65247b;

    public y0(kotlinx.serialization.descriptors.f fVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(fVar);
    }

    @Override
    public boolean b() {
        return kotlinx.serialization.descriptors.f.a.c(this);
    }

    @Override
    public int c(String name) {
        Intrinsics.h(name, "name");
        Integer numV = StringsKt.v(name);
        if (numV != null) {
            return numV.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid list index");
    }

    @Override
    public kotlinx.serialization.descriptors.h d() {
        return kotlinx.serialization.descriptors.i.b.f65102a;
    }

    @Override
    public int e() {
        return this.f65247b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y0)) {
            return false;
        }
        y0 y0Var = (y0) obj;
        return Intrinsics.c(this.f65246a, y0Var.f65246a) && Intrinsics.c(i(), y0Var.i());
    }

    @Override
    public String f(int i10) {
        return String.valueOf(i10);
    }

    @Override
    public List g(int i10) {
        if (i10 >= 0) {
            return CollectionsKt.l();
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + i() + " expects only non-negative indices").toString());
    }

    @Override
    public List getAnnotations() {
        return kotlinx.serialization.descriptors.f.a.a(this);
    }

    @Override
    public kotlinx.serialization.descriptors.f h(int i10) {
        if (i10 >= 0) {
            return this.f65246a;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + i() + " expects only non-negative indices").toString());
    }

    public int hashCode() {
        return (this.f65246a.hashCode() * 31) + i().hashCode();
    }

    @Override
    public boolean isInline() {
        return kotlinx.serialization.descriptors.f.a.b(this);
    }

    @Override
    public boolean j(int i10) {
        if (i10 >= 0) {
            return false;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + i() + " expects only non-negative indices").toString());
    }

    public String toString() {
        return i() + '(' + this.f65246a + ')';
    }

    private y0(kotlinx.serialization.descriptors.f fVar) {
        this.f65246a = fVar;
        this.f65247b = 1;
    }
}
