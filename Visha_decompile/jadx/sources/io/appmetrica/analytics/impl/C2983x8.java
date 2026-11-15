package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2983x8 extends MessageNano {
    public static volatile C2983x8[] c;
    public C2883t8 a;
    public C2958w8 b;

    public C2983x8() {
        a();
    }

    public static C2983x8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C2983x8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final C2983x8 a() {
        this.a = null;
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2883t8 c2883t8 = this.a;
        if (c2883t8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c2883t8);
        }
        C2958w8 c2958w8 = this.b;
        return c2958w8 != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, c2958w8) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2883t8 c2883t8 = this.a;
        if (c2883t8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c2883t8);
        }
        C2958w8 c2958w8 = this.b;
        if (c2958w8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c2958w8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2983x8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                if (this.a == null) {
                    this.a = new C2883t8();
                }
                codedInputByteBufferNano.readMessage(this.a);
            } else if (tag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                if (this.b == null) {
                    this.b = new C2958w8();
                }
                codedInputByteBufferNano.readMessage(this.b);
            }
        }
    }

    public static C2983x8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2983x8().mergeFrom(codedInputByteBufferNano);
    }

    public static C2983x8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2983x8) MessageNano.mergeFrom(new C2983x8(), bArr);
    }
}
