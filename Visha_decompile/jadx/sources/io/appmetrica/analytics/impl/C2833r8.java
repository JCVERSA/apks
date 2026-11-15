package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2833r8 extends MessageNano {
    public static volatile C2833r8[] c;
    public C2809q8[] a;
    public int b;

    public C2833r8() {
        a();
    }

    public static C2833r8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C2833r8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final C2833r8 a() {
        this.a = C2809q8.b();
        this.b = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2809q8[] c2809q8Arr = this.a;
        if (c2809q8Arr != null && c2809q8Arr.length > 0) {
            int i = 0;
            while (true) {
                C2809q8[] c2809q8Arr2 = this.a;
                if (i >= c2809q8Arr2.length) {
                    break;
                }
                C2809q8 c2809q8 = c2809q8Arr2[i];
                if (c2809q8 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, c2809q8) + iComputeSerializedSize;
                }
                i++;
            }
        }
        int i2 = this.b;
        return i2 != 0 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeUInt32Size(2, i2) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2809q8[] c2809q8Arr = this.a;
        if (c2809q8Arr != null && c2809q8Arr.length > 0) {
            int i = 0;
            while (true) {
                C2809q8[] c2809q8Arr2 = this.a;
                if (i >= c2809q8Arr2.length) {
                    break;
                }
                C2809q8 c2809q8 = c2809q8Arr2[i];
                if (c2809q8 != null) {
                    codedOutputByteBufferNano.writeMessage(1, c2809q8);
                }
                i++;
            }
        }
        int i2 = this.b;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeUInt32(2, i2);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2833r8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                C2809q8[] c2809q8Arr = this.a;
                int length = c2809q8Arr == null ? 0 : c2809q8Arr.length;
                int i = repeatedFieldArrayLength + length;
                C2809q8[] c2809q8Arr2 = new C2809q8[i];
                if (length != 0) {
                    System.arraycopy(c2809q8Arr, 0, c2809q8Arr2, 0, length);
                }
                while (length < i - 1) {
                    C2809q8 c2809q8 = new C2809q8();
                    c2809q8Arr2[length] = c2809q8;
                    codedInputByteBufferNano.readMessage(c2809q8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2809q8 c2809q9 = new C2809q8();
                c2809q8Arr2[length] = c2809q9;
                codedInputByteBufferNano.readMessage(c2809q9);
                this.a = c2809q8Arr2;
            } else if (tag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.b = codedInputByteBufferNano.readUInt32();
            }
        }
    }

    public static C2833r8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2833r8().mergeFrom(codedInputByteBufferNano);
    }

    public static C2833r8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2833r8) MessageNano.mergeFrom(new C2833r8(), bArr);
    }
}
