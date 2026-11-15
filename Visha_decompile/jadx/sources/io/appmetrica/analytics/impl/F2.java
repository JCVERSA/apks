package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

public final class F2 implements ProtobufConverter {
    @Override
    @NonNull
    public final Z1 fromModel(@NonNull H2 h2) {
        Z1 z1 = new Z1();
        G2 g2 = h2.a;
        if (g2 != null) {
            int iOrdinal = g2.ordinal();
            if (iOrdinal == 0) {
                z1.a = 1;
            } else if (iOrdinal == 1) {
                z1.a = 2;
            } else if (iOrdinal == 2) {
                z1.a = 3;
            } else if (iOrdinal == 3) {
                z1.a = 4;
            } else if (iOrdinal == 4) {
                z1.a = 5;
            }
        }
        Boolean bool = h2.b;
        if (bool != null) {
            if (bool.booleanValue()) {
                z1.b = 1;
            } else {
                z1.b = 0;
            }
        }
        return z1;
    }

    @Override
    @NonNull
    public final H2 toModel(@NonNull Z1 z1) {
        G2 g2;
        int i = z1.a;
        Boolean bool = null;
        if (i == 1) {
            g2 = G2.ACTIVE;
        } else if (i == 2) {
            g2 = G2.WORKING_SET;
        } else if (i == 3) {
            g2 = G2.FREQUENT;
        } else if (i != 4) {
            g2 = i != 5 ? null : G2.RESTRICTED;
        } else {
            g2 = G2.RARE;
        }
        int i2 = z1.b;
        if (i2 == 0) {
            bool = Boolean.FALSE;
        } else if (i2 == 1) {
            bool = Boolean.TRUE;
        }
        return new H2(g2, bool);
    }
}
