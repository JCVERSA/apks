package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class C2557g5 {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    public final void a(@NonNull InterfaceC2954w4 interfaceC2954w4) {
        this.a.add(interfaceC2954w4);
    }

    public final void b(@NonNull InterfaceC2954w4 interfaceC2954w4) {
        this.a.remove(interfaceC2954w4);
    }

    public final List<InterfaceC2954w4> a() {
        return this.a;
    }
}
