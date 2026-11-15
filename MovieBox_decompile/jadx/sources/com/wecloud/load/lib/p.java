package com.wecloud.load.lib;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

public final class p {

    public static final p f58638a = new p();

    private static volatile WeakReference f58639b;

    private p() {
    }

    public final boolean a() {
        WeakReference weakReference = f58639b;
        return (weakReference != null ? (SoLoadService) weakReference.get() : null) != null;
    }

    public final void b(SoLoadService service) {
        Intrinsics.h(service, "service");
        f58639b = new WeakReference(service);
    }

    public final void c() {
        SoLoadService soLoadService;
        WeakReference weakReference = f58639b;
        if (weakReference == null || (soLoadService = (SoLoadService) weakReference.get()) == null) {
            return;
        }
        soLoadService.B();
    }

    public final void d() {
        f58639b = null;
    }
}
