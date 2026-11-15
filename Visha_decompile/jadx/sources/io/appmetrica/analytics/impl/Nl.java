package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class Nl extends MessageNano {
    public static volatile Nl[] b;
    public String a;

    public Nl() {
        a();
    }

    public static Nl[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new Nl[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public final Nl a() {
        this.a = "";
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        return !this.a.equals("") ? iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(1, this.a) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!this.a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.a);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final Nl mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
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
                this.a = codedInputByteBufferNano.readString();
            }
        }
    }

    public static Nl a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (Nl) MessageNano.mergeFrom(new Nl(), bArr);
    }

    public static Nl b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new Nl().mergeFrom(codedInputByteBufferNano);
    }
}
