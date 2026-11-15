package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2858s8 extends MessageNano {
    public static volatile C2858s8[] c;
    public C2610i8 a;
    public C2610i8[] b;

    public C2858s8() {
        a();
    }

    public static C2858s8[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new C2858s8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final C2858s8 a() {
        this.a = null;
        this.b = C2610i8.b();
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2610i8 c2610i8 = this.a;
        if (c2610i8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c2610i8);
        }
        C2610i8[] c2610i8Arr = this.b;
        if (c2610i8Arr != null && c2610i8Arr.length > 0) {
            int i = 0;
            while (true) {
                C2610i8[] c2610i8Arr2 = this.b;
                if (i >= c2610i8Arr2.length) {
                    break;
                }
                C2610i8 c2610i9 = c2610i8Arr2[i];
                if (c2610i9 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(2, c2610i9) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2610i8 c2610i8 = this.a;
        if (c2610i8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c2610i8);
        }
        C2610i8[] c2610i8Arr = this.b;
        if (c2610i8Arr != null && c2610i8Arr.length > 0) {
            int i = 0;
            while (true) {
                C2610i8[] c2610i8Arr2 = this.b;
                if (i >= c2610i8Arr2.length) {
                    break;
                }
                C2610i8 c2610i9 = c2610i8Arr2[i];
                if (c2610i9 != null) {
                    codedOutputByteBufferNano.writeMessage(2, c2610i9);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2858s8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                if (this.a == null) {
                    this.a = new C2610i8();
                }
                codedInputByteBufferNano.readMessage(this.a);
            } else if (tag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                C2610i8[] c2610i8Arr = this.b;
                int length = c2610i8Arr == null ? 0 : c2610i8Arr.length;
                int i = repeatedFieldArrayLength + length;
                C2610i8[] c2610i8Arr2 = new C2610i8[i];
                if (length != 0) {
                    System.arraycopy(c2610i8Arr, 0, c2610i8Arr2, 0, length);
                }
                while (length < i - 1) {
                    C2610i8 c2610i8 = new C2610i8();
                    c2610i8Arr2[length] = c2610i8;
                    codedInputByteBufferNano.readMessage(c2610i8);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2610i8 c2610i9 = new C2610i8();
                c2610i8Arr2[length] = c2610i9;
                codedInputByteBufferNano.readMessage(c2610i9);
                this.b = c2610i8Arr2;
            }
        }
    }

    public static C2858s8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2858s8().mergeFrom(codedInputByteBufferNano);
    }

    public static C2858s8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2858s8) MessageNano.mergeFrom(new C2858s8(), bArr);
    }
}
