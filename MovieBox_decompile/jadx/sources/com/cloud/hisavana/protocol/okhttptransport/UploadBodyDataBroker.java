package com.cloud.hisavana.protocol.okhttptransport;

import android.util.Pair;
import com.google.common.base.m;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.y;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;

final class UploadBodyDataBroker implements Sink {

    private final BlockingQueue f20841a = new ArrayBlockingQueue(1);

    private final AtomicBoolean f20842b = new AtomicBoolean();

    private final AtomicReference f20843c = new AtomicReference();

    enum ReadResult {
        SUCCESS,
        END_OF_BODY
    }

    UploadBodyDataBroker() {
    }

    private Pair d() throws IOException {
        try {
            return (Pair) this.f20841a.take();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new IOException("Interrupted while waiting for a read to finish!");
        }
    }

    Future b(ByteBuffer byteBuffer) {
        Throwable th2 = (Throwable) this.f20843c.get();
        if (th2 != null) {
            return Futures.e(th2);
        }
        y yVarS = y.s();
        this.f20841a.add(Pair.create(byteBuffer, yVarS));
        Throwable th3 = (Throwable) this.f20843c.get();
        if (th3 != null) {
            yVarS.setException(th3);
        }
        return yVarS;
    }

    @Override
    public void close() {
        this.f20842b.set(true);
    }

    void h() {
        if (this.f20842b.getAndSet(true)) {
            throw new IllegalStateException("Already closed");
        }
        ((y) d().second).set(ReadResult.END_OF_BODY);
    }

    void j(Throwable th2) {
        this.f20843c.set(th2);
        Pair pair = (Pair) this.f20841a.poll();
        if (pair != null) {
            ((y) pair.second).setException(th2);
        }
    }

    @Override
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override
    public void write(Buffer buffer, long j10) throws IOException {
        m.u(!this.f20842b.get());
        while (j10 != 0) {
            Pair pairD = d();
            ByteBuffer byteBuffer = (ByteBuffer) pairD.first;
            y yVar = (y) pairD.second;
            int iLimit = byteBuffer.limit();
            byteBuffer.limit((int) Math.min(iLimit, j10));
            try {
                long j11 = buffer.read(byteBuffer);
                if (j11 == -1) {
                    IOException iOException = new IOException("The source has been exhausted but we expected more!");
                    yVar.setException(iOException);
                    throw iOException;
                }
                j10 -= j11;
                byteBuffer.limit(iLimit);
                yVar.set(ReadResult.SUCCESS);
            } catch (IOException e10) {
                yVar.setException(e10);
                throw e10;
            }
        }
    }

    @Override
    public void flush() {
    }
}
