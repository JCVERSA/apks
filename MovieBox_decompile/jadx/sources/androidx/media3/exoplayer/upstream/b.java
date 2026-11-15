package androidx.media3.exoplayer.upstream;

public interface b {

    public interface a {
        androidx.media3.exoplayer.upstream.a a();

        a next();
    }

    void a(a aVar);

    androidx.media3.exoplayer.upstream.a allocate();

    void b(androidx.media3.exoplayer.upstream.a aVar);

    int getIndividualAllocationLength();

    void trim();
}
