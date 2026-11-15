package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2785p9 extends MessageNano {
    public static final int f = -1;
    public static final int g = 0;
    public static final int h = 1;
    public static volatile C2785p9[] i;
    public C2710m9[] a;
    public C2586h9 b;
    public C2511e9[] c;
    public C2735n9[] d;
    public String[] e;

    public C2785p9() {
        a();
    }

    public static C2785p9[] b() {
        if (i == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (i == null) {
                        i = new C2785p9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return i;
    }

    public final C2785p9 a() {
        this.a = C2710m9.b();
        this.b = null;
        this.c = C2511e9.b();
        this.d = C2735n9.b();
        this.e = WireFormatNano.EMPTY_STRING_ARRAY;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2710m9[] c2710m9Arr = this.a;
        int i2 = 0;
        if (c2710m9Arr != null && c2710m9Arr.length > 0) {
            int i3 = 0;
            while (true) {
                C2710m9[] c2710m9Arr2 = this.a;
                if (i3 >= c2710m9Arr2.length) {
                    break;
                }
                C2710m9 c2710m9 = c2710m9Arr2[i3];
                if (c2710m9 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(3, c2710m9) + iComputeSerializedSize;
                }
                i3++;
            }
        }
        C2586h9 c2586h9 = this.b;
        if (c2586h9 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(4, c2586h9);
        }
        C2511e9[] c2511e9Arr = this.c;
        if (c2511e9Arr != null && c2511e9Arr.length > 0) {
            int i4 = 0;
            while (true) {
                C2511e9[] c2511e9Arr2 = this.c;
                if (i4 >= c2511e9Arr2.length) {
                    break;
                }
                C2511e9 c2511e9 = c2511e9Arr2[i4];
                if (c2511e9 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(7, c2511e9) + iComputeSerializedSize;
                }
                i4++;
            }
        }
        C2735n9[] c2735n9Arr = this.d;
        if (c2735n9Arr != null && c2735n9Arr.length > 0) {
            int i5 = 0;
            while (true) {
                C2735n9[] c2735n9Arr2 = this.d;
                if (i5 >= c2735n9Arr2.length) {
                    break;
                }
                C2735n9 c2735n9 = c2735n9Arr2[i5];
                if (c2735n9 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(10, c2735n9) + iComputeSerializedSize;
                }
                i5++;
            }
        }
        String[] strArr = this.e;
        if (strArr == null || strArr.length <= 0) {
            return iComputeSerializedSize;
        }
        int iComputeStringSizeNoTag = 0;
        int i6 = 0;
        while (true) {
            String[] strArr2 = this.e;
            if (i2 >= strArr2.length) {
                return iComputeSerializedSize + iComputeStringSizeNoTag + i6;
            }
            String str = strArr2[i2];
            if (str != null) {
                i6++;
                iComputeStringSizeNoTag = CodedOutputByteBufferNano.computeStringSizeNoTag(str) + iComputeStringSizeNoTag;
            }
            i2++;
        }
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2710m9[] c2710m9Arr = this.a;
        int i2 = 0;
        if (c2710m9Arr != null && c2710m9Arr.length > 0) {
            int i3 = 0;
            while (true) {
                C2710m9[] c2710m9Arr2 = this.a;
                if (i3 >= c2710m9Arr2.length) {
                    break;
                }
                C2710m9 c2710m9 = c2710m9Arr2[i3];
                if (c2710m9 != null) {
                    codedOutputByteBufferNano.writeMessage(3, c2710m9);
                }
                i3++;
            }
        }
        C2586h9 c2586h9 = this.b;
        if (c2586h9 != null) {
            codedOutputByteBufferNano.writeMessage(4, c2586h9);
        }
        C2511e9[] c2511e9Arr = this.c;
        if (c2511e9Arr != null && c2511e9Arr.length > 0) {
            int i4 = 0;
            while (true) {
                C2511e9[] c2511e9Arr2 = this.c;
                if (i4 >= c2511e9Arr2.length) {
                    break;
                }
                C2511e9 c2511e9 = c2511e9Arr2[i4];
                if (c2511e9 != null) {
                    codedOutputByteBufferNano.writeMessage(7, c2511e9);
                }
                i4++;
            }
        }
        C2735n9[] c2735n9Arr = this.d;
        if (c2735n9Arr != null && c2735n9Arr.length > 0) {
            int i5 = 0;
            while (true) {
                C2735n9[] c2735n9Arr2 = this.d;
                if (i5 >= c2735n9Arr2.length) {
                    break;
                }
                C2735n9 c2735n9 = c2735n9Arr2[i5];
                if (c2735n9 != null) {
                    codedOutputByteBufferNano.writeMessage(10, c2735n9);
                }
                i5++;
            }
        }
        String[] strArr = this.e;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.e;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    codedOutputByteBufferNano.writeString(11, str);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C2785p9 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2785p9().mergeFrom(codedInputByteBufferNano);
    }

    @Override
    public final C2785p9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 26) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                C2710m9[] c2710m9Arr = this.a;
                int length = c2710m9Arr == null ? 0 : c2710m9Arr.length;
                int i2 = repeatedFieldArrayLength + length;
                C2710m9[] c2710m9Arr2 = new C2710m9[i2];
                if (length != 0) {
                    System.arraycopy(c2710m9Arr, 0, c2710m9Arr2, 0, length);
                }
                while (length < i2 - 1) {
                    C2710m9 c2710m9 = new C2710m9();
                    c2710m9Arr2[length] = c2710m9;
                    codedInputByteBufferNano.readMessage(c2710m9);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2710m9 c2710m10 = new C2710m9();
                c2710m9Arr2[length] = c2710m10;
                codedInputByteBufferNano.readMessage(c2710m10);
                this.a = c2710m9Arr2;
            } else if (tag == 34) {
                if (this.b == null) {
                    this.b = new C2586h9();
                }
                codedInputByteBufferNano.readMessage(this.b);
            } else if (tag == 58) {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 58);
                C2511e9[] c2511e9Arr = this.c;
                int length2 = c2511e9Arr == null ? 0 : c2511e9Arr.length;
                int i3 = repeatedFieldArrayLength2 + length2;
                C2511e9[] c2511e9Arr2 = new C2511e9[i3];
                if (length2 != 0) {
                    System.arraycopy(c2511e9Arr, 0, c2511e9Arr2, 0, length2);
                }
                while (length2 < i3 - 1) {
                    C2511e9 c2511e9 = new C2511e9();
                    c2511e9Arr2[length2] = c2511e9;
                    codedInputByteBufferNano.readMessage(c2511e9);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                C2511e9 c2511e10 = new C2511e9();
                c2511e9Arr2[length2] = c2511e10;
                codedInputByteBufferNano.readMessage(c2511e10);
                this.c = c2511e9Arr2;
            } else if (tag == 82) {
                int repeatedFieldArrayLength3 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 82);
                C2735n9[] c2735n9Arr = this.d;
                int length3 = c2735n9Arr == null ? 0 : c2735n9Arr.length;
                int i4 = repeatedFieldArrayLength3 + length3;
                C2735n9[] c2735n9Arr2 = new C2735n9[i4];
                if (length3 != 0) {
                    System.arraycopy(c2735n9Arr, 0, c2735n9Arr2, 0, length3);
                }
                while (length3 < i4 - 1) {
                    C2735n9 c2735n9 = new C2735n9();
                    c2735n9Arr2[length3] = c2735n9;
                    codedInputByteBufferNano.readMessage(c2735n9);
                    codedInputByteBufferNano.readTag();
                    length3++;
                }
                C2735n9 c2735n10 = new C2735n9();
                c2735n9Arr2[length3] = c2735n10;
                codedInputByteBufferNano.readMessage(c2735n10);
                this.d = c2735n9Arr2;
            } else if (tag != 90) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength4 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                String[] strArr = this.e;
                int length4 = strArr == null ? 0 : strArr.length;
                int i5 = repeatedFieldArrayLength4 + length4;
                String[] strArr2 = new String[i5];
                if (length4 != 0) {
                    System.arraycopy(strArr, 0, strArr2, 0, length4);
                }
                while (length4 < i5 - 1) {
                    strArr2[length4] = codedInputByteBufferNano.readString();
                    codedInputByteBufferNano.readTag();
                    length4++;
                }
                strArr2[length4] = codedInputByteBufferNano.readString();
                this.e = strArr2;
            }
        }
    }

    public static C2785p9 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2785p9) MessageNano.mergeFrom(new C2785p9(), bArr);
    }
}
