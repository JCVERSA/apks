package kotlinx.serialization.internal;

import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

public final class v1 implements kotlinx.serialization.descriptors.f, n {

    private final kotlinx.serialization.descriptors.f f65239a;

    private final String f65240b;

    private final Set f65241c;

    public v1(kotlinx.serialization.descriptors.f original) {
        Intrinsics.h(original, "original");
        this.f65239a = original;
        this.f65240b = original.i() + '?';
        this.f65241c = l1.a(original);
    }

    @Override
    public Set a() {
        return this.f65241c;
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public int c(String name) {
        Intrinsics.h(name, "name");
        return this.f65239a.c(name);
    }

    @Override
    public kotlinx.serialization.descriptors.h d() {
        return this.f65239a.d();
    }

    @Override
    public int e() {
        return this.f65239a.e();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v1) && Intrinsics.c(this.f65239a, ((v1) obj).f65239a);
    }

    @Override
    public String f(int i10) {
        return this.f65239a.f(i10);
    }

    @Override
    public List g(int i10) {
        return this.f65239a.g(i10);
    }

    @Override
    public List getAnnotations() {
        return this.f65239a.getAnnotations();
    }

    @Override
    public kotlinx.serialization.descriptors.f h(int i10) {
        return this.f65239a.h(i10);
    }

    public int hashCode() {
        return this.f65239a.hashCode() * 31;
    }

    @Override
    public String i() {
        return this.f65240b;
    }

    @Override
    public boolean isInline() {
        return this.f65239a.isInline();
    }

    @Override
    public boolean j(int i10) {
        return this.f65239a.j(i10);
    }

    public final kotlinx.serialization.descriptors.f k() {
        return this.f65239a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f65239a);
        sb2.append('?');
        return sb2.toString();
    }
}
