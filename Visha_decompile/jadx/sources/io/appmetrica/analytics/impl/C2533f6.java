package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class C2533f6 extends MessageNano {
    public static volatile C2533f6[] c;
    public byte[] a;
    public C2632j6 b;

    public C2533f6() {
        a();
    }

    public static C2533f6[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C2533f6[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final C2533f6 a() {
        this.a = WireFormatNano.EMPTY_BYTES;
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.a, WireFormatNano.EMPTY_BYTES)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.a);
        }
        C2632j6 c2632j6 = this.b;
        return c2632j6 != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, c2632j6) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!Arrays.equals(this.a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        C2632j6 c2632j6 = this.b;
        if (c2632j6 != null) {
            codedOutputByteBufferNano.writeMessage(2, c2632j6);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2533f6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                if (this.b == null) {
                    this.b = new C2632j6();
                }
                codedInputByteBufferNano.readMessage(this.b);
            }
        }
    }

    public static C2533f6 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2533f6().mergeFrom(codedInputByteBufferNano);
    }

    public static C2533f6 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2533f6) MessageNano.mergeFrom(new C2533f6(), bArr);
    }
}
