package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class P8 extends MessageNano {
    public static volatile P8[] b;
    public O8[] a;

    public P8() {
        a();
    }

    public static P8[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new P8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public final P8 a() {
        this.a = O8.b();
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        O8[] o8Arr = this.a;
        if (o8Arr != null && o8Arr.length > 0) {
            int i = 0;
            while (true) {
                O8[] o8Arr2 = this.a;
                if (i >= o8Arr2.length) {
                    break;
                }
                O8 o8 = o8Arr2[i];
                if (o8 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, o8) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        O8[] o8Arr = this.a;
        if (o8Arr != null && o8Arr.length > 0) {
            int i = 0;
            while (true) {
                O8[] o8Arr2 = this.a;
                if (i >= o8Arr2.length) {
                    break;
                }
                O8 o8 = o8Arr2[i];
                if (o8 != null) {
                    codedOutputByteBufferNano.writeMessage(1, o8);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final P8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
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
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                O8[] o8Arr = this.a;
                int length = o8Arr == null ? 0 : o8Arr.length;
                int i = repeatedFieldArrayLength + length;
                O8[] o8Arr2 = new O8[i];
                if (length != 0) {
                    System.arraycopy(o8Arr, 0, o8Arr2, 0, length);
                }
                while (length < i - 1) {
                    O8 o8 = new O8();
                    o8Arr2[length] = o8;
                    codedInputByteBufferNano.readMessage(o8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                O8 o9 = new O8();
                o8Arr2[length] = o9;
                codedInputByteBufferNano.readMessage(o9);
                this.a = o8Arr2;
            }
        }
    }

    public static P8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new P8().mergeFrom(codedInputByteBufferNano);
    }

    public static P8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (P8) MessageNano.mergeFrom(new P8(), bArr);
    }
}
