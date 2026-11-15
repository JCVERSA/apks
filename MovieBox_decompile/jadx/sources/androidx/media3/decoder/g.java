package androidx.media3.decoder;

public interface g {
    void a(long j10);

    Object dequeueInputBuffer();

    Object dequeueOutputBuffer();

    void flush();

    String getName();

    void queueInputBuffer(Object obj);

    void release();
}
