package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2634j8 extends MessageNano {
    public static volatile C2634j8[] b;
    public C2659k8 a;

    public C2634j8() {
        a();
    }

    public static C2634j8[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new C2634j8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public final C2634j8 a() {
        this.a = null;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2659k8 c2659k8 = this.a;
        return c2659k8 != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(1, c2659k8) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2659k8 c2659k8 = this.a;
        if (c2659k8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c2659k8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2634j8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
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
                    this.a = new C2659k8();
                }
                codedInputByteBufferNano.readMessage(this.a);
            }
        }
    }

    public static C2634j8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2634j8().mergeFrom(codedInputByteBufferNano);
    }

    public static C2634j8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2634j8) MessageNano.mergeFrom(new C2634j8(), bArr);
    }
}
