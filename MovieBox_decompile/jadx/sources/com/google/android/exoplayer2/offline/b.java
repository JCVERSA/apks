package com.google.android.exoplayer2.offline;

public interface b {

    public interface a {
        void onProgress(long j10, long j11, float f10);
    }

    void a(a aVar);

    void cancel();

    void remove();
}
