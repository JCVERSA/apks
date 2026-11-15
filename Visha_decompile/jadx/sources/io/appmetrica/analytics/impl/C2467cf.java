package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2467cf extends MessageNano {
    public static final int c = 0;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static volatile C2467cf[] g;
    public C2417af a;
    public C2442bf[] b;

    public C2467cf() {
        a();
    }

    public static C2467cf[] b() {
        if (g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (g == null) {
                        g = new C2467cf[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    public final C2467cf a() {
        this.a = null;
        this.b = C2442bf.b();
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2417af c2417af = this.a;
        if (c2417af != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c2417af);
        }
        C2442bf[] c2442bfArr = this.b;
        if (c2442bfArr != null && c2442bfArr.length > 0) {
            int i = 0;
            while (true) {
                C2442bf[] c2442bfArr2 = this.b;
                if (i >= c2442bfArr2.length) {
                    break;
                }
                C2442bf c2442bf = c2442bfArr2[i];
                if (c2442bf != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(2, c2442bf) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2417af c2417af = this.a;
        if (c2417af != null) {
            codedOutputByteBufferNano.writeMessage(1, c2417af);
        }
        C2442bf[] c2442bfArr = this.b;
        if (c2442bfArr != null && c2442bfArr.length > 0) {
            int i = 0;
            while (true) {
                C2442bf[] c2442bfArr2 = this.b;
                if (i >= c2442bfArr2.length) {
                    break;
                }
                C2442bf c2442bf = c2442bfArr2[i];
                if (c2442bf != null) {
                    codedOutputByteBufferNano.writeMessage(2, c2442bf);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2467cf mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                if (this.a == null) {
                    this.a = new C2417af();
                }
                codedInputByteBufferNano.readMessage(this.a);
            } else if (tag != 18) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                C2442bf[] c2442bfArr = this.b;
                int length = c2442bfArr == null ? 0 : c2442bfArr.length;
                int i = repeatedFieldArrayLength + length;
                C2442bf[] c2442bfArr2 = new C2442bf[i];
                if (length != 0) {
                    System.arraycopy(c2442bfArr, 0, c2442bfArr2, 0, length);
                }
                while (length < i - 1) {
                    C2442bf c2442bf = new C2442bf();
                    c2442bfArr2[length] = c2442bf;
                    codedInputByteBufferNano.readMessage(c2442bf);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2442bf c2442bf2 = new C2442bf();
                c2442bfArr2[length] = c2442bf2;
                codedInputByteBufferNano.readMessage(c2442bf2);
                this.b = c2442bfArr2;
            }
        }
    }

    public static C2467cf b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2467cf().mergeFrom(codedInputByteBufferNano);
    }

    public static C2467cf a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2467cf) MessageNano.mergeFrom(new C2467cf(), bArr);
    }
}
