package androidx.p009lifecycle;

import android.os.Bundle;
import androidx.p010savedstate.c;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class SavedStateHandlesProvider implements c.InterfaceC0116c {

    private final c f9248a;

    private boolean f9249b;

    private Bundle f9250c;

    private final Lazy f9251d;

    public SavedStateHandlesProvider(c savedStateRegistry, final y0 viewModelStoreOwner) {
        Intrinsics.h(savedStateRegistry, "savedStateRegistry");
        Intrinsics.h(viewModelStoreOwner, "viewModelStoreOwner");
        this.f9248a = savedStateRegistry;
        this.f9251d = LazyKt.b(new Function0<p0>() {
            {
                super(0);
            }

            @Override
            public final p0 invoke() {
                return o0.e(viewModelStoreOwner);
            }
        });
    }

    private final p0 b() {
        return (p0) this.f9251d.getValue();
    }

    public final Bundle a(String key) {
        Intrinsics.h(key, "key");
        c();
        Bundle bundle = this.f9250c;
        Bundle bundle2 = bundle != null ? bundle.getBundle(key) : null;
        Bundle bundle3 = this.f9250c;
        if (bundle3 != null) {
            bundle3.remove(key);
        }
        Bundle bundle4 = this.f9250c;
        if (bundle4 != null && bundle4.isEmpty()) {
            this.f9250c = null;
        }
        return bundle2;
    }

    public final void c() {
        if (this.f9249b) {
            return;
        }
        Bundle bundleB = this.f9248a.b("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f9250c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (bundleB != null) {
            bundle.putAll(bundleB);
        }
        this.f9250c = bundle;
        this.f9249b = true;
        b();
    }

    @Override
    public Bundle saveState() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f9250c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : b().b().entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleSaveState = ((l0) entry.getValue()).c().saveState();
            if (!Intrinsics.c(bundleSaveState, Bundle.EMPTY)) {
                bundle.putBundle(str, bundleSaveState);
            }
        }
        this.f9249b = false;
        return bundle;
    }
}
