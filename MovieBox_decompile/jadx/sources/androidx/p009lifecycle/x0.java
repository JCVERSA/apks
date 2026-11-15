package androidx.p009lifecycle;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

public class x0 {

    private final Map f9359a = new LinkedHashMap();

    public final void a() {
        Iterator it = this.f9359a.values().iterator();
        while (it.hasNext()) {
            ((t0) it.next()).clear$lifecycle_viewmodel_release();
        }
        this.f9359a.clear();
    }

    public final t0 b(String key) {
        Intrinsics.h(key, "key");
        return (t0) this.f9359a.get(key);
    }

    public final Set c() {
        return new HashSet(this.f9359a.keySet());
    }

    public final void d(String key, t0 viewModel) {
        Intrinsics.h(key, "key");
        Intrinsics.h(viewModel, "viewModel");
        t0 t0Var = (t0) this.f9359a.put(key, viewModel);
        if (t0Var != null) {
            t0Var.clear$lifecycle_viewmodel_release();
        }
    }
}
