package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.os.Bundle;

class s0 implements v {

    private final MediaCodec f11935a;

    public s0(MediaCodec mediaCodec) {
        this.f11935a = mediaCodec;
    }

    @Override
    public void a(int i10, int i11, int i12, long j10, int i13) {
        this.f11935a.queueInputBuffer(i10, i11, i12, j10, i13);
    }

    @Override
    public void b(Bundle bundle) {
        this.f11935a.setParameters(bundle);
    }

    @Override
    public void f(int i10, int i11, androidx.media3.decoder.c cVar, long j10, int i12) {
        this.f11935a.queueSecureInputBuffer(i10, i11, cVar.a(), j10, i12);
    }

    @Override
    public void c() {
    }

    @Override
    public void flush() {
    }

    @Override
    public void shutdown() {
    }

    @Override
    public void start() {
    }
}
