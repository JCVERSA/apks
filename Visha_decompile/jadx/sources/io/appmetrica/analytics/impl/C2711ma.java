package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class C2711ma implements ProtobufConverter {
    public final AbstractC2516ee a;

    public C2711ma() {
        this(new C2921ul());
    }

    @Override
    @NonNull
    public final Ul fromModel(@NonNull C4 c4) {
        Ul ul = new Ul();
        ul.b = c4.b;
        ul.a = c4.a;
        ul.c = c4.c;
        ul.d = c4.d;
        ul.e = c4.e;
        ul.f = this.a.a(c4.f);
        return ul;
    }

    public C2711ma(C2921ul c2921ul) {
        this.a = c2921ul;
    }

    @Override
    @NonNull
    public final C4 toModel(@NonNull Ul ul) {
        A4 a4 = new A4();
        a4.d = ul.d;
        a4.c = ul.c;
        a4.b = ul.b;
        a4.a = ul.a;
        a4.e = ul.e;
        a4.f = this.a.a(ul.f);
        return new C4(a4);
    }
}
