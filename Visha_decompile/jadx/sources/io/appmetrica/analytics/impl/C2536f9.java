package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2536f9 extends MessageNano {
    public static final int j = 0;
    public static final int k = 1;
    public static final int l = 2;
    public static volatile C2536f9[] m;
    public double a;
    public double b;
    public long c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public String i;

    public C2536f9() {
        a();
    }

    public static C2536f9[] b() {
        if (m == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (m == null) {
                        m = new C2536f9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return m;
    }

    public final C2536f9 a() {
        this.a = 0.0d;
        this.b = 0.0d;
        this.c = 0L;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = "";
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeDoubleSize = CodedOutputByteBufferNano.computeDoubleSize(2, this.b) + CodedOutputByteBufferNano.computeDoubleSize(1, this.a) + super.computeSerializedSize();
        long j2 = this.c;
        if (j2 != 0) {
            iComputeDoubleSize += CodedOutputByteBufferNano.computeUInt64Size(3, j2);
        }
        int i = this.d;
        if (i != 0) {
            iComputeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(4, i);
        }
        int i2 = this.e;
        if (i2 != 0) {
            iComputeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(5, i2);
        }
        int i3 = this.f;
        if (i3 != 0) {
            iComputeDoubleSize += CodedOutputByteBufferNano.computeUInt32Size(6, i3);
        }
        int i4 = this.g;
        if (i4 != 0) {
            iComputeDoubleSize += CodedOutputByteBufferNano.computeInt32Size(7, i4);
        }
        int i5 = this.h;
        if (i5 != 0) {
            iComputeDoubleSize += CodedOutputByteBufferNano.computeInt32Size(8, i5);
        }
        return !this.i.equals("") ? iComputeDoubleSize + CodedOutputByteBufferNano.computeStringSize(9, this.i) : iComputeDoubleSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        codedOutputByteBufferNano.writeDouble(1, this.a);
        codedOutputByteBufferNano.writeDouble(2, this.b);
        long j2 = this.c;
        if (j2 != 0) {
            codedOutputByteBufferNano.writeUInt64(3, j2);
        }
        int i = this.d;
        if (i != 0) {
            codedOutputByteBufferNano.writeUInt32(4, i);
        }
        int i2 = this.e;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeUInt32(5, i2);
        }
        int i3 = this.f;
        if (i3 != 0) {
            codedOutputByteBufferNano.writeUInt32(6, i3);
        }
        int i4 = this.g;
        if (i4 != 0) {
            codedOutputByteBufferNano.writeInt32(7, i4);
        }
        int i5 = this.h;
        if (i5 != 0) {
            codedOutputByteBufferNano.writeInt32(8, i5);
        }
        if (!this.i.equals("")) {
            codedOutputByteBufferNano.writeString(9, this.i);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C2536f9 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2536f9().mergeFrom(codedInputByteBufferNano);
    }

    @Override
    public final C2536f9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 9) {
                this.a = codedInputByteBufferNano.readDouble();
            } else if (tag == 17) {
                this.b = codedInputByteBufferNano.readDouble();
            } else if (tag == 24) {
                this.c = codedInputByteBufferNano.readUInt64();
            } else if (tag == 32) {
                this.d = codedInputByteBufferNano.readUInt32();
            } else if (tag == 40) {
                this.e = codedInputByteBufferNano.readUInt32();
            } else if (tag == 48) {
                this.f = codedInputByteBufferNano.readUInt32();
            } else if (tag == 56) {
                this.g = codedInputByteBufferNano.readInt32();
            } else if (tag == 64) {
                int int32 = codedInputByteBufferNano.readInt32();
                if (int32 == 0 || int32 == 1 || int32 == 2) {
                    this.h = int32;
                }
            } else if (tag != 74) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.i = codedInputByteBufferNano.readString();
            }
        }
    }

    public static C2536f9 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2536f9) MessageNano.mergeFrom(new C2536f9(), bArr);
    }
}
