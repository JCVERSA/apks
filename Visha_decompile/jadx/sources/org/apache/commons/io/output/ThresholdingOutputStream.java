package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

public abstract class ThresholdingOutputStream extends OutputStream {
    private final int threshold;
    private boolean thresholdExceeded;
    private long written;

    public ThresholdingOutputStream(int i) {
        this.threshold = i;
    }

    public void checkThreshold(int i) throws IOException {
        if (this.thresholdExceeded || this.written + ((long) i) <= this.threshold) {
            return;
        }
        this.thresholdExceeded = true;
        thresholdReached();
    }

    @Override
    public void close() throws IOException {
        try {
            flush();
        } catch (IOException unused) {
        }
        getStream().close();
    }

    @Override
    public void flush() throws IOException {
        getStream().flush();
    }

    public long getByteCount() {
        return this.written;
    }

    public abstract OutputStream getStream() throws IOException;

    public int getThreshold() {
        return this.threshold;
    }

    public boolean isThresholdExceeded() {
        return this.written > ((long) this.threshold);
    }

    public void resetByteCount() {
        this.thresholdExceeded = false;
        this.written = 0L;
    }

    public void setByteCount(long j) {
        this.written = j;
    }

    public abstract void thresholdReached() throws IOException;

    @Override
    public void write(int i) throws IOException {
        checkThreshold(1);
        getStream().write(i);
        this.written++;
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        checkThreshold(bArr.length);
        getStream().write(bArr);
        this.written += (long) bArr.length;
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws IOException {
        checkThreshold(i2);
        getStream().write(bArr, i, i2);
        this.written += (long) i2;
    }
}
