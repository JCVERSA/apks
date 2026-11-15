package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.Iterator;

public final class T implements ProtobufConverter {
    public final Um a;

    public T(@NonNull Um um) {
        this.a = um;
    }

    @Override
    @NonNull
    public final C2458c6 fromModel(@NonNull S s) {
        C2458c6 c2458c6 = new C2458c6();
        Tm tm = s.a;
        if (tm != null) {
            c2458c6.a = this.a.fromModel(tm);
        }
        c2458c6.b = new C2682l6[s.b.size()];
        Iterator it = s.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            c2458c6.b[i] = this.a.fromModel((Tm) it.next());
            i++;
        }
        String str = s.c;
        if (str != null) {
            c2458c6.c = str;
        }
        return c2458c6;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public final S a(@NonNull C2458c6 c2458c6) {
        throw new UnsupportedOperationException();
    }
}
