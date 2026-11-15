package androidx.p010savedstate;

import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private static final b f14498g = new b(null);

    private boolean f14500b;

    private Bundle f14501c;

    private boolean f14502d;

    private androidx.savedstate.a.b f14503e;

    private final k.b f14499a = new k.b();

    private boolean f14504f = true;

    public interface a {
        void a(e eVar);
    }

    private static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public interface InterfaceC0116c {
        Bundle saveState();
    }

    public static final void d(c this$0, u uVar, Lifecycle.Event event) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(uVar, "<anonymous parameter 0>");
        Intrinsics.h(event, "event");
        if (event == Lifecycle.Event.ON_START) {
            this$0.f14504f = true;
        } else if (event == Lifecycle.Event.ON_STOP) {
            this$0.f14504f = false;
        }
    }

    public final Bundle b(String key) {
        Intrinsics.h(key, "key");
        if (!this.f14502d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.f14501c;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
        Bundle bundle3 = this.f14501c;
        if (bundle3 != null) {
            bundle3.remove(key);
        }
        Bundle bundle4 = this.f14501c;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.f14501c = null;
        }
        return bundle2;
    }

    public final InterfaceC0116c c(String key) {
        Intrinsics.h(key, "key");
        for (Map.Entry components : this.f14499a) {
            Intrinsics.g(components, "components");
            String str = (String) components.getKey();
            InterfaceC0116c interfaceC0116c = (InterfaceC0116c) components.getValue();
            if (Intrinsics.c(str, key)) {
                return interfaceC0116c;
            }
        }
        return null;
    }

    public final void e(Lifecycle lifecycle) {
        Intrinsics.h(lifecycle, "lifecycle");
        if (this.f14500b) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        lifecycle.a(new r() {
            @Override
            public final void onStateChanged(u uVar, Lifecycle.Event event) {
                c.d(this.f14497a, uVar, event);
            }
        });
        this.f14500b = true;
    }

    public final void f(Bundle bundle) {
        if (!this.f14500b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (this.f14502d) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        this.f14501c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        this.f14502d = true;
    }

    public final void g(Bundle outBundle) {
        Intrinsics.h(outBundle, "outBundle");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f14501c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        k.b.d dVarC = this.f14499a.c();
        Intrinsics.g(dVarC, "this.components.iteratorWithAdditions()");
        while (dVarC.hasNext()) {
            Map.Entry entry = (Map.Entry) dVarC.next();
            bundle.putBundle((String) entry.getKey(), ((InterfaceC0116c) entry.getValue()).saveState());
        }
        if (bundle.isEmpty()) {
            return;
        }
        outBundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle);
    }

    public final void h(String key, InterfaceC0116c provider) {
        Intrinsics.h(key, "key");
        Intrinsics.h(provider, "provider");
        if (((InterfaceC0116c) this.f14499a.g(key, provider)) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public final void i(Class clazz) {
        Intrinsics.h(clazz, "clazz");
        if (!this.f14504f) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        androidx.savedstate.a.b bVar = this.f14503e;
        if (bVar == null) {
            bVar = new androidx.savedstate.a.b(this);
        }
        this.f14503e = bVar;
        try {
            clazz.getDeclaredConstructor(null);
            androidx.savedstate.a.b bVar2 = this.f14503e;
            if (bVar2 != null) {
                String name = clazz.getName();
                Intrinsics.g(name, "clazz.name");
                bVar2.a(name);
            }
        } catch (NoSuchMethodException e10) {
            throw new IllegalArgumentException("Class " + clazz.getSimpleName() + " must have default constructor in order to be automatically recreated", e10);
        }
    }

    public final void j(String key) {
        Intrinsics.h(key, "key");
        this.f14499a.i(key);
    }
}
