package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2657k6 extends MessageNano {
    public static volatile C2657k6[] g;
    public String a;
    public String b;
    public int c;
    public String d;
    public boolean e;
    public int f;

    public C2657k6() {
        a();
    }

    public static C2657k6[] b() {
        if (g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (g == null) {
                        g = new C2657k6[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    public final C2657k6 a() {
        this.a = "";
        this.b = "";
        this.c = -1;
        this.d = "";
        this.e = false;
        this.f = -1;
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
        int i = this.c;
        if (i != -1) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeSInt32Size(3, i);
        }
        if (!this.d.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(4, this.d);
        }
        boolean z = this.e;
        if (z) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(5, z);
        }
        int i2 = this.f;
        return i2 != -1 ? iComputeSerializedSize + CodedOutputByteBufferNano.computeSInt32Size(6, i2) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!this.a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.a);
        }
        if (!this.b.equals("")) {
            codedOutputByteBufferNano.writeString(2, this.b);
        }
        int i = this.c;
        if (i != -1) {
            codedOutputByteBufferNano.writeSInt32(3, i);
        }
        if (!this.d.equals("")) {
            codedOutputByteBufferNano.writeString(4, this.d);
        }
        boolean z = this.e;
        if (z) {
            codedOutputByteBufferNano.writeBool(5, z);
        }
        int i2 = this.f;
        if (i2 != -1) {
            codedOutputByteBufferNano.writeSInt32(6, i2);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C2657k6 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2657k6().mergeFrom(codedInputByteBufferNano);
    }

    @Override
    public final C2657k6 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readString();
            } else if (tag == 18) {
                this.b = codedInputByteBufferNano.readString();
            } else if (tag == 24) {
                this.c = codedInputByteBufferNano.readSInt32();
            } else if (tag == 34) {
                this.d = codedInputByteBufferNano.readString();
            } else if (tag == 40) {
                this.e = codedInputByteBufferNano.readBool();
            } else if (tag != 48) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.f = codedInputByteBufferNano.readSInt32();
            }
        }
    }

    public static C2657k6 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2657k6) MessageNano.mergeFrom(new C2657k6(), bArr);
    }
}
