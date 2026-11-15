package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2429b2 extends MessageNano {
    public static volatile C2429b2[] d;
    public C2404a2[] a;
    public Z1 b;
    public String[] c;

    public C2429b2() {
        a();
    }

    public static C2429b2[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new C2429b2[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public final C2429b2 a() {
        this.a = C2404a2.b();
        this.b = null;
        this.c = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2404a2[] c2404a2Arr = this.a;
        int i = 0;
        if (c2404a2Arr != null && c2404a2Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C2404a2[] c2404a2Arr2 = this.a;
                if (i2 >= c2404a2Arr2.length) {
                    break;
                }
                C2404a2 c2404a2 = c2404a2Arr2[i2];
                if (c2404a2 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, c2404a2) + iComputeSerializedSize;
                }
                i2++;
            }
        }
        Z1 z1 = this.b;
        if (z1 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, z1);
        }
        String[] strArr = this.c;
        if (strArr == null || strArr.length <= 0) {
            return iComputeSerializedSize;
        }
        int iComputeStringSizeNoTag = 0;
        int i3 = 0;
        while (true) {
            String[] strArr2 = this.c;
            if (i >= strArr2.length) {
                return iComputeSerializedSize + iComputeStringSizeNoTag + i3;
            }
            String str = strArr2[i];
            if (str != null) {
                i3++;
                iComputeStringSizeNoTag = CodedOutputByteBufferNano.computeStringSizeNoTag(str) + iComputeStringSizeNoTag;
            }
            i++;
        }
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2404a2[] c2404a2Arr = this.a;
        int i = 0;
        if (c2404a2Arr != null && c2404a2Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C2404a2[] c2404a2Arr2 = this.a;
                if (i2 >= c2404a2Arr2.length) {
                    break;
                }
                C2404a2 c2404a2 = c2404a2Arr2[i2];
                if (c2404a2 != null) {
                    codedOutputByteBufferNano.writeMessage(1, c2404a2);
                }
                i2++;
            }
        }
        Z1 z1 = this.b;
        if (z1 != null) {
            codedOutputByteBufferNano.writeMessage(2, z1);
        }
        String[] strArr = this.c;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.c;
                if (i >= strArr2.length) {
                    break;
                }
                String str = strArr2[i];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(3, str);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2429b2 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                C2404a2[] c2404a2Arr = this.a;
                int length = c2404a2Arr == null ? 0 : c2404a2Arr.length;
                int i = repeatedFieldArrayLength + length;
                C2404a2[] c2404a2Arr2 = new C2404a2[i];
                if (length != 0) {
                    System.arraycopy(c2404a2Arr, 0, c2404a2Arr2, 0, length);
                }
                while (length < i - 1) {
                    C2404a2 c2404a2 = new C2404a2();
                    c2404a2Arr2[length] = c2404a2;
                    codedInputByteBufferNano.readMessage(c2404a2);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2404a2 c2404a3 = new C2404a2();
                c2404a2Arr2[length] = c2404a3;
                codedInputByteBufferNano.readMessage(c2404a3);
                this.a = c2404a2Arr2;
            } else if (tag == 18) {
                if (this.b == null) {
                    this.b = new Z1();
                }
                codedInputByteBufferNano.readMessage(this.b);
            } else if (tag != 26) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                String[] strArr = this.c;
                int length2 = strArr == null ? 0 : strArr.length;
                int i2 = repeatedFieldArrayLength2 + length2;
                String[] strArr2 = new String[i2];
                if (length2 != 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, length2);
                }
                while (length2 < i2 - 1) {
                    strArr2[length2] = codedInputByteBufferNano.readString();
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                strArr2[length2] = codedInputByteBufferNano.readString();
                this.c = strArr2;
            }
        }
    }

    public static C2429b2 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2429b2().mergeFrom(codedInputByteBufferNano);
    }

    public static C2429b2 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2429b2) MessageNano.mergeFrom(new C2429b2(), bArr);
    }
}
