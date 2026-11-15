package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;

public interface e extends s, ReadableByteChannel {
    long a(byte b10) throws IOException;

    c a();

    f b(long j10) throws IOException;

    String c() throws IOException;

    byte[] c(long j10) throws IOException;

    String d(long j10) throws IOException;

    int e() throws IOException;

    void e(long j10) throws IOException;

    boolean f() throws IOException;

    short g() throws IOException;

    long i() throws IOException;

    InputStream j();

    byte readByte() throws IOException;

    void readFully(byte[] bArr) throws IOException;

    int readInt() throws IOException;

    short readShort() throws IOException;

    void skip(long j10) throws IOException;
}
