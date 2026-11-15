package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;

public final class Zj implements Oc {
    @Override
    public final void a(Context context) {
        AbstractC2897tm abstractC2897tmA = C2872sm.a(Ll.class);
        ProtobufStateStorage<Object> protobufStateStorageA = abstractC2897tmA.a(context, abstractC2897tmA.d(context));
        Ll ll = (Ll) protobufStateStorageA.read();
        Kl klA = ll.a(ll.m);
        klA.o = 0L;
        protobufStateStorageA.save(new Ll(klA));
    }
}
