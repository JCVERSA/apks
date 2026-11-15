package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2483d6 extends MessageNano {
    public static volatile C2483d6[] d;
    public C2458c6 a;
    public String b;
    public int c;

    public C2483d6() {
        a();
    }

    public static C2483d6[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new C2483d6[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public final C2483d6 a() {
        this.a = null;
        this.b = "";
        this.c = -1;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2458c6 c2458c6 = this.a;
        if (c2458c6 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c2458c6);
        }
        if (!this.b.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.b);
        }
        int i = this.c;
        return i != -1 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeInt32Size(3, i) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2458c6 c2458c6 = this.a;
        if (c2458c6 != null) {
            codedOutputByteBufferNano.writeMessage(1, c2458c6);
        }
        if (!this.b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.b);
        }
        int i = this.c;
        if (i != -1) {
            codedOutputByteBufferNano.writeInt32(3, i);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2483d6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                if (this.a == null) {
                    this.a = new C2458c6();
                }
                codedInputByteBufferNano.readMessage(this.a);
            } else if (tag == 18) {
                this.b = codedInputByteBufferNano.readString();
            } else if (tag != 24) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                int int32 = codedInputByteBufferNano.readInt32();
                if (int32 == -1 || int32 == 0 || int32 == 1) {
                    this.c = int32;
                }
            }
        }
    }

    public static C2483d6 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2483d6().mergeFrom(codedInputByteBufferNano);
    }

    public static C2483d6 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2483d6) MessageNano.mergeFrom(new C2483d6(), bArr);
    }
}
