package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

@Deprecated
public class ExceptionCatchingInputStream extends InputStream {
    private static final Queue<ExceptionCatchingInputStream> QUEUE = Util.createQueue(0);
    private IOException exception;
    private InputStream wrapped;

    public static void clearQueue() {
        while (true) {
            Queue<ExceptionCatchingInputStream> queue = QUEUE;
            if (queue.isEmpty()) {
                return;
            } else {
                queue.remove();
            }
        }
    }

    @NonNull
    public static ExceptionCatchingInputStream obtain(@NonNull InputStream inputStream) {
        ExceptionCatchingInputStream exceptionCatchingInputStreamPoll;
        Queue<ExceptionCatchingInputStream> queue = QUEUE;
        synchronized (queue) {
            exceptionCatchingInputStreamPoll = queue.poll();
        }
        if (exceptionCatchingInputStreamPoll == null) {
            exceptionCatchingInputStreamPoll = new ExceptionCatchingInputStream();
        }
        exceptionCatchingInputStreamPoll.setInputStream(inputStream);
        return exceptionCatchingInputStreamPoll;
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
    public void mark(int i) {
        this.wrapped.mark(i);
    }

    @Override
    public boolean markSupported() {
        return this.wrapped.markSupported();
    }

    @Override
    public int read(byte[] bArr) {
        try {
            return this.wrapped.read(bArr);
        } catch (IOException e) {
            this.exception = e;
            return -1;
        }
    }

    public void release() {
        this.exception = null;
        this.wrapped = null;
        Queue<ExceptionCatchingInputStream> queue = QUEUE;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override
    public synchronized void reset() throws IOException {
        this.wrapped.reset();
    }

    public void setInputStream(@NonNull InputStream inputStream) {
        this.wrapped = inputStream;
    }

    @Override
    public long skip(long j) {
        try {
            return this.wrapped.skip(j);
        } catch (IOException e) {
            this.exception = e;
            return 0L;
        }
    }

    @Override
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.wrapped.read(bArr, i, i2);
        } catch (IOException e) {
            this.exception = e;
            return -1;
        }
    }

    @Override
    public int read() {
        try {
            return this.wrapped.read();
        } catch (IOException e) {
            this.exception = e;
            return -1;
        }
    }
}
