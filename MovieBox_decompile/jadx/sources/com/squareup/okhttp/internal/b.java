package com.squareup.okhttp.internal;

import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;

abstract class b extends ForwardingSink {

    private boolean f39456a;

    public b(Sink sink) {
        super(sink);
    }

    protected abstract void b(IOException iOException);

    @Override
    public void close() {
        if (this.f39456a) {
            return;
        }
        try {
            super.close();
        } catch (IOException e10) {
            this.f39456a = true;
            b(e10);
        }
    }

    @Override
    public void flush() {
        if (this.f39456a) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e10) {
            this.f39456a = true;
            b(e10);
        }
    }

    @Override
    public void write(Buffer buffer, long j10) throws EOFException {
        if (this.f39456a) {
            buffer.skip(j10);
            return;
        }
        try {
            super.write(buffer, j10);
        } catch (IOException e10) {
            this.f39456a = true;
            b(e10);
        }
    }
}
