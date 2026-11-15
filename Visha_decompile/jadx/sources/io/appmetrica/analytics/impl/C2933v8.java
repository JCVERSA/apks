package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class C2933v8 extends MessageNano {
    public static volatile C2933v8[] d;
    public byte[] a;
    public byte[] b;
    public C2958w8 c;

    public C2933v8() {
        a();
    }

    public static C2933v8[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new C2933v8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public final C2933v8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.a = bArr;
        this.b = bArr;
        this.c = null;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.a);
        }
        if (!Arrays.equals(this.b, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(2, this.b);
        }
        C2958w8 c2958w8 = this.c;
        return c2958w8 != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(3, c2958w8) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        byte[] bArr = this.a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        if (!Arrays.equals(this.b, bArr2)) {
            codedOutputByteBufferNano.writeBytes(2, this.b);
        }
        C2958w8 c2958w8 = this.c;
        if (c2958w8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c2958w8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2933v8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag == 18) {
                this.b = codedInputByteBufferNano.readBytes();
            } else if (tag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                if (this.c == null) {
                    this.c = new C2958w8();
                }
                codedInputByteBufferNano.readMessage(this.c);
            }
        }
    }

    public static C2933v8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2933v8().mergeFrom(codedInputByteBufferNano);
    }

    public static C2933v8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2933v8) MessageNano.mergeFrom(new C2933v8(), bArr);
    }
}
