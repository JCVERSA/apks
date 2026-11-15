package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2561g9 extends MessageNano {
    public static volatile C2561g9[] c;
    public String a;
    public long b;

    public C2561g9() {
        a();
    }

    public static C2561g9[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C2561g9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final C2561g9 a() {
        this.a = "";
        this.b = 0L;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeUInt64Size(2, this.b) + CodedOutputByteBufferNano.computeStringSize(1, this.a) + super.computeSerializedSize();
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        codedOutputByteBufferNano.writeString(1, this.a);
        codedOutputByteBufferNano.writeUInt64(2, this.b);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2561g9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readString();
            } else if (tag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.b = codedInputByteBufferNano.readUInt64();
            }
        }
    }

    public static C2561g9 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2561g9().mergeFrom(codedInputByteBufferNano);
    }

    public static C2561g9 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2561g9) MessageNano.mergeFrom(new C2561g9(), bArr);
    }
}
