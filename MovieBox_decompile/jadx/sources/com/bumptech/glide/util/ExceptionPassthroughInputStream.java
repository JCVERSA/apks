package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public final class ExceptionPassthroughInputStream extends InputStream {
    private static final Queue<ExceptionPassthroughInputStream> POOL = Util.createQueue(0);
    private IOException exception;
    private InputStream wrapped;

    ExceptionPassthroughInputStream() {
    }

    static void clearQueue() {
        synchronized (POOL) {
            while (true) {
                try {
                    Queue<ExceptionPassthroughInputStream> queue = POOL;
                    if (!queue.isEmpty()) {
                        queue.remove();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @NonNull
    public static ExceptionPassthroughInputStream obtain(@NonNull InputStream inputStream) {
        ExceptionPassthroughInputStream exceptionPassthroughInputStreamPoll;
        Queue<ExceptionPassthroughInputStream> queue = POOL;
        synchronized (queue) {
            exceptionPassthroughInputStreamPoll = queue.poll();
        }
        if (exceptionPassthroughInputStreamPoll == null) {
            exceptionPassthroughInputStreamPoll = new ExceptionPassthroughInputStream();
        }
        exceptionPassthroughInputStreamPoll.setInputStream(inputStream);
        return exceptionPassthroughInputStreamPoll;
    }

    @Override
    public int available() throws IOException {
        return this.wrapped.available();
    }

    @Override
    public void close() throws IOException {
        this.wrapped.close();
    }

    @Nullable
    public IOException getException() {
        return this.exception;
    }

    @Override
    public void mark(int i10) {
        this.wrapped.mark(i10);
    }

    @Override
    public boolean markSupported() {
        return this.wrapped.markSupported();
    }

    @Override
    public int read() throws IOException {
        try {
            return this.wrapped.read();
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    public void release() {
        this.exception = null;
        this.wrapped = null;
        Queue<ExceptionPassthroughInputStream> queue = POOL;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override
    public synchronized void reset() throws IOException {
        this.wrapped.reset();
    }

    void setInputStream(@NonNull InputStream inputStream) {
        this.wrapped = inputStream;
    }

    @Override
    public long skip(long j10) throws IOException {
        try {
            return this.wrapped.skip(j10);
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        try {
            return this.wrapped.read(bArr);
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            return this.wrapped.read(bArr, i10, i11);
        } catch (IOException e10) {
            this.exception = e10;
            throw e10;
        }
    }
}
