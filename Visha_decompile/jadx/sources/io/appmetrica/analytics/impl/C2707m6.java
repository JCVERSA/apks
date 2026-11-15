package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2707m6 extends MessageNano {
    public static volatile C2707m6[] f;
    public String a;
    public String b;
    public C2657k6[] c;
    public C2707m6 d;
    public C2707m6[] e;

    public C2707m6() {
        a();
    }

    public static C2707m6[] b() {
        if (f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (f == null) {
                        f = new C2707m6[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public final C2707m6 a() {
        this.a = "";
        this.b = "";
        this.c = C2657k6.b();
        this.d = null;
        this.e = b();
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeStringSize = CodedOutputByteBufferNano.computeStringSize(1, this.a) + super.computeSerializedSize();
        if (!this.b.equals("")) {
            iComputeStringSize += CodedOutputByteBufferNano.computeStringSize(2, this.b);
        }
        C2657k6[] c2657k6Arr = this.c;
        int i = 0;
        if (c2657k6Arr != null && c2657k6Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C2657k6[] c2657k6Arr2 = this.c;
                if (i2 >= c2657k6Arr2.length) {
                    break;
                }
                C2657k6 c2657k6 = c2657k6Arr2[i2];
                if (c2657k6 != null) {
                    iComputeStringSize = CodedOutputByteBufferNano.computeMessageSize(3, c2657k6) + iComputeStringSize;
                }
                i2++;
            }
        }
        C2707m6 c2707m6 = this.d;
        if (c2707m6 != null) {
            iComputeStringSize += CodedOutputByteBufferNano.computeMessageSize(4, c2707m6);
        }
        C2707m6[] c2707m6Arr = this.e;
        if (c2707m6Arr != null && c2707m6Arr.length > 0) {
            while (true) {
                C2707m6[] c2707m6Arr2 = this.e;
                if (i >= c2707m6Arr2.length) {
                    break;
                }
                C2707m6 c2707m7 = c2707m6Arr2[i];
                if (c2707m7 != null) {
                    iComputeStringSize = CodedOutputByteBufferNano.computeMessageSize(5, c2707m7) + iComputeStringSize;
                }
                i++;
            }
        }
        return iComputeStringSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        codedOutputByteBufferNano.writeString(1, this.a);
        if (!this.b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.b);
        }
        C2657k6[] c2657k6Arr = this.c;
        int i = 0;
        if (c2657k6Arr != null && c2657k6Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C2657k6[] c2657k6Arr2 = this.c;
                if (i2 >= c2657k6Arr2.length) {
                    break;
                }
                C2657k6 c2657k6 = c2657k6Arr2[i2];
                if (c2657k6 != null) {
                    codedOutputByteBufferNano.writeMessage(3, c2657k6);
                }
                i2++;
            }
        }
        C2707m6 c2707m6 = this.d;
        if (c2707m6 != null) {
            codedOutputByteBufferNano.writeMessage(4, c2707m6);
        }
        C2707m6[] c2707m6Arr = this.e;
        if (c2707m6Arr != null && c2707m6Arr.length > 0) {
            while (true) {
                C2707m6[] c2707m6Arr2 = this.e;
                if (i >= c2707m6Arr2.length) {
                    break;
                }
                C2707m6 c2707m7 = c2707m6Arr2[i];
                if (c2707m7 != null) {
                    codedOutputByteBufferNano.writeMessage(5, c2707m7);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C2707m6 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2707m6().mergeFrom(codedInputByteBufferNano);
    }

    @Override
    public final C2707m6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readString();
            } else if (tag == 18) {
                this.b = codedInputByteBufferNano.readString();
            } else if (tag == 26) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                C2657k6[] c2657k6Arr = this.c;
                int length = c2657k6Arr == null ? 0 : c2657k6Arr.length;
                int i = repeatedFieldArrayLength + length;
                C2657k6[] c2657k6Arr2 = new C2657k6[i];
                if (length != 0) {
                    System.arraycopy(c2657k6Arr, 0, c2657k6Arr2, 0, length);
                }
                while (length < i - 1) {
                    C2657k6 c2657k6 = new C2657k6();
                    c2657k6Arr2[length] = c2657k6;
                    codedInputByteBufferNano.readMessage(c2657k6);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C2657k6 c2657k7 = new C2657k6();
                c2657k6Arr2[length] = c2657k7;
                codedInputByteBufferNano.readMessage(c2657k7);
                this.c = c2657k6Arr2;
            } else if (tag == 34) {
                if (this.d == null) {
                    this.d = new C2707m6();
                }
                codedInputByteBufferNano.readMessage(this.d);
            } else if (tag != 42) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                C2707m6[] c2707m6Arr = this.e;
                int length2 = c2707m6Arr == null ? 0 : c2707m6Arr.length;
                int i2 = repeatedFieldArrayLength2 + length2;
                C2707m6[] c2707m6Arr2 = new C2707m6[i2];
                if (length2 != 0) {
                    System.arraycopy(c2707m6Arr, 0, c2707m6Arr2, 0, length2);
                }
                while (length2 < i2 - 1) {
                    C2707m6 c2707m6 = new C2707m6();
                    c2707m6Arr2[length2] = c2707m6;
                    codedInputByteBufferNano.readMessage(c2707m6);
                    codedInputByteBufferNano.readTag();
                    length2++;
                }
                C2707m6 c2707m7 = new C2707m6();
                c2707m6Arr2[length2] = c2707m7;
                codedInputByteBufferNano.readMessage(c2707m7);
                this.e = c2707m6Arr2;
            }
        }
    }

    public static C2707m6 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2707m6) MessageNano.mergeFrom(new C2707m6(), bArr);
    }
}
