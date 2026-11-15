package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;

public final class Kn implements Ra {
    @Override
    public final String a(Context context) {
        ProtobufStateStorage<Object> protobufStateStorageA;
        Ll ll;
        try {
            AbstractC2897tm abstractC2897tmA = C2872sm.a(Ll.class);
            if (abstractC2897tmA != null && (protobufStateStorageA = abstractC2897tmA.a(context, abstractC2897tmA.c(context))) != null && (ll = (Ll) protobufStateStorageA.read()) != null) {
                return ll.a;
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
