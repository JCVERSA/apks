package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2685l9 extends MessageNano {
    public static final int d = 0;
    public static final int e = 1;
    public static final int f = 2;
    public static volatile C2685l9[] g;
    public C2760o9 a;
    public String b;
    public int c;

    public C2685l9() {
        a();
    }

    public static C2685l9[] b() {
        if (g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (g == null) {
                        g = new C2685l9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    public final C2685l9 a() {
        this.a = null;
        this.b = "";
        this.c = 0;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2760o9 c2760o9 = this.a;
        if (c2760o9 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c2760o9);
        }
        int iComputeStringSize = CodedOutputByteBufferNano.computeStringSize(2, this.b) + iComputeSerializedSize;
        int i = this.c;
        return i != 0 ? iComputeStringSize + CodedOutputByteBufferNano.computeInt32Size(5, i) : iComputeStringSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2760o9 c2760o9 = this.a;
        if (c2760o9 != null) {
            codedOutputByteBufferNano.writeMessage(1, c2760o9);
        }
        codedOutputByteBufferNano.writeString(2, this.b);
        int i = this.c;
        if (i != 0) {
            codedOutputByteBufferNano.writeInt32(5, i);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2685l9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                if (this.a == null) {
                    this.a = new C2760o9();
                }
                codedInputByteBufferNano.readMessage(this.a);
            } else if (tag == 18) {
                this.b = codedInputByteBufferNano.readString();
            } else if (tag != 40) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                int int32 = codedInputByteBufferNano.readInt32();
                if (int32 == 0 || int32 == 1 || int32 == 2) {
                    this.c = int32;
                }
            }
        }
    }

    public static C2685l9 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2685l9().mergeFrom(codedInputByteBufferNano);
    }

    public static C2685l9 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2685l9) MessageNano.mergeFrom(new C2685l9(), bArr);
    }
}
