package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2511e9 extends MessageNano {
    public static volatile C2511e9[] c;
    public String a;
    public String b;

    public C2511e9() {
        a();
    }

    public static C2511e9[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C2511e9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final C2511e9 a() {
        this.a = "";
        this.b = "";
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeStringSize(2, this.b) + CodedOutputByteBufferNano.computeStringSize(1, this.a) + super.computeSerializedSize();
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        codedOutputByteBufferNano.writeString(1, this.a);
        codedOutputByteBufferNano.writeString(2, this.b);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2511e9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readString();
            } else if (tag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.b = codedInputByteBufferNano.readString();
            }
        }
    }

    public static C2511e9 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2511e9().mergeFrom(codedInputByteBufferNano);
    }

    public static C2511e9 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2511e9) MessageNano.mergeFrom(new C2511e9(), bArr);
    }
}
