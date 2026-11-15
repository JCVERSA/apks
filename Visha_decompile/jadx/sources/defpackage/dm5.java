package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.descriptors.b;

public abstract class dm5 implements a {
    public final a a;
    public final int b;

    public dm5(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    @Override
    public boolean b() {
        return a.C0417a.c(this);
    }

    @Override
    public int c(String str) {
        y45.j(str, "name");
        Integer numR = f1a.r(str);
        if (numR != null) {
            return numR.intValue();
        }
        throw new IllegalArgumentException(str + " is not a valid list index");
    }

    @Override
    public a d(int i) {
        if (i >= 0) {
            return this.a;
        }
        throw new IllegalArgumentException(("Illegal index " + i + ", " + h() + " expects only non-negative indices").toString());
    }

    @Override
    public int e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dm5)) {
            return false;
        }
        dm5 dm5Var = (dm5) obj;
        return y45.e(this.a, dm5Var.a) && y45.e(h(), dm5Var.h());
    }

    @Override
    public String f(int i) {
        return String.valueOf(i);
    }

    @Override
    public List g(int i) {
        if (i >= 0) {
            return y71.k();
        }
        throw new IllegalArgumentException(("Illegal index " + i + ", " + h() + " expects only non-negative indices").toString());
    }

    @Override
    public List getAnnotations() {
        return a.C0417a.a(this);
    }

    @Override
    public id9 getKind() {
        return b.C0418b.a;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + h().hashCode();
    }

    @Override
    public boolean i(int i) {
        if (i >= 0) {
            return false;
        }
        throw new IllegalArgumentException(("Illegal index " + i + ", " + h() + " expects only non-negative indices").toString());
    }

    @Override
    public boolean isInline() {
        return a.C0417a.b(this);
    }

    public String toString() {
        return h() + '(' + this.a + ')';
    }

    public dm5(a aVar) {
        this.a = aVar;
        this.b = 1;
    }
}
