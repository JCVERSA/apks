package com.cloud.hisavana.protocol.okhttptransport;

import android.util.Pair;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.g;
import defpackage.xd8;
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

public final class UploadBodyDataBroker implements Sink {
    public final BlockingQueue b = new ArrayBlockingQueue(1);
    public final AtomicBoolean c = new AtomicBoolean();
    public final AtomicReference d = new AtomicReference();

    public enum ReadResult {
        SUCCESS,
        END_OF_BODY
    }

    public Future a(ByteBuffer byteBuffer) {
        Throwable th = (Throwable) this.d.get();
        if (th != null) {
            return Futures.g(th);
        }
        g gVarO = g.o();
        this.b.add(Pair.create(byteBuffer, gVarO));
        Throwable th2 = (Throwable) this.d.get();
        if (th2 != null) {
            gVarO.setException(th2);
        }
        return gVarO;
    }

    public final Pair b() throws IOException {
        try {
            return (Pair) this.b.take();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new IOException("Interrupted while waiting for a read to finish!");
        }
    }

    @Override
    public void close() {
        this.c.set(true);
    }

    public void d() {
        if (this.c.getAndSet(true)) {
            throw new IllegalStateException("Already closed");
        }
        ((g) b().second).set(ReadResult.END_OF_BODY);
    }

    public void e(Throwable th) {
        this.d.set(th);
        Pair pair = (Pair) this.b.poll();
        if (pair != null) {
            ((g) pair.second).setException(th);
        }
    }

    @Override
    public void flush() {
    }

    @Override
    public Timeout getTimeout() {
        return Timeout.NONE;
    }

    @Override
    public void write(Buffer buffer, long j) throws IOException {
        xd8.u(!this.c.get());
        while (j != 0) {
            Pair pairB = b();
            ByteBuffer byteBuffer = (ByteBuffer) pairB.first;
            g gVar = (g) pairB.second;
            int iLimit = byteBuffer.limit();
            byteBuffer.limit((int) Math.min(iLimit, j));
            try {
                long j2 = buffer.read(byteBuffer);
                if (j2 == -1) {
                    IOException iOException = new IOException("The source has been exhausted but we expected more!");
                    gVar.setException(iOException);
                    throw iOException;
                }
                j -= j2;
                byteBuffer.limit(iLimit);
                gVar.set(ReadResult.SUCCESS);
            } catch (IOException e) {
                gVar.setException(e);
                throw e;
            }
        }
    }
}
