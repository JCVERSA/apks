package com.google.android.exoplayer2.decoder;

public interface d {
    Object dequeueInputBuffer();

    Object dequeueOutputBuffer();

    void flush();

    void queueInputBuffer(Object obj);

    void release();
}
