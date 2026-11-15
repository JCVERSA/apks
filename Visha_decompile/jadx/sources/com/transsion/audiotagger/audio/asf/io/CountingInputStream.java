package com.transsion.audiotagger.audio.asf.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

class CountingInputStream extends FilterInputStream {
    private long markPos;
    private long readCount;

    public CountingInputStream(InputStream inputStream) {
        super(inputStream);
        this.markPos = 0L;
        this.readCount = 0L;
    }

    private synchronized void bytesRead(long j) {
        if (j >= 0) {
            this.readCount += j;
        }
    }

    public synchronized long getReadCount() {
        return this.readCount;
    }

    @Override
    public synchronized void mark(int i) {
        super.mark(i);
        this.markPos = this.readCount;
    }

    @Override
    public int read() throws IOException {
        int i = super.read();
        bytesRead(1L);
        return i;
    }

    @Override
    public synchronized void reset() throws IOException {
        super.reset();
        synchronized (this) {
            this.readCount = this.markPos;
        }
    }

    @Override
    public long skip(long j) throws IOException {
        long jSkip = super.skip(j);
        bytesRead(jSkip);
        return jSkip;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = super.read(bArr, i, i2);
        bytesRead(i3);
        return i3;
    }
}
