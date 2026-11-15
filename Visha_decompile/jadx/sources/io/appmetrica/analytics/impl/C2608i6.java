package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class C2608i6 extends MessageNano {
    public static final int l = 0;
    public static final int m = 1;
    public static volatile C2608i6[] n;
    public static byte[] o;
    public static volatile boolean p;
    public C2707m6 a;
    public C2458c6 b;
    public String c;
    public int d;
    public C2657k6[] e;
    public String f;
    public int g;
    public C2583h6 h;
    public byte[] i;
    public byte[] j;
    public C2508e6[] k;

    public C2608i6() {
        if (!p) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (!p) {
                        o = InternalNano.bytesDefaultValue("JVM");
                        p = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        a();
    }

    public static C2608i6[] b() {
        if (n == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (n == null) {
                        n = new C2608i6[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return n;
    }

    public final C2608i6 a() {
        this.a = null;
        this.b = null;
        this.c = "";
        this.d = -1;
        this.e = C2657k6.b();
        this.f = "";
        this.g = 0;
        this.h = null;
        this.i = (byte[]) o.clone();
        this.j = WireFormatNano.EMPTY_BYTES;
        this.k = C2508e6.b();
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2707m6 c2707m6 = this.a;
        if (c2707m6 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c2707m6);
        }
        C2458c6 c2458c6 = this.b;
        if (c2458c6 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c2458c6);
        }
        if (!this.c.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.c);
        }
        int i = this.d;
        if (i != -1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i);
        }
        C2657k6[] c2657k6Arr = this.e;
        int i2 = 0;
        if (c2657k6Arr != null && c2657k6Arr.length > 0) {
            int i3 = 0;
            while (true) {
                C2657k6[] c2657k6Arr2 = this.e;
                if (i3 >= c2657k6Arr2.length) {
                    break;
                }
                C2657k6 c2657k6 = c2657k6Arr2[i3];
                if (c2657k6 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(5, c2657k6) + iComputeSerializedSize;
                }
                i3++;
            }
        }
        if (!this.f.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(6, this.f);
        }
        int i4 = this.g;
        if (i4 != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(7, i4);
        }
        C2583h6 c2583h6 = this.h;
        if (c2583h6 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(8, c2583h6);
        }
        if (!Arrays.equals(this.i, o)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.i);
        }
        if (!Arrays.equals(this.j, WireFormatNano.EMPTY_BYTES)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(10, this.j);
        }
        C2508e6[] c2508e6Arr = this.k;
        if (c2508e6Arr != null && c2508e6Arr.length > 0) {
            while (true) {
                C2508e6[] c2508e6Arr2 = this.k;
                if (i2 >= c2508e6Arr2.length) {
                    break;
                }
                C2508e6 c2508e6 = c2508e6Arr2[i2];
                if (c2508e6 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(11, c2508e6) + iComputeSerializedSize;
                }
                i2++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2707m6 c2707m6 = this.a;
        if (c2707m6 != null) {
            codedOutputByteBufferNano.writeMessage(1, c2707m6);
        }
        C2458c6 c2458c6 = this.b;
        if (c2458c6 != null) {
            codedOutputByteBufferNano.writeMessage(2, c2458c6);
        }
        if (!this.c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.c);
        }
        int i = this.d;
        if (i != -1) {
            codedOutputByteBufferNano.writeInt32(4, i);
        }
        C2657k6[] c2657k6Arr = this.e;
        int i2 = 0;
        if (c2657k6Arr != null && c2657k6Arr.length > 0) {
            int i3 = 0;
            while (true) {
                C2657k6[] c2657k6Arr2 = this.e;
                if (i3 >= c2657k6Arr2.length) {
                    break;
                }
                C2657k6 c2657k6 = c2657k6Arr2[i3];
                if (c2657k6 != null) {
                    codedOutputByteBufferNano.writeMessage(5, c2657k6);
                }
                i3++;
            }
        }
        if (!this.f.equals("")) {
            codedOutputByteBufferNano.writeString(6, this.f);
        }
        int i4 = this.g;
        if (i4 != 0) {
            codedOutputByteBufferNano.writeInt32(7, i4);
        }
        C2583h6 c2583h6 = this.h;
        if (c2583h6 != null) {
            codedOutputByteBufferNano.writeMessage(8, c2583h6);
        }
        if (!Arrays.equals(this.i, o)) {
            codedOutputByteBufferNano.writeBytes(9, this.i);
        }
        if (!Arrays.equals(this.j, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(10, this.j);
        }
        C2508e6[] c2508e6Arr = this.k;
        if (c2508e6Arr != null && c2508e6Arr.length > 0) {
            while (true) {
                C2508e6[] c2508e6Arr2 = this.k;
                if (i2 >= c2508e6Arr2.length) {
                    break;
                }
                C2508e6 c2508e6 = c2508e6Arr2[i2];
                if (c2508e6 != null) {
                    codedOutputByteBufferNano.writeMessage(11, c2508e6);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C2608i6 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2608i6().mergeFrom(codedInputByteBufferNano);
    }

    @Override
    public final C2608i6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            switch (tag) {
                case 0:
                    return this;
                case 10:
                    if (this.a == null) {
                        this.a = new C2707m6();
                    }
                    codedInputByteBufferNano.readMessage(this.a);
                    break;
                case 18:
                    if (this.b == null) {
                        this.b = new C2458c6();
                    }
                    codedInputByteBufferNano.readMessage(this.b);
                    break;
                case 26:
                    this.c = codedInputByteBufferNano.readString();
                    break;
                case 32:
                    int int32 = codedInputByteBufferNano.readInt32();
                    if (int32 == -1 || int32 == 0 || int32 == 1) {
                        this.d = int32;
                    }
                    break;
                case 42:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 42);
                    C2657k6[] c2657k6Arr = this.e;
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
                    this.e = c2657k6Arr2;
                    break;
                case 50:
                    this.f = codedInputByteBufferNano.readString();
                    break;
                case 56:
                    int int33 = codedInputByteBufferNano.readInt32();
                    if (int33 == 0 || int33 == 1) {
                        this.g = int33;
                    }
                    break;
                case 66:
                    if (this.h == null) {
                        this.h = new C2583h6();
                    }
                    codedInputByteBufferNano.readMessage(this.h);
                    break;
                case 74:
                    this.i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    this.j = codedInputByteBufferNano.readBytes();
                    break;
                case 90:
                    int repeatedFieldArrayLength2 = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 90);
                    C2508e6[] c2508e6Arr = this.k;
                    int length2 = c2508e6Arr == null ? 0 : c2508e6Arr.length;
                    int i2 = repeatedFieldArrayLength2 + length2;
                    C2508e6[] c2508e6Arr2 = new C2508e6[i2];
                    if (length2 != 0) {
                        System.arraycopy(c2508e6Arr, 0, c2508e6Arr2, 0, length2);
                    }
                    while (length2 < i2 - 1) {
                        C2508e6 c2508e6 = new C2508e6();
                        c2508e6Arr2[length2] = c2508e6;
                        codedInputByteBufferNano.readMessage(c2508e6);
                        codedInputByteBufferNano.readTag();
                        length2++;
                    }
                    C2508e6 c2508e7 = new C2508e6();
                    c2508e6Arr2[length2] = c2508e7;
                    codedInputByteBufferNano.readMessage(c2508e7);
                    this.k = c2508e6Arr2;
                    break;
                default:
                    if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                        return this;
                    }
                    break;
                    break;
            }
        }
    }

    public static C2608i6 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2608i6) MessageNano.mergeFrom(new C2608i6(), bArr);
    }
}
