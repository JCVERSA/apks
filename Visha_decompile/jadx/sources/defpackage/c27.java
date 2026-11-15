package defpackage;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.descriptors.b;

public final class c27 implements a {
    public static final c27 a = new c27();
    public static final id9 b = b.d.a;
    public static final String c = "kotlin.Nothing";

    public final Void a() {
        throw new IllegalStateException("Descriptor for type `kotlin.Nothing` does not have elements");
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
        return this == obj;
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
    public id9 getKind() {
        return b;
    }

    @Override
    public String h() {
        return c;
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

    public String toString() {
        return "NothingSerialDescriptor";
    }
}
