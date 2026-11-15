package androidx.p009lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.p010savedstate.c;
import androidx.p010savedstate.e;
import java.lang.reflect.Constructor;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import p1.a;

public final class q0 extends v0.e implements v0.c {

    private Application f9329a;

    private final v0.c f9330b;

    private Bundle f9331c;

    private Lifecycle f9332d;

    private c f9333e;

    public q0() {
        this.f9330b = new v0.a();
    }

    @Override
    public void a(t0 viewModel) {
        Intrinsics.h(viewModel, "viewModel");
        if (this.f9332d != null) {
            c cVar = this.f9333e;
            Intrinsics.e(cVar);
            Lifecycle lifecycle = this.f9332d;
            Intrinsics.e(lifecycle);
            n.a(viewModel, cVar, lifecycle);
        }
    }

    public final t0 b(String key, Class modelClass) {
        t0 t0VarD;
        Application application;
        Intrinsics.h(key, "key");
        Intrinsics.h(modelClass, "modelClass");
        Lifecycle lifecycle = this.f9332d;
        if (lifecycle == null) {
            throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        boolean zIsAssignableFrom = b.class.isAssignableFrom(modelClass);
        Constructor constructorC = (!zIsAssignableFrom || this.f9329a == null) ? r0.c(modelClass, r0.f9335b) : r0.c(modelClass, r0.f9334a);
        if (constructorC == null) {
            return this.f9329a != null ? this.f9330b.create(modelClass) : v0.d.f9344a.a().create(modelClass);
        }
        c cVar = this.f9333e;
        Intrinsics.e(cVar);
        n0 n0VarB = n.b(cVar, lifecycle, key, this.f9331c);
        if (!zIsAssignableFrom || (application = this.f9329a) == null) {
            t0VarD = r0.d(modelClass, constructorC, n0VarB.d());
        } else {
            Intrinsics.e(application);
            t0VarD = r0.d(modelClass, constructorC, application, n0VarB.d());
        }
        t0VarD.addCloseable("androidx.lifecycle.savedstate.vm.tag", n0VarB);
        return t0VarD;
    }

    @Override
    public t0 create(KClass kClass, a aVar) {
        return w0.c(this, kClass, aVar);
    }

    @Override
    public t0 create(Class modelClass, a extras) {
        Intrinsics.h(modelClass, "modelClass");
        Intrinsics.h(extras, "extras");
        String str = (String) extras.a(v0.d.f9346c);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (extras.a(o0.f9319a) == null || extras.a(o0.f9320b) == null) {
            if (this.f9332d != null) {
                return b(str, modelClass);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) extras.a(v0.a.f9342g);
        boolean zIsAssignableFrom = b.class.isAssignableFrom(modelClass);
        Constructor constructorC = (!zIsAssignableFrom || application == null) ? r0.c(modelClass, r0.f9335b) : r0.c(modelClass, r0.f9334a);
        if (constructorC == null) {
            return this.f9330b.create(modelClass, extras);
        }
        return (!zIsAssignableFrom || application == null) ? r0.d(modelClass, constructorC, o0.b(extras)) : r0.d(modelClass, constructorC, application, o0.b(extras));
    }

    public q0(Application application, e owner, Bundle bundle) {
        v0.a aVar;
        Intrinsics.h(owner, "owner");
        this.f9333e = owner.getSavedStateRegistry();
        this.f9332d = owner.getLifecycle();
        this.f9331c = bundle;
        this.f9329a = application;
        if (application != null) {
            aVar = v0.a.f9340e.a(application);
        } else {
            aVar = new v0.a();
        }
        this.f9330b = aVar;
    }

    @Override
    public t0 create(Class modelClass) {
        Intrinsics.h(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return b(canonicalName, modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
