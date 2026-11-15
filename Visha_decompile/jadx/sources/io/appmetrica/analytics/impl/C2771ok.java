package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2771ok extends MessageNano {
    public static volatile C2771ok[] b;
    public C2796pk[] a;

    public C2771ok() {
        a();
    }

    public static C2771ok[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new C2771ok[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public final C2771ok a() {
        this.a = C2796pk.b();
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2796pk[] c2796pkArr = this.a;
        if (c2796pkArr != null && c2796pkArr.length > 0) {
            int i = 0;
            while (true) {
                C2796pk[] c2796pkArr2 = this.a;
                if (i >= c2796pkArr2.length) {
                    break;
                }
                C2796pk c2796pk = c2796pkArr2[i];
                if (c2796pk != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, c2796pk) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2796pk[] c2796pkArr = this.a;
        if (c2796pkArr != null && c2796pkArr.length > 0) {
            int i = 0;
            while (true) {
                C2796pk[] c2796pkArr2 = this.a;
                if (i >= c2796pkArr2.length) {
                    break;
                }
                C2796pk c2796pk = c2796pkArr2[i];
                if (c2796pk != null) {
                    codedOutputByteBufferNano.writeMessage(1, c2796pk);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2771ok mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
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
                C2796pk[] c2796pkArr = this.a;
                int length = c2796pkArr == null ? 0 : c2796pkArr.length;
                int i = repeatedFieldArrayLength + length;
                C2796pk[] c2796pkArr2 = new C2796pk[i];
                if (length != 0) {
                    System.arraycopy(c2796pkArr, 0, c2796pkArr2, 0, length);
                }
                while (length < i - 1) {
                    C2796pk c2796pk = new C2796pk();
                    c2796pkArr2[length] = c2796pk;
                    codedInputByteBufferNano.readMessage(c2796pk);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2796pk c2796pk2 = new C2796pk();
                c2796pkArr2[length] = c2796pk2;
                codedInputByteBufferNano.readMessage(c2796pk2);
                this.a = c2796pkArr2;
            }
        }
    }

    public static C2771ok b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2771ok().mergeFrom(codedInputByteBufferNano);
    }

    public static C2771ok a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2771ok) MessageNano.mergeFrom(new C2771ok(), bArr);
    }
}
