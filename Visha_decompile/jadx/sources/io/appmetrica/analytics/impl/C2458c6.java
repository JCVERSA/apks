package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2458c6 extends MessageNano {
    public static volatile C2458c6[] d;
    public C2682l6 a;
    public C2682l6[] b;
    public String c;

    public C2458c6() {
        a();
    }

    public static C2458c6[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new C2458c6[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public final C2458c6 a() {
        this.a = null;
        this.b = C2682l6.b();
        this.c = "";
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2682l6 c2682l6 = this.a;
        if (c2682l6 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c2682l6);
        }
        C2682l6[] c2682l6Arr = this.b;
        if (c2682l6Arr != null && c2682l6Arr.length > 0) {
            int i = 0;
            while (true) {
                C2682l6[] c2682l6Arr2 = this.b;
                if (i >= c2682l6Arr2.length) {
                    break;
                }
                C2682l6 c2682l7 = c2682l6Arr2[i];
                if (c2682l7 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(2, c2682l7) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return !this.c.equals("") ? iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(3, this.c) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2682l6 c2682l6 = this.a;
        if (c2682l6 != null) {
            codedOutputByteBufferNano.writeMessage(1, c2682l6);
        }
        C2682l6[] c2682l6Arr = this.b;
        if (c2682l6Arr != null && c2682l6Arr.length > 0) {
            int i = 0;
            while (true) {
                C2682l6[] c2682l6Arr2 = this.b;
                if (i >= c2682l6Arr2.length) {
                    break;
                }
                C2682l6 c2682l7 = c2682l6Arr2[i];
                if (c2682l7 != null) {
                    codedOutputByteBufferNano.writeMessage(2, c2682l7);
                }
                i++;
            }
        }
        if (!this.c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.c);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2458c6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                if (this.a == null) {
                    this.a = new C2682l6();
                }
                codedInputByteBufferNano.readMessage(this.a);
            } else if (tag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                C2682l6[] c2682l6Arr = this.b;
                int length = c2682l6Arr == null ? 0 : c2682l6Arr.length;
                int i = repeatedFieldArrayLength + length;
                C2682l6[] c2682l6Arr2 = new C2682l6[i];
                if (length != 0) {
                    System.arraycopy(c2682l6Arr, 0, c2682l6Arr2, 0, length);
                }
                while (length < i - 1) {
                    C2682l6 c2682l6 = new C2682l6();
                    c2682l6Arr2[length] = c2682l6;
                    codedInputByteBufferNano.readMessage(c2682l6);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2682l6 c2682l7 = new C2682l6();
                c2682l6Arr2[length] = c2682l7;
                codedInputByteBufferNano.readMessage(c2682l7);
                this.b = c2682l6Arr2;
            } else if (tag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.c = codedInputByteBufferNano.readString();
            }
        }
    }

    public static C2458c6 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2458c6().mergeFrom(codedInputByteBufferNano);
    }

    public static C2458c6 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2458c6) MessageNano.mergeFrom(new C2458c6(), bArr);
    }
}
