package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class C2610i8 extends MessageNano {
    public static volatile C2610i8[] c;
    public byte[] a;
    public C2709m8 b;

    public C2610i8() {
        a();
    }

    public static C2610i8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C2610i8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final C2610i8 a() {
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
        C2709m8 c2709m8 = this.b;
        return c2709m8 != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(2, c2709m8) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!Arrays.equals(this.a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        C2709m8 c2709m8 = this.b;
        if (c2709m8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c2709m8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2610i8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
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
                    this.b = new C2709m8();
                }
                codedInputByteBufferNano.readMessage(this.b);
            }
        }
    }

    public static C2610i8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2610i8().mergeFrom(codedInputByteBufferNano);
    }

    public static C2610i8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2610i8) MessageNano.mergeFrom(new C2610i8(), bArr);
    }
}
