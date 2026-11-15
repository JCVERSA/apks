package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class Fb extends MessageNano {
    public static volatile Fb[] f;
    public String a;
    public String b;
    public boolean c;
    public String d;
    public String e;

    public Fb() {
        a();
    }

    public static Fb[] b() {
        if (f == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (f == null) {
                        f = new Fb[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public final Fb a() {
        this.a = "";
        this.b = "";
        this.c = false;
        this.d = "";
        this.e = "";
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
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(19, this.b);
        }
        boolean z = this.c;
        if (z) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(22, z);
        }
        if (!this.d.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(25, this.d);
        }
        return !this.e.equals("") ? iComputeSerializedSize + CodedOutputByteBufferNano.computeStringSize(26, this.e) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        if (!this.a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.a);
        }
        if (!this.b.equals("")) {
            codedOutputByteBufferNano.writeString(19, this.b);
        }
        boolean z = this.c;
        if (z) {
            codedOutputByteBufferNano.writeBool(22, z);
        }
        if (!this.d.equals("")) {
            codedOutputByteBufferNano.writeString(25, this.d);
        }
        if (!this.e.equals("")) {
            codedOutputByteBufferNano.writeString(26, this.e);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static Fb b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new Fb().mergeFrom(codedInputByteBufferNano);
    }

    @Override
    public final Fb mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readString();
            } else if (tag == 154) {
                this.b = codedInputByteBufferNano.readString();
            } else if (tag == 176) {
                this.c = codedInputByteBufferNano.readBool();
            } else if (tag == 202) {
                this.d = codedInputByteBufferNano.readString();
            } else if (tag != 210) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.e = codedInputByteBufferNano.readString();
            }
        }
    }

    public static Fb a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (Fb) MessageNano.mergeFrom(new Fb(), bArr);
    }
}
