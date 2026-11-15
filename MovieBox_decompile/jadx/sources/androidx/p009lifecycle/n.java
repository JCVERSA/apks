package androidx.p009lifecycle;

import android.os.Bundle;
import androidx.p010savedstate.c;
import androidx.p010savedstate.e;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

public final class n {

    public static final n f9311a = new n();

    public static final class a implements c.a {
        @Override
        public void a(e owner) {
            Intrinsics.h(owner, "owner");
            if (!(owner instanceof y0)) {
                throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
            }
            x0 viewModelStore = ((y0) owner).getViewModelStore();
            c savedStateRegistry = owner.getSavedStateRegistry();
            Iterator it = viewModelStore.c().iterator();
            while (it.hasNext()) {
                t0 t0VarB = viewModelStore.b((String) it.next());
                Intrinsics.e(t0VarB);
                n.a(t0VarB, savedStateRegistry, owner.getLifecycle());
            }
            if (viewModelStore.c().isEmpty()) {
                return;
            }
            savedStateRegistry.i(a.class);
        }
    }

    public static final class b implements r {

        final Lifecycle f9312a;

        final c f9313b;

        b(Lifecycle lifecycle, c cVar) {
            this.f9312a = lifecycle;
            this.f9313b = cVar;
        }

        @Override
        public void onStateChanged(u source, Lifecycle.Event event) {
            Intrinsics.h(source, "source");
            Intrinsics.h(event, "event");
            if (event == Lifecycle.Event.ON_START) {
                this.f9312a.d(this);
                this.f9313b.i(a.class);
            }
        }
    }

    private n() {
    }

    public static final void a(t0 viewModel, c registry, Lifecycle lifecycle) {
        Intrinsics.h(viewModel, "viewModel");
        Intrinsics.h(registry, "registry");
        Intrinsics.h(lifecycle, "lifecycle");
        n0 n0Var = (n0) viewModel.getCloseable("androidx.lifecycle.savedstate.vm.tag");
        if (n0Var == null || n0Var.h()) {
            return;
        }
        n0Var.b(registry, lifecycle);
        f9311a.c(registry, lifecycle);
    }

    public static final n0 b(c registry, Lifecycle lifecycle, String str, Bundle bundle) {
        Intrinsics.h(registry, "registry");
        Intrinsics.h(lifecycle, "lifecycle");
        Intrinsics.e(str);
        n0 n0Var = new n0(str, l0.f9303f.a(registry.b(str), bundle));
        n0Var.b(registry, lifecycle);
        f9311a.c(registry, lifecycle);
        return n0Var;
    }

    private final void c(c cVar, Lifecycle lifecycle) {
        Lifecycle.State stateB = lifecycle.b();
        if (stateB == Lifecycle.State.INITIALIZED || stateB.isAtLeast(Lifecycle.State.STARTED)) {
            cVar.i(a.class);
        } else {
            lifecycle.a(new b(lifecycle, cVar));
        }
    }
}
