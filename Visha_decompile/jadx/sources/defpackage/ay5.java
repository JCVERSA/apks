package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.descriptors.b;

public abstract class ay5 implements a {
    public final String a;
    public final a b;
    public final a c;
    public final int d;

    public ay5(String str, a aVar, a aVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, aVar, aVar2);
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
        throw new IllegalArgumentException(str + " is not a valid map index");
    }

    @Override
    public a d(int i) {
        if (i >= 0) {
            int i2 = i % 2;
            if (i2 == 0) {
                return this.b;
            }
            if (i2 == 1) {
                return this.c;
            }
            throw new IllegalStateException("Unreached");
        }
        throw new IllegalArgumentException(("Illegal index " + i + ", " + h() + " expects only non-negative indices").toString());
    }

    @Override
    public int e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ay5)) {
            return false;
        }
        ay5 ay5Var = (ay5) obj;
        return y45.e(h(), ay5Var.h()) && y45.e(this.b, ay5Var.b) && y45.e(this.c, ay5Var.c);
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
        return b.c.a;
    }

    @Override
    public String h() {
        return this.a;
    }

    public int hashCode() {
        return (((h().hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
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
        return h() + '(' + this.b + ", " + this.c + ')';
    }

    public ay5(String str, a aVar, a aVar2) {
        this.a = str;
        this.b = aVar;
        this.c = aVar2;
        this.d = 2;
    }
}
