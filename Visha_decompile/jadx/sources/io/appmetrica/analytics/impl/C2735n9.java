package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2735n9 extends MessageNano {
    public static volatile C2735n9[] e;
    public int a;
    public int b;
    public String c;
    public boolean d;

    public C2735n9() {
        a();
    }

    public static C2735n9[] b() {
        if (e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (e == null) {
                        e = new C2735n9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public final C2735n9 a() {
        this.a = 0;
        this.b = 0;
        this.c = "";
        this.d = false;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        int i = this.a;
        if (i != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(1, i);
        }
        int i2 = this.b;
        if (i2 != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(2, i2);
        }
        if (!this.c.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(3, this.c);
        }
        boolean z = this.d;
        return z ? iComputeSerializedSize + CodedOutputByteBufferNano.computeBoolSize(4, z) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        int i = this.a;
        if (i != 0) {
            codedOutputByteBufferNano.writeUInt32(1, i);
        }
        int i2 = this.b;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeUInt32(2, i2);
        }
        if (!this.c.equals("")) {
            codedOutputByteBufferNano.writeString(3, this.c);
        }
        boolean z = this.d;
        if (z) {
            codedOutputByteBufferNano.writeBool(4, z);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2735n9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readUInt32();
            } else if (tag == 16) {
                this.b = codedInputByteBufferNano.readUInt32();
            } else if (tag == 26) {
                this.c = codedInputByteBufferNano.readString();
            } else if (tag != 32) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.d = codedInputByteBufferNano.readBool();
            }
        }
    }

    public static C2735n9 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2735n9().mergeFrom(codedInputByteBufferNano);
    }

    public static C2735n9 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2735n9) MessageNano.mergeFrom(new C2735n9(), bArr);
    }
}
