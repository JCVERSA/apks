package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.List;

public final class C2891tg implements ProtobufConverter {
    public final C2475cn a;
    public final T b;
    public final C2831r6 c;
    public final C2498dl d;
    public final C2964we e;
    public final C2989xe f;

    public C2891tg() {
        this(new C2475cn(), new T(new Um()), new C2831r6(), new C2498dl(), new C2964we(), new C2989xe());
    }

    @Override
    @NonNull
    public final C2608i6 fromModel(@NonNull C2866sg c2866sg) {
        C2608i6 c2608i6 = new C2608i6();
        c2608i6.f = StringUtils.correctIllFormedString((String) WrapUtils.getOrDefault(c2866sg.a, c2608i6.f));
        C2749nn c2749nn = c2866sg.b;
        if (c2749nn != null) {
            C2500dn c2500dn = c2749nn.a;
            if (c2500dn != null) {
                c2608i6.a = this.a.fromModel(c2500dn);
            }
            S s = c2749nn.b;
            if (s != null) {
                c2608i6.b = this.b.fromModel(s);
            }
            List<C2548fl> list = c2749nn.c;
            if (list != null) {
                c2608i6.e = this.d.fromModel(list);
            }
            c2608i6.c = (String) WrapUtils.getOrDefault(c2749nn.g, c2608i6.c);
            c2608i6.d = this.c.a(c2749nn.h);
            if (!TextUtils.isEmpty(c2749nn.d)) {
                c2608i6.i = this.e.fromModel(c2749nn.d);
            }
            if (!TextUtils.isEmpty(c2749nn.e)) {
                c2608i6.j = c2749nn.e.getBytes();
            }
            if (!In.a(c2749nn.f)) {
                c2608i6.k = this.f.fromModel(c2749nn.f);
            }
        }
        return c2608i6;
    }

    @Override
    @NonNull
    public final Object toModel(@NonNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public C2891tg(C2475cn c2475cn, T t, C2831r6 c2831r6, C2498dl c2498dl, C2964we c2964we, C2989xe c2989xe) {
        this.a = c2475cn;
        this.b = t;
        this.c = c2831r6;
        this.d = c2498dl;
        this.e = c2964we;
        this.f = c2989xe;
    }

    @NonNull
    public final C2866sg a(@NonNull C2608i6 c2608i6) {
        throw new UnsupportedOperationException();
    }
}
