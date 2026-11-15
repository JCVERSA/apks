package defpackage;

public interface iu1 {
    Object dequeueInputBuffer();

    Object dequeueOutputBuffer();

    void flush();

    void queueInputBuffer(Object obj);

    void release();
}
