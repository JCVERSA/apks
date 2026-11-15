package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class C2883t8 extends MessageNano {
    public static volatile C2883t8[] h;
    public byte[] a;
    public byte[] b;
    public C2684l8 c;
    public C2833r8 d;
    public C2858s8 e;
    public C2858s8 f;
    public C2908u8[] g;

    public C2883t8() {
        a();
    }

    public static C2883t8[] b() {
        if (h == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (h == null) {
                        h = new C2883t8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return h;
    }

    public final C2883t8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.a = bArr;
        this.b = bArr;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = C2908u8.b();
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
        C2684l8 c2684l8 = this.c;
        if (c2684l8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c2684l8);
        }
        C2833r8 c2833r8 = this.d;
        if (c2833r8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c2833r8);
        }
        C2858s8 c2858s8 = this.e;
        if (c2858s8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(5, c2858s8);
        }
        C2858s8 c2858s9 = this.f;
        if (c2858s9 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(6, c2858s9);
        }
        C2908u8[] c2908u8Arr = this.g;
        if (c2908u8Arr != null && c2908u8Arr.length > 0) {
            int i = 0;
            while (true) {
                C2908u8[] c2908u8Arr2 = this.g;
                if (i >= c2908u8Arr2.length) {
                    break;
                }
                C2908u8 c2908u8 = c2908u8Arr2[i];
                if (c2908u8 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(7, c2908u8) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
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
        C2684l8 c2684l8 = this.c;
        if (c2684l8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c2684l8);
        }
        C2833r8 c2833r8 = this.d;
        if (c2833r8 != null) {
            codedOutputByteBufferNano.writeMessage(4, c2833r8);
        }
        C2858s8 c2858s8 = this.e;
        if (c2858s8 != null) {
            codedOutputByteBufferNano.writeMessage(5, c2858s8);
        }
        C2858s8 c2858s9 = this.f;
        if (c2858s9 != null) {
            codedOutputByteBufferNano.writeMessage(6, c2858s9);
        }
        C2908u8[] c2908u8Arr = this.g;
        if (c2908u8Arr != null && c2908u8Arr.length > 0) {
            int i = 0;
            while (true) {
                C2908u8[] c2908u8Arr2 = this.g;
                if (i >= c2908u8Arr2.length) {
                    break;
                }
                C2908u8 c2908u8 = c2908u8Arr2[i];
                if (c2908u8 != null) {
                    codedOutputByteBufferNano.writeMessage(7, c2908u8);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C2883t8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2883t8().mergeFrom(codedInputByteBufferNano);
    }

    @Override
    public final C2883t8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
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
                    this.c = new C2684l8();
                }
                codedInputByteBufferNano.readMessage(this.c);
            } else if (tag == 34) {
                if (this.d == null) {
                    this.d = new C2833r8();
                }
                codedInputByteBufferNano.readMessage(this.d);
            } else if (tag == 42) {
                if (this.e == null) {
                    this.e = new C2858s8();
                }
                codedInputByteBufferNano.readMessage(this.e);
            } else if (tag == 50) {
                if (this.f == null) {
                    this.f = new C2858s8();
                }
                codedInputByteBufferNano.readMessage(this.f);
            } else if (tag != 58) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                C2908u8[] c2908u8Arr = this.g;
                int length = c2908u8Arr == null ? 0 : c2908u8Arr.length;
                int i = repeatedFieldArrayLength + length;
                C2908u8[] c2908u8Arr2 = new C2908u8[i];
                if (length != 0) {
                    System.arraycopy(c2908u8Arr, 0, c2908u8Arr2, 0, length);
                }
                while (length < i - 1) {
                    C2908u8 c2908u8 = new C2908u8();
                    c2908u8Arr2[length] = c2908u8;
                    codedInputByteBufferNano.readMessage(c2908u8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2908u8 c2908u9 = new C2908u8();
                c2908u8Arr2[length] = c2908u9;
                codedInputByteBufferNano.readMessage(c2908u9);
                this.g = c2908u8Arr2;
            }
        }
    }

    public static C2883t8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2883t8) MessageNano.mergeFrom(new C2883t8(), bArr);
    }
}
