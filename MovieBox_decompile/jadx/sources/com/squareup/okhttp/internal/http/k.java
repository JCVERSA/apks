package com.squareup.okhttp.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;

public final class k implements Sink {

    private boolean f39697a;

    private final int f39698b;

    private final Buffer f39699c;

    public k(int i10) {
        this.f39699c = new Buffer();
        this.f39698b = i10;
    }

    @Override
    public void close() throws ProtocolException {
        if (this.f39697a) {
            return;
        }
        this.f39697a = true;
        if (this.f39699c.size() >= this.f39698b) {
            return;
        }
        throw new ProtocolException("content-length promised " + this.f39698b + " bytes, but received " + this.f39699c.size());
    }

    public long d() {
        return this.f39699c.size();
    }

    public void f(Sink sink) throws IOException {
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.f39699c;
        buffer2.copyTo(buffer, 0L, buffer2.size());
        sink.write(buffer, buffer.size());
    }

    @Override
    public void flush() {
    }

    @Override
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override
    public void write(Buffer buffer, long j10) throws ProtocolException {
        if (this.f39697a) {
            throw new IllegalStateException("closed");
        }
        com.squareup.okhttp.internal.g.a(buffer.size(), 0L, j10);
        if (this.f39698b == -1 || this.f39699c.size() <= ((long) this.f39698b) - j10) {
            this.f39699c.write(buffer, j10);
            return;
        }
        throw new ProtocolException("exceeded content-length limit of " + this.f39698b + " bytes");
    }

    public k() {
        this(-1);
    }
}
