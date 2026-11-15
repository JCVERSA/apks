package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2710m9 extends MessageNano {
    public static final int d = 0;
    public static final int e = 1;
    public static final int f = 2;
    public static final int g = 3;
    public static final int h = 4;
    public static final int i = 5;
    public static final int j = 6;
    public static final int k = 7;
    public static final int l = 8;
    public static final int m = 9;
    public static final int n = 10;
    public static final int o = 11;
    public static final int p = 12;
    public static volatile C2710m9[] q;
    public long a;
    public C2685l9 b;
    public C2660k9[] c;

    public C2710m9() {
        a();
    }

    public static C2710m9[] b() {
        if (q == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (q == null) {
                        q = new C2710m9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return q;
    }

    public final C2710m9 a() {
        this.a = 0L;
        this.b = null;
        this.c = C2660k9.b();
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeUInt64Size = CodedOutputByteBufferNano.computeUInt64Size(1, this.a) + super.computeSerializedSize();
        C2685l9 c2685l9 = this.b;
        if (c2685l9 != null) {
            iComputeUInt64Size += CodedOutputByteBufferNano.computeMessageSize(2, c2685l9);
        }
        C2660k9[] c2660k9Arr = this.c;
        if (c2660k9Arr != null && c2660k9Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C2660k9[] c2660k9Arr2 = this.c;
                if (i2 >= c2660k9Arr2.length) {
                    break;
                }
                C2660k9 c2660k9 = c2660k9Arr2[i2];
                if (c2660k9 != null) {
                    iComputeUInt64Size = CodedOutputByteBufferNano.computeMessageSize(3, c2660k9) + iComputeUInt64Size;
                }
                i2++;
            }
        }
        return iComputeUInt64Size;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        codedOutputByteBufferNano.writeUInt64(1, this.a);
        C2685l9 c2685l9 = this.b;
        if (c2685l9 != null) {
            codedOutputByteBufferNano.writeMessage(2, c2685l9);
        }
        C2660k9[] c2660k9Arr = this.c;
        if (c2660k9Arr != null && c2660k9Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C2660k9[] c2660k9Arr2 = this.c;
                if (i2 >= c2660k9Arr2.length) {
                    break;
                }
                C2660k9 c2660k9 = c2660k9Arr2[i2];
                if (c2660k9 != null) {
                    codedOutputByteBufferNano.writeMessage(3, c2660k9);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2710m9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readUInt64();
            } else if (tag == 18) {
                if (this.b == null) {
                    this.b = new C2685l9();
                }
                codedInputByteBufferNano.readMessage(this.b);
            } else if (tag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                C2660k9[] c2660k9Arr = this.c;
                int length = c2660k9Arr == null ? 0 : c2660k9Arr.length;
                int i2 = repeatedFieldArrayLength + length;
                C2660k9[] c2660k9Arr2 = new C2660k9[i2];
                if (length != 0) {
                    System.arraycopy(c2660k9Arr, 0, c2660k9Arr2, 0, length);
                }
                while (length < i2 - 1) {
                    C2660k9 c2660k9 = new C2660k9();
                    c2660k9Arr2[length] = c2660k9;
                    codedInputByteBufferNano.readMessage(c2660k9);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2660k9 c2660k10 = new C2660k9();
                c2660k9Arr2[length] = c2660k10;
                codedInputByteBufferNano.readMessage(c2660k10);
                this.c = c2660k9Arr2;
            }
        }
    }

    public static C2710m9 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2710m9().mergeFrom(codedInputByteBufferNano);
    }

    public static C2710m9 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2710m9) MessageNano.mergeFrom(new C2710m9(), bArr);
    }
}
