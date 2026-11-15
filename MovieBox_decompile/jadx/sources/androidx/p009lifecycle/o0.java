package androidx.p009lifecycle;

import android.os.Bundle;
import androidx.p010savedstate.e;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

public abstract class o0 {

    public static final p1.a.b f9319a = new b();

    public static final p1.a.b f9320b = new c();

    public static final p1.a.b f9321c = new a();

    public static final class a implements p1.a.b {
        a() {
        }
    }

    public static final class b implements p1.a.b {
        b() {
        }
    }

    public static final class c implements p1.a.b {
        c() {
        }
    }

    public static final class d implements v0.c {
        d() {
        }

        @Override
        public t0 create(Class cls) {
            return w0.a(this, cls);
        }

        @Override
        public t0 create(KClass kClass, p1.a aVar) {
            return w0.c(this, kClass, aVar);
        }

        @Override
        public t0 create(Class modelClass, p1.a extras) {
            Intrinsics.h(modelClass, "modelClass");
            Intrinsics.h(extras, "extras");
            return new p0();
        }
    }

    private static final l0 a(e eVar, y0 y0Var, String str, Bundle bundle) {
        SavedStateHandlesProvider savedStateHandlesProviderD = d(eVar);
        p0 p0VarE = e(y0Var);
        l0 l0Var = (l0) p0VarE.b().get(str);
        if (l0Var != null) {
            return l0Var;
        }
        l0 l0VarA = l0.f9303f.a(savedStateHandlesProviderD.a(str), bundle);
        p0VarE.b().put(str, l0VarA);
        return l0VarA;
    }

    public static final l0 b(p1.a aVar) {
        Intrinsics.h(aVar, "<this>");
        e eVar = (e) aVar.a(f9319a);
        if (eVar == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        }
        y0 y0Var = (y0) aVar.a(f9320b);
        if (y0Var == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        Bundle bundle = (Bundle) aVar.a(f9321c);
        String str = (String) aVar.a(v0.d.f9346c);
        if (str != null) {
            return a(eVar, y0Var, str, bundle);
        }
        throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
    }

    public static final void c(e eVar) {
        Intrinsics.h(eVar, "<this>");
        Lifecycle.State stateB = eVar.getLifecycle().b();
        if (stateB != Lifecycle.State.INITIALIZED && stateB != Lifecycle.State.CREATED) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (eVar.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            SavedStateHandlesProvider savedStateHandlesProvider = new SavedStateHandlesProvider(eVar.getSavedStateRegistry(), (y0) eVar);
            eVar.getSavedStateRegistry().h("androidx.lifecycle.internal.SavedStateHandlesProvider", savedStateHandlesProvider);
            eVar.getLifecycle().a(new m0(savedStateHandlesProvider));
        }
    }

    public static final SavedStateHandlesProvider d(e eVar) {
        Intrinsics.h(eVar, "<this>");
        androidx.p010savedstate.c.InterfaceC0116c interfaceC0116cC = eVar.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider");
        SavedStateHandlesProvider savedStateHandlesProvider = interfaceC0116cC instanceof SavedStateHandlesProvider ? (SavedStateHandlesProvider) interfaceC0116cC : null;
        if (savedStateHandlesProvider != null) {
            return savedStateHandlesProvider;
        }
        throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
    }

    public static final p0 e(y0 y0Var) {
        Intrinsics.h(y0Var, "<this>");
        return (p0) new v0(y0Var, new d()).b("androidx.lifecycle.internal.SavedStateHandlesVM", p0.class);
    }
}
