package androidx.navigation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class m {

    private boolean f13618b;

    private boolean f13619c;

    private String f13621e;

    private boolean f13622f;

    private boolean f13623g;

    private final l.a f13617a = new l.a();

    private int f13620d = -1;

    private final void j(String str) {
        if (str != null) {
            if (StringsKt.q0(str)) {
                throw new IllegalArgumentException("Cannot pop up to an empty route");
            }
            this.f13621e = str;
            this.f13622f = false;
        }
    }

    public final void a(Function1 animBuilder) {
        Intrinsics.h(animBuilder, "animBuilder");
        a aVar = new a();
        animBuilder.invoke(aVar);
        this.f13617a.b(aVar.a()).c(aVar.b()).e(aVar.c()).f(aVar.d());
    }

    public final l b() {
        l.a aVar = this.f13617a;
        aVar.d(c());
        aVar.j(f());
        if (e() != null) {
            aVar.h(e(), this.f13622f, this.f13623g);
        } else {
            aVar.g(d(), this.f13622f, this.f13623g);
        }
        return aVar.a();
    }

    public final boolean c() {
        return this.f13618b;
    }

    public final int d() {
        return this.f13620d;
    }

    public final String e() {
        return this.f13621e;
    }

    public final boolean f() {
        return this.f13619c;
    }

    public final void g(int i10, Function1 popUpToBuilder) {
        Intrinsics.h(popUpToBuilder, "popUpToBuilder");
        i(i10);
        j(null);
        s sVar = new s();
        popUpToBuilder.invoke(sVar);
        this.f13622f = sVar.a();
        this.f13623g = sVar.b();
    }

    public final void h(boolean z10) {
        this.f13618b = z10;
    }

    public final void i(int i10) {
        this.f13620d = i10;
        this.f13622f = false;
    }
}
