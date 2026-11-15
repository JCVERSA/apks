package androidx.p009lifecycle;

import android.os.Bundle;
import androidx.p010savedstate.c;
import androidx.p010savedstate.e;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

public abstract class a extends v0.e implements v0.c {

    private c f9261a;

    private Lifecycle f9262b;

    private Bundle f9263c;

    public a() {
    }

    private final t0 b(String str, Class cls) {
        c cVar = this.f9261a;
        Intrinsics.e(cVar);
        Lifecycle lifecycle = this.f9262b;
        Intrinsics.e(lifecycle);
        n0 n0VarB = n.b(cVar, lifecycle, str, this.f9263c);
        t0 t0VarC = c(str, cls, n0VarB.d());
        t0VarC.addCloseable("androidx.lifecycle.savedstate.vm.tag", n0VarB);
        return t0VarC;
    }

    @Override
    public void a(t0 viewModel) {
        Intrinsics.h(viewModel, "viewModel");
        c cVar = this.f9261a;
        if (cVar != null) {
            Intrinsics.e(cVar);
            Lifecycle lifecycle = this.f9262b;
            Intrinsics.e(lifecycle);
            n.a(viewModel, cVar, lifecycle);
        }
    }

    protected abstract t0 c(String str, Class cls, l0 l0Var);

    @Override
    public t0 create(KClass kClass, p1.a aVar) {
        return w0.c(this, kClass, aVar);
    }

    public a(e owner, Bundle bundle) {
        Intrinsics.h(owner, "owner");
        this.f9261a = owner.getSavedStateRegistry();
        this.f9262b = owner.getLifecycle();
        this.f9263c = bundle;
    }

    @Override
    public t0 create(Class modelClass, p1.a extras) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(extras, "extras");
        String str = (String) extras.a(v0.d.f9346c);
        if (str != null) {
            return this.f9261a != null ? b(str, modelClass) : c(str, modelClass, o0.b(extras));
        }
        throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
    }

    @Override
    public t0 create(Class modelClass) {
        Intrinsics.h(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            if (this.f9262b != null) {
                return b(canonicalName, modelClass);
            }
            throw new UnsupportedOperationException("AbstractSavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
