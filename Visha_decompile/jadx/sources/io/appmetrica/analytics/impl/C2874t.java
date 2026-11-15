package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class C2874t extends MessageNano {
    public static final int l = 0;
    public static final int m = 1;
    public static final int n = 2;
    public static final int o = 3;
    public static final int p = 4;
    public static final int q = 5;
    public static final int r = 6;
    public static final int s = 7;
    public static volatile C2874t[] t;
    public static byte[] u;
    public static volatile boolean v;
    public byte[] a;
    public C2849s b;
    public byte[] c;
    public int d;
    public byte[] e;
    public byte[] f;
    public byte[] g;
    public byte[] h;
    public byte[] i;
    public byte[] j;
    public byte[] k;

    public C2874t() {
        if (!v) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (!v) {
                        u = InternalNano.bytesDefaultValue("manual");
                        v = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        a();
    }

    public static C2874t[] b() {
        if (t == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (t == null) {
                        t = new C2874t[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return t;
    }

    public final C2874t a() {
        this.a = (byte[]) u.clone();
        this.b = null;
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.c = bArr;
        this.d = 0;
        this.e = bArr;
        this.f = bArr;
        this.g = bArr;
        this.h = bArr;
        this.i = bArr;
        this.j = bArr;
        this.k = bArr;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.a, u)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.a);
        }
        C2849s c2849s = this.b;
        if (c2849s != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c2849s);
        }
        byte[] bArr = this.c;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(3, this.c);
        }
        int i = this.d;
        if (i != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt32Size(4, i);
        }
        if (!Arrays.equals(this.e, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(5, this.e);
        }
        if (!Arrays.equals(this.f, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(6, this.f);
        }
        if (!Arrays.equals(this.g, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(7, this.g);
        }
        if (!Arrays.equals(this.h, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(8, this.h);
        }
        if (!Arrays.equals(this.i, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(9, this.i);
        }
        if (!Arrays.equals(this.j, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(10, this.j);
        }
        return !Arrays.equals(this.k, bArr2) ? iComputeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(11, this.k) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!Arrays.equals(this.a, u)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        C2849s c2849s = this.b;
        if (c2849s != null) {
            codedOutputByteBufferNano.writeMessage(2, c2849s);
        }
        byte[] bArr = this.c;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(3, this.c);
        }
        int i = this.d;
        if (i != 0) {
            codedOutputByteBufferNano.writeInt32(4, i);
        }
        if (!Arrays.equals(this.e, bArr2)) {
            codedOutputByteBufferNano.writeBytes(5, this.e);
        }
        if (!Arrays.equals(this.f, bArr2)) {
            codedOutputByteBufferNano.writeBytes(6, this.f);
        }
        if (!Arrays.equals(this.g, bArr2)) {
            codedOutputByteBufferNano.writeBytes(7, this.g);
        }
        if (!Arrays.equals(this.h, bArr2)) {
            codedOutputByteBufferNano.writeBytes(8, this.h);
        }
        if (!Arrays.equals(this.i, bArr2)) {
            codedOutputByteBufferNano.writeBytes(9, this.i);
        }
        if (!Arrays.equals(this.j, bArr2)) {
            codedOutputByteBufferNano.writeBytes(10, this.j);
        }
        if (!Arrays.equals(this.k, bArr2)) {
            codedOutputByteBufferNano.writeBytes(11, this.k);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C2874t b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2874t().mergeFrom(codedInputByteBufferNano);
    }

    @Override
    public final C2874t mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            switch (tag) {
                case 0:
                    return this;
                case 10:
                    this.a = codedInputByteBufferNano.readBytes();
                    break;
                case 18:
                    if (this.b == null) {
                        this.b = new C2849s();
                    }
                    codedInputByteBufferNano.readMessage(this.b);
                    break;
                case 26:
                    this.c = codedInputByteBufferNano.readBytes();
                    break;
                case 32:
                    int int32 = codedInputByteBufferNano.readInt32();
                    switch (int32) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            this.d = int32;
                            break;
                    }
                    break;
                case 42:
                    this.e = codedInputByteBufferNano.readBytes();
                    break;
                case 50:
                    this.f = codedInputByteBufferNano.readBytes();
                    break;
                case 58:
                    this.g = codedInputByteBufferNano.readBytes();
                    break;
                case 66:
                    this.h = codedInputByteBufferNano.readBytes();
                    break;
                case 74:
                    this.i = codedInputByteBufferNano.readBytes();
                    break;
                case 82:
                    this.j = codedInputByteBufferNano.readBytes();
                    break;
                case 90:
                    this.k = codedInputByteBufferNano.readBytes();
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

    public static C2874t a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2874t) MessageNano.mergeFrom(new C2874t(), bArr);
    }
}
