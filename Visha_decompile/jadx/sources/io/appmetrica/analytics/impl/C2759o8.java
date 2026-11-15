package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2759o8 extends MessageNano {
    public static volatile C2759o8[] c;
    public int a;
    public C2659k8 b;

    public C2759o8() {
        a();
    }

    public static C2759o8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C2759o8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final C2759o8 a() {
        this.a = 0;
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        int i = this.a;
        if (i != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i);
        }
        C2659k8 c2659k8 = this.b;
        return c2659k8 != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, c2659k8) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        int i = this.a;
        if (i != 0) {
            codedOutputByteBufferNano.writeUInt32(1, i);
        }
        C2659k8 c2659k8 = this.b;
        if (c2659k8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c2659k8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2759o8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readUInt32();
            } else if (tag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                if (this.b == null) {
                    this.b = new C2659k8();
                }
                codedInputByteBufferNano.readMessage(this.b);
            }
        }
    }

    public static C2759o8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2759o8().mergeFrom(codedInputByteBufferNano);
    }

    public static C2759o8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2759o8) MessageNano.mergeFrom(new C2759o8(), bArr);
    }
}
