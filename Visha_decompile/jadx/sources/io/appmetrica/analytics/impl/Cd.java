package io.appmetrica.analytics.impl;

import defpackage.abb;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource;
import java.util.Map;

public final class Cd implements ProtobufConverter {
    public static final Bd a = new Bd();
    public static final Map b = kotlin.collections.a.p(abb.a(NativeCrashSource.UNKNOWN, 0), abb.a(NativeCrashSource.CRASHPAD, 3));

    @Override
    public final C2558g6 fromModel(Fd fd) {
        C2558g6 c2558g6 = new C2558g6();
        c2558g6.f = 1;
        C2533f6 c2533f6 = new C2533f6();
        c2533f6.a = fd.a;
        C2632j6 c2632j6 = new C2632j6();
        Integer num = (Integer) b.get(fd.b.a);
        if (num != null) {
            c2632j6.a = num.intValue();
        }
        String str = fd.b.b;
        if (str == null) {
            str = "";
        }
        c2632j6.b = str;
        c2533f6.b = c2632j6;
        c2558g6.g = c2533f6;
        return c2558g6;
    }

    @Override
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final Fd a(C2558g6 c2558g6) {
        throw new UnsupportedOperationException();
    }
}
