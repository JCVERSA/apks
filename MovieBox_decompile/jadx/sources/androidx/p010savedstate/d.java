package androidx.p010savedstate;

import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final a f14505d = new a(null);

    private final e f14506a;

    private final c f14507b;

    private boolean f14508c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a(e owner) {
            Intrinsics.h(owner, "owner");
            return new d(owner, null);
        }

        private a() {
        }
    }

    public d(e eVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar);
    }

    public static final d a(e eVar) {
        return f14505d.a(eVar);
    }

    public final c b() {
        return this.f14507b;
    }

    public final void c() {
        Lifecycle lifecycle = this.f14506a.getLifecycle();
        if (lifecycle.b() != Lifecycle.State.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.a(new androidx.p010savedstate.a(this.f14506a));
        this.f14507b.e(lifecycle);
        this.f14508c = true;
    }

    public final void d(Bundle bundle) {
        if (!this.f14508c) {
            c();
        }
        Lifecycle lifecycle = this.f14506a.getLifecycle();
        if (!lifecycle.b().isAtLeast(Lifecycle.State.STARTED)) {
            this.f14507b.f(bundle);
            return;
        }
        throw new IllegalStateException(("performRestore cannot be called when owner is " + lifecycle.b()).toString());
    }

    public final void e(Bundle outBundle) {
        Intrinsics.h(outBundle, "outBundle");
        this.f14507b.g(outBundle);
    }

    private d(e eVar) {
        this.f14506a = eVar;
        this.f14507b = new c();
    }
}
