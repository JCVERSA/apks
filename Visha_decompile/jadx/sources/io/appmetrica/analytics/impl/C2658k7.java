package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class C2658k7 implements Converter {
    public final C2633j7 a;

    /* JADX WARN: Multi-variable type inference failed */
    public C2658k7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final byte[] a(C2683l7 c2683l7) {
        return MessageNano.toByteArray(this.a.fromModel(c2683l7));
    }

    @Override
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.a.fromModel((C2683l7) obj));
    }

    public C2658k7(C2633j7 c2633j7) {
        this.a = c2633j7;
    }

    /* JADX WARN: Code duplicated, block: B:5:0x000f A[Catch: InvalidProtocolBufferNanoException -> 0x0015, TRY_LEAVE, TryCatch #0 {InvalidProtocolBufferNanoException -> 0x0015, blocks: (B:3:0x0002, B:5:0x000f), top: B:10:0x0002 }] */
    @Override
    public final C2683l7 toModel(byte[] bArr) {
        C2907u7 c2907u7;
        if (bArr != null) {
            try {
                c2907u7 = (C2907u7) MessageNano.mergeFrom(new C2907u7(), bArr);
                if (c2907u7 == null) {
                    c2907u7 = new C2907u7();
                }
            } catch (InvalidProtocolBufferNanoException unused) {
                c2907u7 = new C2907u7();
            }
        } else {
            c2907u7 = new C2907u7();
        }
        return this.a.toModel(c2907u7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C2658k7(C2633j7 c2633j7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            c2633j7 = new C2633j7(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
        this(c2633j7);
    }
}
