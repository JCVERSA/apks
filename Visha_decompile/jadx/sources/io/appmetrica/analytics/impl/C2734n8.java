package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class C2734n8 extends MessageNano {
    public static volatile C2734n8[] f;
    public byte[] a;
    public byte[] b;
    public C2833r8 c;
    public C2759o8[] d;
    public int e;

    public C2734n8() {
        a();
    }

    public static C2734n8[] b() {
        if (f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (f == null) {
                        f = new C2734n8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public final C2734n8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.a = bArr;
        this.b = bArr;
        this.c = null;
        this.d = C2759o8.b();
        this.e = 0;
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
        C2833r8 c2833r8 = this.c;
        if (c2833r8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c2833r8);
        }
        C2759o8[] c2759o8Arr = this.d;
        if (c2759o8Arr != null && c2759o8Arr.length > 0) {
            int i = 0;
            while (true) {
                C2759o8[] c2759o8Arr2 = this.d;
                if (i >= c2759o8Arr2.length) {
                    break;
                }
                C2759o8 c2759o8 = c2759o8Arr2[i];
                if (c2759o8 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(4, c2759o8) + iComputeSerializedSize;
                }
                i++;
            }
        }
        int i2 = this.e;
        return i2 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(5, i2) : iComputeSerializedSize;
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
        C2833r8 c2833r8 = this.c;
        if (c2833r8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c2833r8);
        }
        C2759o8[] c2759o8Arr = this.d;
        if (c2759o8Arr != null && c2759o8Arr.length > 0) {
            int i = 0;
            while (true) {
                C2759o8[] c2759o8Arr2 = this.d;
                if (i >= c2759o8Arr2.length) {
                    break;
                }
                C2759o8 c2759o8 = c2759o8Arr2[i];
                if (c2759o8 != null) {
                    codedOutputByteBufferNano.writeMessage(4, c2759o8);
                }
                i++;
            }
        }
        int i2 = this.e;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i2);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C2734n8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2734n8().mergeFrom(codedInputByteBufferNano);
    }

    @Override
    public final C2734n8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag == 18) {
                this.b = codedInputByteBufferNano.readBytes();
            } else if (tag == 26) {
                if (this.c == null) {
                    this.c = new C2833r8();
                }
                codedInputByteBufferNano.readMessage(this.c);
            } else if (tag == 34) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 34);
                C2759o8[] c2759o8Arr = this.d;
                int length = c2759o8Arr == null ? 0 : c2759o8Arr.length;
                int i = repeatedFieldArrayLength + length;
                C2759o8[] c2759o8Arr2 = new C2759o8[i];
                if (length != 0) {
                    System.arraycopy(c2759o8Arr, 0, c2759o8Arr2, 0, length);
                }
                while (length < i - 1) {
                    C2759o8 c2759o8 = new C2759o8();
                    c2759o8Arr2[length] = c2759o8;
                    codedInputByteBufferNano.readMessage(c2759o8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2759o8 c2759o9 = new C2759o8();
                c2759o8Arr2[length] = c2759o9;
                codedInputByteBufferNano.readMessage(c2759o9);
                this.d = c2759o8Arr2;
            } else if (tag != 40) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.e = codedInputByteBufferNano.readUInt32();
            }
        }
    }

    public static C2734n8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2734n8) MessageNano.mergeFrom(new C2734n8(), bArr);
    }
}
