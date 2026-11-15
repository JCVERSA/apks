package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import java.util.List;

public final class H4 extends I4 {
    public H4(@NonNull C2619ii c2619ii) {
        super(c2619ii);
    }

    public final void a(@NonNull EnumC2588hb enumC2588hb, @NonNull List<Gg> list) {
        if (!C9.h.contains(enumC2588hb)) {
            list.add(this.a.s);
        }
        if (C9.b.contains(enumC2588hb)) {
            return;
        }
        list.add(this.a.c);
    }
}
