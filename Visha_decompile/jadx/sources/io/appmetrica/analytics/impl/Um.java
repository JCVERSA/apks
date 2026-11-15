package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class Um implements ProtobufConverter {
    public final C2498dl a;

    public Um() {
        this(new C2498dl());
    }

    @Override
    @NonNull
    public final C2682l6 fromModel(@NonNull Tm tm) {
        C2682l6 c2682l6 = new C2682l6();
        Integer num = tm.e;
        c2682l6.e = num == null ? -1 : num.intValue();
        c2682l6.d = tm.d;
        c2682l6.b = tm.b;
        c2682l6.a = tm.a;
        c2682l6.c = tm.c;
        C2498dl c2498dl = this.a;
        List list = tm.f;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new C2548fl((StackTraceElement) it.next()));
        }
        c2682l6.f = c2498dl.fromModel(arrayList);
        return c2682l6;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public Um(C2498dl c2498dl) {
        this.a = c2498dl;
    }

    @NonNull
    public final Tm a(@NonNull C2682l6 c2682l6) {
        throw new UnsupportedOperationException();
    }
}
