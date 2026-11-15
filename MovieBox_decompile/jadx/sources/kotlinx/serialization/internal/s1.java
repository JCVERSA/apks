package kotlinx.serialization.internal;

import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;

public final class s1 implements kotlinx.serialization.descriptors.f {

    private final String f65226a;

    private final kotlinx.serialization.descriptors.e f65227b;

    public s1(String serialName, kotlinx.serialization.descriptors.e kind) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(kind, "kind");
        this.f65226a = serialName;
        this.f65227b = kind;
    }

    private final Void a() {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override
    public boolean b() {
        return kotlinx.serialization.descriptors.f.a.c(this);
    }

    @Override
    public int c(String name) {
        Intrinsics.h(name, "name");
        a();
        throw new KotlinNothingValueException();
    }

    @Override
    public int e() {
        return 0;
    }

    @Override
    public String f(int i10) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override
    public List g(int i10) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override
    public List getAnnotations() {
        return kotlinx.serialization.descriptors.f.a.a(this);
    }

    @Override
    public kotlinx.serialization.descriptors.f h(int i10) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override
    public String i() {
        return this.f65226a;
    }

    @Override
    public boolean isInline() {
        return kotlinx.serialization.descriptors.f.a.b(this);
    }

    @Override
    public boolean j(int i10) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override
    public kotlinx.serialization.descriptors.e d() {
        return this.f65227b;
    }

    public String toString() {
        return "PrimitiveDescriptor(" + i() + ')';
    }
}
