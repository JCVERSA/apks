package com.google.android.gms.common.api.internal;

public final class k implements a.InterfaceC0092a {
    public final c a;

    public k(c cVar) {
        this.a = cVar;
    }

    @Override
    public final void a(boolean z) {
        c cVar = this.a;
        cVar.o.sendMessage(cVar.o.obtainMessage(1, Boolean.valueOf(z)));
    }
}
