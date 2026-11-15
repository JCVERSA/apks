package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;

public interface t {

    public static final class a {

        public final w f11936a;

        public final MediaFormat f11937b;

        public final androidx.media3.common.r f11938c;

        public final Surface f11939d;

        public final MediaCrypto f11940e;

        public final p f11941f;

        private a(w wVar, MediaFormat mediaFormat, androidx.media3.common.r rVar, Surface surface, MediaCrypto mediaCrypto, p pVar) {
            this.f11936a = wVar;
            this.f11937b = mediaFormat;
            this.f11938c = rVar;
            this.f11939d = surface;
            this.f11940e = mediaCrypto;
            this.f11941f = pVar;
        }

        public static a a(w wVar, MediaFormat mediaFormat, androidx.media3.common.r rVar, MediaCrypto mediaCrypto, p pVar) {
            return new a(wVar, mediaFormat, rVar, null, mediaCrypto, pVar);
        }

        public static a b(w wVar, MediaFormat mediaFormat, androidx.media3.common.r rVar, Surface surface, MediaCrypto mediaCrypto) {
            return new a(wVar, mediaFormat, rVar, surface, mediaCrypto, null);
        }
    }

    public interface b {

        public static final b f11942a = new k();

        t a(a aVar);
    }

    public interface c {
        void a();

        void b();
    }

    public interface d {
        void a(t tVar, long j10, long j11);
    }

    void a(int i10, int i11, int i12, long j10, int i13);

    void b(Bundle bundle);

    MediaFormat c();

    ByteBuffer d(int i10);

    void e(Surface surface);

    void f(int i10, int i11, androidx.media3.decoder.c cVar, long j10, int i12);

    void flush();

    boolean g();

    void h(int i10, long j10);

    int i();

    int j(MediaCodec.BufferInfo bufferInfo);

    void k(int i10, boolean z10);

    ByteBuffer l(int i10);

    boolean m(c cVar);

    void n(d dVar, Handler handler);

    void o();

    void release();

    void setVideoScalingMode(int i10);
}
