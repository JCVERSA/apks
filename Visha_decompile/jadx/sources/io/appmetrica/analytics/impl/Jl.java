package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class Jl implements Ml {
    public volatile Hl a;
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();

    @Override
    public final void a(Hl hl) {
        this.a = hl;
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((Ml) it.next()).a(hl);
        }
    }

    public final Hl b() {
        Hl hl = this.a;
        if (hl != null) {
            return hl;
        }
        y45.B("startupState");
        return null;
    }

    public final void b(Ml ml) {
        this.b.remove(ml);
    }

    public final void a(Ml ml) {
        this.b.add(ml);
        if (this.a != null) {
            Hl hl = this.a;
            if (hl == null) {
                y45.B("startupState");
                hl = null;
            }
            ml.a(hl);
        }
    }

    public final void a(Context context) {
        String strOptStringOrNull;
        ProtobufStateStorage<Object> protobufStateStorageA = C2872sm.a(Ll.class).a(context);
        Tn tnA = C2910ua.j().B().a();
        synchronized (tnA) {
            strOptStringOrNull = JsonUtils.optStringOrNull(tnA.a.a(), "device_id");
        }
        a(new Hl(strOptStringOrNull, tnA.a(), (Ll) protobufStateStorageA.read()));
    }
}
