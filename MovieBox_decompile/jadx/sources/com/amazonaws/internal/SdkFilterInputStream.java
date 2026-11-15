package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public abstract class SdkFilterInputStream extends FilterInputStream implements MetricAware {
    protected SdkFilterInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override
    public int available() {
        k();
        return ((FilterInputStream) this).in.available();
    }

    @Override
    public void close() throws IOException {
        ((FilterInputStream) this).in.close();
        k();
    }

    @Override
    public boolean d() {
        if (((FilterInputStream) this).in instanceof MetricAware) {
            return ((MetricAware) ((FilterInputStream) this).in).d();
        }
        return false;
    }

    protected final void k() {
        if (Thread.interrupted()) {
            h();
            throw new AbortedException();
        }
    }

    @Override
    public synchronized void mark(int i10) {
        k();
        ((FilterInputStream) this).in.mark(i10);
    }

    @Override
    public boolean markSupported() {
        k();
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override
    public int read() {
        k();
        return ((FilterInputStream) this).in.read();
    }

    @Override
    public synchronized void reset() {
        k();
        ((FilterInputStream) this).in.reset();
    }

    @Override
    public long skip(long j10) {
        k();
        return ((FilterInputStream) this).in.skip(j10);
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        k();
        return ((FilterInputStream) this).in.read(bArr, i10, i11);
    }

    protected void h() {
    }
}
