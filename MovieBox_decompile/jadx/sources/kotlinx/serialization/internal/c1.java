package kotlinx.serialization.internal;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class c1 implements kotlinx.serialization.descriptors.f {

    private final String f65147a;

    private final kotlinx.serialization.descriptors.f f65148b;

    private final kotlinx.serialization.descriptors.f f65149c;

    private final int f65150d;

    public c1(String str, kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.descriptors.f fVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, fVar, fVar2);
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
        throw new IllegalArgumentException(name + " is not a valid map index");
    }

    @Override
    public kotlinx.serialization.descriptors.h d() {
        return kotlinx.serialization.descriptors.i.c.f65103a;
    }

    @Override
    public int e() {
        return this.f65150d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c1)) {
            return false;
        }
        c1 c1Var = (c1) obj;
        return Intrinsics.c(i(), c1Var.i()) && Intrinsics.c(this.f65148b, c1Var.f65148b) && Intrinsics.c(this.f65149c, c1Var.f65149c);
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
            int i11 = i10 % 2;
            if (i11 == 0) {
                return this.f65148b;
            }
            if (i11 == 1) {
                return this.f65149c;
            }
            throw new IllegalStateException("Unreached");
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + i() + " expects only non-negative indices").toString());
    }

    public int hashCode() {
        return (((i().hashCode() * 31) + this.f65148b.hashCode()) * 31) + this.f65149c.hashCode();
    }

    @Override
    public String i() {
        return this.f65147a;
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
        return i() + '(' + this.f65148b + ", " + this.f65149c + ')';
    }

    private c1(String str, kotlinx.serialization.descriptors.f fVar, kotlinx.serialization.descriptors.f fVar2) {
        this.f65147a = str;
        this.f65148b = fVar;
        this.f65149c = fVar2;
        this.f65150d = 2;
    }
}
