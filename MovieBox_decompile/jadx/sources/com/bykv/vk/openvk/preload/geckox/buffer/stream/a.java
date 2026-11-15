package com.bykv.vk.openvk.preload.geckox.buffer.stream;

import java.io.IOException;
import java.io.InputStream;

public final class a extends InputStream {

    private com.bykv.vk.openvk.preload.geckox.buffer.a f20031a;

    private long f20032b;

    public a(com.bykv.vk.openvk.preload.geckox.buffer.a aVar) {
        this.f20031a = aVar;
    }

    @Override
    public final int available() throws IOException {
        long jB = this.f20031a.b() - this.f20031a.c();
        if (jB > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) jB;
    }

    @Override
    public final synchronized void mark(int i10) {
        this.f20032b = i10;
    }

    @Override
    public final boolean markSupported() {
        return true;
    }

    @Override
    public final int read(byte[] bArr) throws IOException {
        return this.f20031a.b(bArr);
    }

    @Override
    public final synchronized void reset() throws IOException {
        this.f20031a.b(this.f20032b);
    }

    @Override
    public final long skip(long j10) throws IOException {
        return this.f20031a.a(j10);
    }

    @Override
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.f20031a.b(bArr, i10, i11);
    }

    @Override
    public final int read() throws IOException {
        return this.f20031a.d();
    }

    @Override
    public final void close() throws IOException {
    }
}
