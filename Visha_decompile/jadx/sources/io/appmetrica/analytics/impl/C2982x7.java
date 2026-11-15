package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class C2982x7 implements ProtobufConverter {
    public final C2491de a;

    /* JADX WARN: Multi-variable type inference failed */
    public C2982x7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override
    public final C2957w7 fromModel(C3032z7 c3032z7) {
        C2957w7 c2957w7 = new C2957w7();
        Long l = c3032z7.a;
        if (l != null) {
            c2957w7.a = l.longValue();
        }
        Long l2 = c3032z7.b;
        if (l2 != null) {
            c2957w7.b = l2.longValue();
        }
        Boolean bool = c3032z7.c;
        if (bool != null) {
            c2957w7.c = this.a.fromModel(bool).intValue();
        }
        return c2957w7;
    }

    public C2982x7(C2491de c2491de) {
        this.a = c2491de;
    }

    public C2982x7(C2491de c2491de, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new C2491de() : c2491de);
    }

    @Override
    public final C3032z7 toModel(C2957w7 c2957w7) {
        C2957w7 c2957w8 = new C2957w7();
        long j = c2957w7.a;
        Long lValueOf = Long.valueOf(j);
        if (j == c2957w8.a) {
            lValueOf = null;
        }
        long j2 = c2957w7.b;
        return new C3032z7(lValueOf, j2 != c2957w8.b ? Long.valueOf(j2) : null, this.a.a(c2957w7.c));
    }
}
