package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;

public final class Gl {
    public final ProtobufStateStorage a;
    public final Tn b;

    public Gl(ProtobufStateStorage protobufStateStorage, Tn tn) {
        this.a = protobufStateStorage;
        this.b = tn;
    }

    public Gl(Context context) {
        this(C2872sm.a(Ll.class).a(context), C2910ua.j().B().a());
    }
}
