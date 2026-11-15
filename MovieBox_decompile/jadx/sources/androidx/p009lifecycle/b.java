package androidx.p009lifecycle;

import android.app.Application;
import kotlin.jvm.internal.Intrinsics;

public abstract class b extends t0 {

    private final Application f9265a;

    public b(Application application) {
        Intrinsics.h(application, "application");
        this.f9265a = application;
    }

    public Application b() {
        Application application = this.f9265a;
        Intrinsics.f(application, "null cannot be cast to non-null type T of androidx.lifecycle.AndroidViewModel.getApplication");
        return application;
    }
}
