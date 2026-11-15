package io.appmetrica.analytics.impl;

import defpackage.qv0;
import io.appmetrica.analytics.ExternalAttribution;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

public class L2 implements ExternalAttribution {
    public final H9 a;

    public L2(H9 h9) {
        this.a = h9;
    }

    @Override
    public final byte[] toBytes() {
        return MessageNano.toByteArray(this.a);
    }

    public final String toString() {
        return "ExternalAttribution(type=`" + R9.a(this.a.a) + "`value=`" + new String(this.a.b, qv0.b) + "`)";
    }
}
