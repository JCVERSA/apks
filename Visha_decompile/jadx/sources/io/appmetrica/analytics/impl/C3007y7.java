package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class C3007y7 implements Converter {
    public final C2982x7 a;

    /* JADX WARN: Multi-variable type inference failed */
    public C3007y7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final byte[] a(C3032z7 c3032z7) {
        return MessageNano.toByteArray(this.a.fromModel(c3032z7));
    }

    @Override
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.a.fromModel((C3032z7) obj));
    }

    public C3007y7(C2982x7 c2982x7) {
        this.a = c2982x7;
    }

    /* JADX WARN: Code duplicated, block: B:5:0x000f A[Catch: InvalidProtocolBufferNanoException -> 0x0015, TRY_LEAVE, TryCatch #0 {InvalidProtocolBufferNanoException -> 0x0015, blocks: (B:3:0x0002, B:5:0x000f), top: B:10:0x0002 }] */
    @Override
    public final C3032z7 toModel(byte[] bArr) {
        C2957w7 c2957w7;
        if (bArr != null) {
            try {
                c2957w7 = (C2957w7) MessageNano.mergeFrom(new C2957w7(), bArr);
                if (c2957w7 == null) {
                    c2957w7 = new C2957w7();
                }
            } catch (InvalidProtocolBufferNanoException unused) {
                c2957w7 = new C2957w7();
            }
        } else {
            c2957w7 = new C2957w7();
        }
        return this.a.toModel(c2957w7);
    }

    public C3007y7(C2982x7 c2982x7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new C2982x7(null, 1, null) : c2982x7);
    }
}
