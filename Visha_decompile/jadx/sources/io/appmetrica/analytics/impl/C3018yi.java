package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

public final class C3018yi extends MessageNano {
    public static volatile C3018yi[] e;
    public long a;
    public C3043zi b;
    public int c;
    public byte[] d;

    public C3018yi() {
        a();
    }

    public static C3018yi[] b() {
        if (e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (e == null) {
                        e = new C3018yi[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public final C3018yi a() {
        this.a = 0L;
        this.b = null;
        this.c = 0;
        this.d = WireFormatNano.EMPTY_BYTES;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        long j = this.a;
        if (j != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(1, j);
        }
        C3043zi c3043zi = this.b;
        if (c3043zi != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c3043zi);
        }
        int i = this.c;
        if (i != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt32Size(3, i);
        }
        return !Arrays.equals(this.d, WireFormatNano.EMPTY_BYTES) ? iComputeSerializedSize + CodedOutputByteBufferNano.computeBytesSize(4, this.d) : iComputeSerializedSize;
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        long j = this.a;
        if (j != 0) {
            codedOutputByteBufferNano.writeInt64(1, j);
        }
        C3043zi c3043zi = this.b;
        if (c3043zi != null) {
            codedOutputByteBufferNano.writeMessage(2, c3043zi);
        }
        int i = this.c;
        if (i != 0) {
            codedOutputByteBufferNano.writeUInt32(3, i);
        }
        if (!Arrays.equals(this.d, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(4, this.d);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final C3018yi mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readInt64();
            } else if (tag == 18) {
                if (this.b == null) {
                    this.b = new C3043zi();
                }
                codedInputByteBufferNano.readMessage(this.b);
            } else if (tag == 24) {
                this.c = codedInputByteBufferNano.readUInt32();
            } else if (tag != 34) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.d = codedInputByteBufferNano.readBytes();
            }
        }
    }

    public static C3018yi b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new C3018yi().mergeFrom(codedInputByteBufferNano);
    }

    public static C3018yi a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (C3018yi) MessageNano.mergeFrom(new C3018yi(), bArr);
    }
}
