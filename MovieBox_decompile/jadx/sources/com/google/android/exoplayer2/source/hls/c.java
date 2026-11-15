package com.google.android.exoplayer2.source.hls;

public final class c implements f {

    private final com.google.android.exoplayer2.upstream.k.a f25285a;

    public c(com.google.android.exoplayer2.upstream.k.a aVar) {
        this.f25285a = aVar;
    }

    @Override
    public com.google.android.exoplayer2.upstream.k a(int i10) {
        return this.f25285a.createDataSource();
    }
}
