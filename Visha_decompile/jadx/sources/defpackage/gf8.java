package defpackage;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlinx.serialization.descriptors.a;

public final class gf8 implements a {
    public final String a;
    public final ef8 b;

    public gf8(String str, ef8 ef8Var) {
        y45.j(str, "serialName");
        y45.j(ef8Var, "kind");
        this.a = str;
        this.b = ef8Var;
    }

    private final Void a() {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override
    public boolean b() {
        return a.C0417a.c(this);
    }

    @Override
    public int c(String str) {
        y45.j(str, "name");
        a();
        throw new KotlinNothingValueException();
    }

    @Override
    public a d(int i) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override
    public int e() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gf8)) {
            return false;
        }
        gf8 gf8Var = (gf8) obj;
        return y45.e(h(), gf8Var.h()) && y45.e(getKind(), gf8Var.getKind());
    }

    @Override
    public String f(int i) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override
    public List g(int i) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override
    public List getAnnotations() {
        return a.C0417a.a(this);
    }

    @Override
    public String h() {
        return this.a;
    }

    public int hashCode() {
        return h().hashCode() + (getKind().hashCode() * 31);
    }

    @Override
    public boolean i(int i) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override
    public boolean isInline() {
        return a.C0417a.b(this);
    }

    @Override
    public ef8 getKind() {
        return this.b;
    }

    public String toString() {
        return "PrimitiveDescriptor(" + h() + ')';
    }
}
