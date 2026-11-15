package kotlinx.serialization.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

final class c implements f {

    private final f f65079a;

    public final KClass f65080b;

    private final String f65081c;

    public c(f original, KClass kClass) {
        Intrinsics.h(original, "original");
        Intrinsics.h(kClass, "kClass");
        this.f65079a = original;
        this.f65080b = kClass;
        this.f65081c = original.i() + '<' + kClass.g() + '>';
    }

    @Override
    public boolean b() {
        return this.f65079a.b();
    }

    @Override
    public int c(String name) {
        Intrinsics.h(name, "name");
        return this.f65079a.c(name);
    }

    @Override
    public h d() {
        return this.f65079a.d();
    }

    @Override
    public int e() {
        return this.f65079a.e();
    }

    public boolean equals(Object obj) {
        c cVar = obj instanceof c ? (c) obj : null;
        return cVar != null && Intrinsics.c(this.f65079a, cVar.f65079a) && Intrinsics.c(cVar.f65080b, this.f65080b);
    }

    @Override
    public String f(int i10) {
        return this.f65079a.f(i10);
    }

    @Override
    public List g(int i10) {
        return this.f65079a.g(i10);
    }

    @Override
    public List getAnnotations() {
        return this.f65079a.getAnnotations();
    }

    @Override
    public f h(int i10) {
        return this.f65079a.h(i10);
    }

    public int hashCode() {
        return (this.f65080b.hashCode() * 31) + i().hashCode();
    }

    @Override
    public String i() {
        return this.f65081c;
    }

    @Override
    public boolean isInline() {
        return this.f65079a.isInline();
    }

    @Override
    public boolean j(int i10) {
        return this.f65079a.j(i10);
    }

    public String toString() {
        return "ContextDescriptor(kClass: " + this.f65080b + ", original: " + this.f65079a + ')';
    }
}
