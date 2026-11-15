package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public final class C2598hl {
    public final C2647jl a;

    public C2598hl(C2647jl c2647jl) {
        this.a = c2647jl;
    }

    public final void a(String str, EnumC2697ll enumC2697ll, Hl hl) {
        ArrayList arrayList;
        synchronized (this.a.b) {
            try {
                Collection collection = (Collection) this.a.a.a.get(str);
                arrayList = collection == null ? new ArrayList() : new ArrayList(collection);
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((InterfaceC2871sl) it.next()).a(enumC2697ll, hl);
        }
    }
}
