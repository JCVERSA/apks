package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;
import org.mozilla.classfile.ByteCode;

public final class C2586h9 extends MessageNano {
    public static volatile C2586h9[] n;
    public String a;
    public String b;
    public String c;
    public int d;
    public String e;
    public String f;
    public boolean g;
    public int h;
    public String i;
    public String j;
    public int k;
    public C2561g9[] l;
    public String m;

    public C2586h9() {
        a();
    }

    public static C2586h9[] b() {
        if (n == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (n == null) {
                        n = new C2586h9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return n;
    }

    public final C2586h9 a() {
        this.a = "";
        this.b = "";
        this.c = "";
        this.d = 0;
        this.e = "";
        this.f = "";
        this.g = false;
        this.h = 0;
        this.i = "";
        this.j = "";
        this.k = 0;
        this.l = C2561g9.b();
        this.m = "";
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (!this.a.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.a);
        }
        if (!this.b.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(2, this.b);
        }
        if (!this.c.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.c);
        }
        int i = this.d;
        if (i != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(5, i);
        }
        if (!this.e.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(10, this.e);
        }
        if (!this.f.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(15, this.f);
        }
        boolean z = this.g;
        if (z) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(17, z);
        }
        int i2 = this.h;
        if (i2 != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(18, i2);
        }
        if (!this.i.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(19, this.i);
        }
        if (!this.j.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(21, this.j);
        }
        int i3 = this.k;
        if (i3 != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(22, i3);
        }
        C2561g9[] c2561g9Arr = this.l;
        if (c2561g9Arr != null && c2561g9Arr.length > 0) {
            int i4 = 0;
            while (true) {
                C2561g9[] c2561g9Arr2 = this.l;
                if (i4 >= c2561g9Arr2.length) {
                    break;
                }
                C2561g9 c2561g9 = c2561g9Arr2[i4];
                if (c2561g9 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(23, c2561g9) + iComputeSerializedSize;
                }
                i4++;
            }
        }
        return !this.m.equals("") ? iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(24, this.m) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!this.a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.a);
        }
        if (!this.b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.b);
        }
        if (!this.c.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.c);
        }
        int i = this.d;
        if (i != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i);
        }
        if (!this.e.equals("")) {
            codedOutputByteBufferNano.writeString(10, this.e);
        }
        if (!this.f.equals("")) {
            codedOutputByteBufferNano.writeString(15, this.f);
        }
        boolean z = this.g;
        if (z) {
            codedOutputByteBufferNano.writeBool(17, z);
        }
        int i2 = this.h;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeUInt32(18, i2);
        }
        if (!this.i.equals("")) {
            codedOutputByteBufferNano.writeString(19, this.i);
        }
        if (!this.j.equals("")) {
            codedOutputByteBufferNano.writeString(21, this.j);
        }
        int i3 = this.k;
        if (i3 != 0) {
            codedOutputByteBufferNano.writeUInt32(22, i3);
        }
        C2561g9[] c2561g9Arr = this.l;
        if (c2561g9Arr != null && c2561g9Arr.length > 0) {
            int i4 = 0;
            while (true) {
                C2561g9[] c2561g9Arr2 = this.l;
                if (i4 >= c2561g9Arr2.length) {
                    break;
                }
                C2561g9 c2561g9 = c2561g9Arr2[i4];
                if (c2561g9 != null) {
                    codedOutputByteBufferNano.writeMessage(23, c2561g9);
                }
                i4++;
            }
        }
        if (!this.m.equals("")) {
            codedOutputByteBufferNano.writeString(24, this.m);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C2586h9 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2586h9().mergeFrom(codedInputByteBufferNano);
    }

    @Override
    public final C2586h9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            switch (tag) {
                case 0:
                    return this;
                case 10:
                    this.a = codedInputByteBufferNano.readString();
                    break;
                case 18:
                    this.b = codedInputByteBufferNano.readString();
                    break;
                case 34:
                    this.c = codedInputByteBufferNano.readString();
                    break;
                case 40:
                    this.d = codedInputByteBufferNano.readUInt32();
                    break;
                case 82:
                    this.e = codedInputByteBufferNano.readString();
                    break;
                case 122:
                    this.f = codedInputByteBufferNano.readString();
                    break;
                case 136:
                    this.g = codedInputByteBufferNano.readBool();
                    break;
                case 144:
                    this.h = codedInputByteBufferNano.readUInt32();
                    break;
                case 154:
                    this.i = codedInputByteBufferNano.readString();
                    break;
                case 170:
                    this.j = codedInputByteBufferNano.readString();
                    break;
                case 176:
                    this.k = codedInputByteBufferNano.readUInt32();
                    break;
                case ByteCode.INVOKEDYNAMIC:
                    int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, ByteCode.INVOKEDYNAMIC);
                    C2561g9[] c2561g9Arr = this.l;
                    int length = c2561g9Arr == null ? 0 : c2561g9Arr.length;
                    int i = repeatedFieldArrayLength + length;
                    C2561g9[] c2561g9Arr2 = new C2561g9[i];
                    if (length != 0) {
                        System.arraycopy(c2561g9Arr, 0, c2561g9Arr2, 0, length);
                    }
                    while (length < i - 1) {
                        C2561g9 c2561g9 = new C2561g9();
                        c2561g9Arr2[length] = c2561g9;
                        codedInputByteBufferNano.readMessage(c2561g9);
                        codedInputByteBufferNano.readTag();
                        length++;
                    }
                    C2561g9 c2561g10 = new C2561g9();
                    c2561g9Arr2[length] = c2561g10;
                    codedInputByteBufferNano.readMessage(c2561g10);
                    this.l = c2561g9Arr2;
                    break;
                case 194:
                    this.m = codedInputByteBufferNano.readString();
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

    public static C2586h9 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2586h9) MessageNano.mergeFrom(new C2586h9(), bArr);
    }
}
