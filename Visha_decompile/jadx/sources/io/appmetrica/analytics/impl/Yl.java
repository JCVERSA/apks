package io.appmetrica.analytics.impl;

import androidx.work.WorkRequest;
import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.io.IOException;

public final class Yl extends MessageNano {
    public static volatile Yl[] b;
    public long a;

    public Yl() {
        a();
    }

    public static Yl[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new Yl[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public final Yl a() {
        this.a = WorkRequest.MAX_BACKOFF_MILLIS;
        this.cachedSize = -1;
        return this;
    }

    @Override
    public final int computeSerializedSize() {
        return CodedOutputByteBufferNano.computeInt64Size(1, this.a) + super.computeSerializedSize();
    }

    @Override
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws IOException {
        codedOutputByteBufferNano.writeInt64(1, this.a);
        super.writeTo(codedOutputByteBufferNano);
    }

    @Override
    public final Yl mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                return this;
            }
            if (tag != 8) {
                if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                    return this;
                }
            } else {
                this.a = codedInputByteBufferNano.readInt64();
            }
        }
    }

    public static Yl a(byte[] bArr) throws InvalidProtocolBufferNanoException {
        return (Yl) MessageNano.mergeFrom(new Yl(), bArr);
    }

    public static Yl b(CodedInputByteBufferNano codedInputByteBufferNano) throws IOException {
        return new Yl().mergeFrom(codedInputByteBufferNano);
    }
}
