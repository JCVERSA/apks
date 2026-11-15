package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class Ai extends MessageNano {
    public static volatile Ai[] d;
    public boolean a;
    public C3043zi b;
    public C3018yi c;

    public Ai() {
        a();
    }

    public static Ai[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new Ai[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public final Ai a() {
        this.a = false;
        this.b = null;
        this.c = null;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        boolean z = this.a;
        if (z) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z);
        }
        C3043zi c3043zi = this.b;
        if (c3043zi != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c3043zi);
        }
        C3018yi c3018yi = this.c;
        return c3018yi != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, c3018yi) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        boolean z = this.a;
        if (z) {
            codedOutputByteBufferNano.writeBool(1, z);
        }
        C3043zi c3043zi = this.b;
        if (c3043zi != null) {
            codedOutputByteBufferNano.writeMessage(2, c3043zi);
        }
        C3018yi c3018yi = this.c;
        if (c3018yi != null) {
            codedOutputByteBufferNano.writeMessage(3, c3018yi);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final Ai mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readBool();
            } else if (tag == 18) {
                if (this.b == null) {
                    this.b = new C3043zi();
                }
                codedInputByteBufferNano.readMessage(this.b);
            } else if (tag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                if (this.c == null) {
                    this.c = new C3018yi();
                }
                codedInputByteBufferNano.readMessage(this.c);
            }
        }
    }

    public static Ai b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new Ai().mergeFrom(codedInputByteBufferNano);
    }

    public static Ai a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (Ai) MessageNano.mergeFrom(new Ai(), bArr);
    }
}
