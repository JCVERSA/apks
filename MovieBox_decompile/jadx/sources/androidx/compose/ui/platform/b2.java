package androidx.compose.ui.platform;

import java.util.List;

public final class b2 implements androidx.compose.ui.node.z0 {

    private final int f5429a;

    private final List f5430b;

    private Float f5431c;

    private Float f5432d;

    private androidx.compose.ui.semantics.g f5433e;

    private androidx.compose.ui.semantics.g f5434f;

    public b2(int i10, List list, Float f10, Float f11, androidx.compose.ui.semantics.g gVar, androidx.compose.ui.semantics.g gVar2) {
        this.f5429a = i10;
        this.f5430b = list;
        this.f5431c = f10;
        this.f5432d = f11;
        this.f5433e = gVar;
        this.f5434f = gVar2;
    }

    public final androidx.compose.ui.semantics.g a() {
        return this.f5433e;
    }

    public final Float b() {
        return this.f5431c;
    }

    public final Float c() {
        return this.f5432d;
    }

    public final int d() {
        return this.f5429a;
    }

    public final androidx.compose.ui.semantics.g e() {
        return this.f5434f;
    }

    public final void f(androidx.compose.ui.semantics.g gVar) {
        this.f5433e = gVar;
    }

    public final void g(Float f10) {
        this.f5431c = f10;
    }

    public final void h(Float f10) {
        this.f5432d = f10;
    }

    public final void i(androidx.compose.ui.semantics.g gVar) {
        this.f5434f = gVar;
    }

    @Override
    public boolean isValidOwnerScope() {
        return this.f5430b.contains(this);
    }
}
