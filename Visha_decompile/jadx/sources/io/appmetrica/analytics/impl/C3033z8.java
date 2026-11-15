package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C3033z8 extends MessageNano {
    public static volatile C3033z8[] b;
    public C2958w8 a;

    public C3033z8() {
        a();
    }

    public static C3033z8[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new C3033z8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public final C3033z8 a() {
        this.a = null;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2958w8 c2958w8 = this.a;
        return c2958w8 != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, c2958w8) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2958w8 c2958w8 = this.a;
        if (c2958w8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c2958w8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C3033z8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
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
                    this.a = new C2958w8();
                }
                codedInputByteBufferNano.readMessage(this.a);
            }
        }
    }

    public static C3033z8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C3033z8().mergeFrom(codedInputByteBufferNano);
    }

    public static C3033z8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C3033z8) MessageNano.mergeFrom(new C3033z8(), bArr);
    }
}
