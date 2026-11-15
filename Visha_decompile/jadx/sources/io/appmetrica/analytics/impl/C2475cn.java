package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.Iterator;
import java.util.List;

public final class C2475cn implements ProtobufConverter {
    public final C2498dl a;

    public C2475cn() {
        this(new C2498dl());
    }

    @Override
    @NonNull
    public final C2707m6 fromModel(@NonNull C2500dn c2500dn) {
        C2707m6 c2707m6 = new C2707m6();
        c2707m6.a = (String) WrapUtils.getOrDefault(c2500dn.a, "");
        c2707m6.b = StringUtils.correctIllFormedString((String) WrapUtils.getOrDefault(c2500dn.b, ""));
        List<C2548fl> list = c2500dn.c;
        if (list != null) {
            c2707m6.c = this.a.fromModel(list);
        }
        C2500dn c2500dn2 = c2500dn.d;
        if (c2500dn2 != null) {
            c2707m6.d = fromModel(c2500dn2);
        }
        List list2 = c2500dn.e;
        int i = 0;
        if (list2 == null) {
            c2707m6.e = new C2707m6[0];
        } else {
            c2707m6.e = new C2707m6[list2.size()];
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                c2707m6.e[i] = fromModel((C2500dn) it.next());
                i++;
            }
        }
        return c2707m6;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public C2475cn(C2498dl c2498dl) {
        this.a = c2498dl;
    }

    @NonNull
    public final C2500dn a(@NonNull C2707m6 c2707m6) {
        throw new UnsupportedOperationException();
    }
}
