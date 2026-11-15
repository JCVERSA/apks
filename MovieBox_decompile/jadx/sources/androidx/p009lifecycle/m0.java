package androidx.p009lifecycle;

import kotlin.jvm.internal.Intrinsics;

public final class m0 implements r {

    private final SavedStateHandlesProvider f9310a;

    public m0(SavedStateHandlesProvider provider) {
        Intrinsics.h(provider, "provider");
        this.f9310a = provider;
    }

    @Override
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (event == Lifecycle.Event.ON_CREATE) {
            source.getLifecycle().d(this);
            this.f9310a.c();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + event).toString());
        }
    }
}
