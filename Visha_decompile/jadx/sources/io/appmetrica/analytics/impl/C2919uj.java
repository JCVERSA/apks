package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;

public final class C2919uj implements Xa {
    public final ModuleEvent a;

    public C2919uj(ModuleEvent moduleEvent) {
        this.a = moduleEvent;
    }

    @Override
    public final void a(Ya ya) {
        ya.reportEvent(this.a);
    }
}
