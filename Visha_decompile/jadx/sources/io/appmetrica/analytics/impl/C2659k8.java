package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class C2659k8 extends MessageNano {
    public static volatile C2659k8[] e;
    public C2883t8 a;
    public C2933v8 b;
    public C2709m8 c;
    public C2858s8 d;

    public C2659k8() {
        a();
    }

    public static C2659k8[] b() {
        if (e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (e == null) {
                        e = new C2659k8[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public final C2659k8 a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C2883t8 c2883t8 = this.a;
        if (c2883t8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c2883t8);
        }
        C2933v8 c2933v8 = this.b;
        if (c2933v8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c2933v8);
        }
        C2709m8 c2709m8 = this.c;
        if (c2709m8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(3, c2709m8);
        }
        C2858s8 c2858s8 = this.d;
        return c2858s8 != null ? iComputeSerializedSize + CodedOutputByteBufferNano.computeMessageSize(4, c2858s8) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        C2883t8 c2883t8 = this.a;
        if (c2883t8 != null) {
            codedOutputByteBufferNano.writeMessage(1, c2883t8);
        }
        C2933v8 c2933v8 = this.b;
        if (c2933v8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c2933v8);
        }
        C2709m8 c2709m8 = this.c;
        if (c2709m8 != null) {
            codedOutputByteBufferNano.writeMessage(3, c2709m8);
        }
        C2858s8 c2858s8 = this.d;
        if (c2858s8 != null) {
            codedOutputByteBufferNano.writeMessage(4, c2858s8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C2659k8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 10) {
                if (this.a == null) {
                    this.a = new C2883t8();
                }
                codedInputByteBufferNano.readMessage(this.a);
            } else if (tag == 18) {
                if (this.b == null) {
                    this.b = new C2933v8();
                }
                codedInputByteBufferNano.readMessage(this.b);
            } else if (tag == 26) {
                if (this.c == null) {
                    this.c = new C2709m8();
                }
                codedInputByteBufferNano.readMessage(this.c);
            } else if (tag != 34) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                if (this.d == null) {
                    this.d = new C2858s8();
                }
                codedInputByteBufferNano.readMessage(this.d);
            }
        }
    }

    public static C2659k8 b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C2659k8().mergeFrom(codedInputByteBufferNano);
    }

    public static C2659k8 a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C2659k8) MessageNano.mergeFrom(new C2659k8(), bArr);
    }
}
