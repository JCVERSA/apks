package com.mbridge.msdk.thrid.okio;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public interface r extends Closeable, Flushable {
    void a(c cVar, long j10) throws IOException;

    t b();

    @Override
    void close() throws IOException;

    void flush() throws IOException;
}
