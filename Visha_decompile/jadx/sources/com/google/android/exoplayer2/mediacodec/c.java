package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.k;
import defpackage.vl1;
import java.nio.ByteBuffer;

public interface c {

    public static final class a {
        public final d a;
        public final MediaFormat b;
        public final k c;
        public final Surface d;
        public final MediaCrypto e;
        public final int f;

        public a(d dVar, MediaFormat mediaFormat, k kVar, Surface surface, MediaCrypto mediaCrypto, int i) {
            this.a = dVar;
            this.b = mediaFormat;
            this.c = kVar;
            this.d = surface;
            this.e = mediaCrypto;
            this.f = i;
        }

        public static a a(d dVar, MediaFormat mediaFormat, k kVar, MediaCrypto mediaCrypto) {
            return new a(dVar, mediaFormat, kVar, null, mediaCrypto, 0);
        }

        public static a b(d dVar, MediaFormat mediaFormat, k kVar, Surface surface, MediaCrypto mediaCrypto) {
            return new a(dVar, mediaFormat, kVar, surface, mediaCrypto, 0);
        }
    }

    public interface b {
        c a(a aVar);
    }

    public interface InterfaceC0081c {
        void a(c cVar, long j, long j2);
    }

    void a(int i, int i2, vl1 vl1Var, long j, int i3);

    void b(InterfaceC0081c interfaceC0081c, Handler handler);

    int dequeueInputBufferIndex();

    int dequeueOutputBufferIndex(MediaCodec.BufferInfo bufferInfo);

    void flush();

    ByteBuffer getInputBuffer(int i);

    ByteBuffer getOutputBuffer(int i);

    MediaFormat getOutputFormat();

    boolean needsReconfiguration();

    void queueInputBuffer(int i, int i2, int i3, long j, int i4);

    void release();

    void releaseOutputBuffer(int i, long j);

    void releaseOutputBuffer(int i, boolean z);

    void setOutputSurface(Surface surface);

    void setParameters(Bundle bundle);

    void setVideoScalingMode(int i);
}
