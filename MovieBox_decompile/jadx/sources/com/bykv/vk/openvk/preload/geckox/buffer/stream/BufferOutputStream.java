package com.bykv.vk.openvk.preload.geckox.buffer.stream;

import java.io.IOException;

public class BufferOutputStream extends b {
    private com.bykv.vk.openvk.preload.geckox.buffer.a mBuffer;

    public BufferOutputStream(com.bykv.vk.openvk.preload.geckox.buffer.a aVar) {
        this.mBuffer = aVar;
    }

    @Override
    public void close() throws IOException {
        flush();
    }

    @Override
    public void write(int i10) throws IOException {
        this.mBuffer.a(i10);
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        this.mBuffer.a(bArr);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.mBuffer.a(bArr, i10, i11);
    }

    @Override
    public void write(long j10, int i10) throws IOException {
        synchronized (this) {
            this.mBuffer.b(j10);
            this.mBuffer.a(i10);
        }
    }

    @Override
    public void write(long j10, byte[] bArr) throws IOException {
        synchronized (this) {
            this.mBuffer.b(j10);
            this.mBuffer.a(bArr);
        }
    }

    @Override
    public void write(long j10, byte[] bArr, int i10, int i11) throws IOException {
        synchronized (this) {
            this.mBuffer.b(j10);
            this.mBuffer.a(bArr, i10, i11);
        }
    }

    @Override
    public void flush() throws IOException {
    }
}
