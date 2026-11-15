package com.google.android.exoplayer2.source;

import android.net.Uri;
import g9.u1;
import java.util.Map;

public interface r {

    public interface a {
        r a(u1 u1Var);
    }

    void a();

    long b();

    void c(com.google.android.exoplayer2.upstream.g gVar, Uri uri, Map map, long j10, long j11, i9.n nVar);

    int d(i9.a0 a0Var);

    void release();

    void seek(long j10, long j11);
}
