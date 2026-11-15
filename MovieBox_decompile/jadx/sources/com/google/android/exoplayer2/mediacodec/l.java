package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.p1;
import java.nio.ByteBuffer;

public interface l {

    public static final class a {

        public final m f24753a;

        public final MediaFormat f24754b;

        public final p1 f24755c;

        public final Surface f24756d;

        public final MediaCrypto f24757e;

        public final int f24758f;

        private a(m mVar, MediaFormat mediaFormat, p1 p1Var, Surface surface, MediaCrypto mediaCrypto, int i10) {
            this.f24753a = mVar;
            this.f24754b = mediaFormat;
            this.f24755c = p1Var;
            this.f24756d = surface;
            this.f24757e = mediaCrypto;
            this.f24758f = i10;
        }

        public static a a(m mVar, MediaFormat mediaFormat, p1 p1Var, MediaCrypto mediaCrypto) {
            return new a(mVar, mediaFormat, p1Var, null, mediaCrypto, 0);
        }

        public static a b(m mVar, MediaFormat mediaFormat, p1 p1Var, Surface surface, MediaCrypto mediaCrypto) {
            return new a(mVar, mediaFormat, p1Var, surface, mediaCrypto, 0);
        }
    }

    public interface b {
        l a(a aVar);
    }

    public interface c {
        void a(l lVar, long j10, long j11);
    }

    void a(int i10, int i11, int i12, long j10, int i13);

    void b(Bundle bundle);

    MediaFormat c();

    ByteBuffer d(int i10);

    void e(Surface surface);

    void f(int i10, int i11, com.google.android.exoplayer2.decoder.c cVar, long j10, int i12);

    void flush();

    boolean g();

    void h(int i10, long j10);

    int i();

    int j(MediaCodec.BufferInfo bufferInfo);

    void k(int i10, boolean z10);

    ByteBuffer l(int i10);

    void m(c cVar, Handler handler);

    void release();

    void setVideoScalingMode(int i10);
}
