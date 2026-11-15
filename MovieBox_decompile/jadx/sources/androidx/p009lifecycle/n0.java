package androidx.p009lifecycle;

import androidx.p010savedstate.c;
import java.io.Closeable;
import kotlin.jvm.internal.Intrinsics;

public final class n0 implements r, Closeable {

    private final String f9314a;

    private final l0 f9315b;

    private boolean f9316c;

    public n0(String key, l0 handle) {
        Intrinsics.h(key, "key");
        Intrinsics.h(handle, "handle");
        this.f9314a = key;
        this.f9315b = handle;
    }

    public final void b(c registry, Lifecycle lifecycle) {
        Intrinsics.h(registry, "registry");
        Intrinsics.h(lifecycle, "lifecycle");
        if (this.f9316c) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f9316c = true;
        lifecycle.a(this);
        registry.h(this.f9314a, this.f9315b.c());
    }

    public final l0 d() {
        return this.f9315b;
    }

    public final boolean h() {
        return this.f9316c;
    }

    @Override
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.f9316c = false;
            source.getLifecycle().d(this);
        }
    }

    @Override
    public void close() {
    }
}
