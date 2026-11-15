package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2784p8 extends MessageNano {
    public static volatile C2784p8[] b;
    public C2734n8 a;

    public C2784p8() {
        a();
    }

    public static C2784p8[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new C2784p8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public final C2784p8 a() {
        this.a = null;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2734n8 c2734n8 = this.a;
        return c2734n8 != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, c2734n8) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2734n8 c2734n8 = this.a;
        if (c2734n8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c2734n8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2784p8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag != 10) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                if (this.a == null) {
                    this.a = new C2734n8();
                }
                codedInputByteBufferNano.readMessage(this.a);
            }
        }
    }

    public static C2784p8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2784p8().mergeFrom(codedInputByteBufferNano);
    }

    public static C2784p8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2784p8) MessageNano.mergeFrom(new C2784p8(), bArr);
    }
}
