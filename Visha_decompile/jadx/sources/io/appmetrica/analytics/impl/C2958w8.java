package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class C2958w8 extends MessageNano {
    public static volatile C2958w8[] e;
    public byte[] a;
    public C2684l8 b;
    public byte[] c;
    public C2833r8 d;

    public C2958w8() {
        a();
    }

    public static C2958w8[] b() {
        if (e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (e == null) {
                        e = new C2958w8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public final C2958w8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.a = bArr;
        this.b = null;
        this.c = bArr;
        this.d = null;
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
        C2684l8 c2684l8 = this.b;
        if (c2684l8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c2684l8);
        }
        if (!Arrays.equals(this.c, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(3, this.c);
        }
        C2833r8 c2833r8 = this.d;
        return c2833r8 != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, c2833r8) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        byte[] bArr = this.a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        C2684l8 c2684l8 = this.b;
        if (c2684l8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c2684l8);
        }
        if (!Arrays.equals(this.c, bArr2)) {
            codedOutputByteBufferNano.writeBytes(3, this.c);
        }
        C2833r8 c2833r8 = this.d;
        if (c2833r8 != null) {
            codedOutputByteBufferNano.writeMessage(4, c2833r8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2958w8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag == 18) {
                if (this.b == null) {
                    this.b = new C2684l8();
                }
                codedInputByteBufferNano.readMessage(this.b);
            } else if (tag == 26) {
                this.c = codedInputByteBufferNano.readBytes();
            } else if (tag != 34) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                if (this.d == null) {
                    this.d = new C2833r8();
                }
                codedInputByteBufferNano.readMessage(this.d);
            }
        }
    }

    public static C2958w8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2958w8().mergeFrom(codedInputByteBufferNano);
    }

    public static C2958w8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2958w8) MessageNano.mergeFrom(new C2958w8(), bArr);
    }
}
