package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class Ol extends MessageNano {
    public static volatile Ol[] c;
    public String a;
    public Nl b;

    public Ol() {
        a();
    }

    public static Ol[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new Ol[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final Ol a() {
        this.a = "";
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (!this.a.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.a);
        }
        Nl nl = this.b;
        return nl != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, nl) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!this.a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.a);
        }
        Nl nl = this.b;
        if (nl != null) {
            codedOutputByteBufferNano.writeMessage(2, nl);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final Ol mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
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
                if (this.b == null) {
                    this.b = new Nl();
                }
                codedInputByteBufferNano.readMessage(this.b);
            }
        }
    }

    public static Ol b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new Ol().mergeFrom(codedInputByteBufferNano);
    }

    public static Ol a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (Ol) MessageNano.mergeFrom(new Ol(), bArr);
    }
}
