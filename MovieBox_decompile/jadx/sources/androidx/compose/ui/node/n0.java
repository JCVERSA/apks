package androidx.compose.ui.node;

import java.util.List;
import kotlin.jvm.functions.Function0;

public final class n0 {

    public static final int f5106c = androidx.compose.runtime.collection.b.f3371d;

    private final androidx.compose.runtime.collection.b f5107a;

    private final Function0 f5108b;

    public n0(androidx.compose.runtime.collection.b bVar, Function0 function0) {
        this.f5107a = bVar;
        this.f5108b = function0;
    }

    public final void a(int i10, Object obj) {
        this.f5107a.a(i10, obj);
        this.f5108b.invoke();
    }

    public final List b() {
        return this.f5107a.g();
    }

    public final void c() {
        this.f5107a.h();
        this.f5108b.invoke();
    }

    public final Object d(int i10) {
        return this.f5107a.m()[i10];
    }

    public final int e() {
        return this.f5107a.n();
    }

    public final androidx.compose.runtime.collection.b f() {
        return this.f5107a;
    }

    public final Object g(int i10) {
        Object objV = this.f5107a.v(i10);
        this.f5108b.invoke();
        return objV;
    }
}
