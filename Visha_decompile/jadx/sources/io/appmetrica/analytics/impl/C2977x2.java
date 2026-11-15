package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2977x2 extends MessageNano {
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static volatile C2977x2[] f;
    public C2952w2[] a;
    public boolean b;

    public C2977x2() {
        a();
    }

    public static C2977x2[] b() {
        if (f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (f == null) {
                        f = new C2977x2[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public final C2977x2 a() {
        this.a = C2952w2.b();
        this.b = false;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2952w2[] c2952w2Arr = this.a;
        if (c2952w2Arr != null && c2952w2Arr.length > 0) {
            int i = 0;
            while (true) {
                C2952w2[] c2952w2Arr2 = this.a;
                if (i >= c2952w2Arr2.length) {
                    break;
                }
                C2952w2 c2952w2 = c2952w2Arr2[i];
                if (c2952w2 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, c2952w2) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return CodedOutputByteBufferNano.computeBoolSize(2, this.b) + iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2952w2[] c2952w2Arr = this.a;
        if (c2952w2Arr != null && c2952w2Arr.length > 0) {
            int i = 0;
            while (true) {
                C2952w2[] c2952w2Arr2 = this.a;
                if (i >= c2952w2Arr2.length) {
                    break;
                }
                C2952w2 c2952w2 = c2952w2Arr2[i];
                if (c2952w2 != null) {
                    codedOutputByteBufferNano.writeMessage(1, c2952w2);
                }
                i++;
            }
        }
        codedOutputByteBufferNano.writeBool(2, this.b);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2977x2 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                C2952w2[] c2952w2Arr = this.a;
                int length = c2952w2Arr == null ? 0 : c2952w2Arr.length;
                int i = repeatedFieldArrayLength + length;
                C2952w2[] c2952w2Arr2 = new C2952w2[i];
                if (length != 0) {
                    System.arraycopy(c2952w2Arr, 0, c2952w2Arr2, 0, length);
                }
                while (length < i - 1) {
                    C2952w2 c2952w2 = new C2952w2();
                    c2952w2Arr2[length] = c2952w2;
                    codedInputByteBufferNano.readMessage(c2952w2);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2952w2 c2952w3 = new C2952w2();
                c2952w2Arr2[length] = c2952w3;
                codedInputByteBufferNano.readMessage(c2952w3);
                this.a = c2952w2Arr2;
            } else if (tag != 16) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.b = codedInputByteBufferNano.readBool();
            }
        }
    }

    public static C2977x2 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2977x2().mergeFrom(codedInputByteBufferNano);
    }

    public static C2977x2 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2977x2) MessageNano.mergeFrom(new C2977x2(), bArr);
    }
}
