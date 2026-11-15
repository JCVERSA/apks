package com.transsion.audiotagger.audio.asf.io;

import java.io.IOException;
import java.io.OutputStream;

public class CountingOutputstream extends OutputStream {
    static final boolean $assertionsDisabled = false;
    private long count = 0;
    private final OutputStream wrapped;

    public CountingOutputstream(OutputStream outputStream) {
        this.wrapped = outputStream;
    }

    @Override
    public void close() throws IOException {
        this.wrapped.close();
    }

    @Override
    public void flush() throws IOException {
        this.wrapped.flush();
    }

    public long getCount() {
        return this.count;
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.wrapped.write(bArr);
        this.count += (long) bArr.length;
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.wrapped.write(bArr, i, i2);
        this.count += (long) i2;
    }

    @Override
    public void write(int i) throws IOException {
        this.wrapped.write(i);
        this.count++;
    }
}
