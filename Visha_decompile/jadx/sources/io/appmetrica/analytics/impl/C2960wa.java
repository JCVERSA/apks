package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

public final class C2960wa {
    public final HashMap a;
    public final boolean b;

    public C2960wa() {
        this(false);
    }

    public final void a(Object obj, Object obj2) {
        Collection collection = (Collection) this.a.get(obj);
        ArrayList arrayList = collection == null ? new ArrayList() : new ArrayList(collection);
        arrayList.add(obj2);
    }

    public final String toString() {
        return this.a.toString();
    }

    public C2960wa(boolean z) {
        this.a = new HashMap();
        this.b = z;
    }
}
