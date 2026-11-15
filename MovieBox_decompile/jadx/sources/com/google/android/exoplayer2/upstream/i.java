package com.google.android.exoplayer2.upstream;

public interface i {

    public interface a {
        i createDataSink();
    }

    void a(n nVar);

    void close();

    void write(byte[] bArr, int i10, int i11);
}
