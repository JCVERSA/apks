package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.p0;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class u implements l {

    private final MediaCodec f24775a;

    private ByteBuffer[] f24776b;

    private ByteBuffer[] f24777c;

    public static class b implements l.b {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.exoplayer2.mediacodec.u$a] */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3 */
        @Override
        public l a(l.a aVar) throws Throwable {
            MediaCodec mediaCodec = 0;
            mediaCodec = 0;
            try {
                MediaCodec mediaCodecB = b(aVar);
                try {
                    m0.a("configureCodec");
                    mediaCodecB.configure(aVar.f24754b, aVar.f24756d, aVar.f24757e, aVar.f24758f);
                    m0.c();
                    m0.a("startCodec");
                    mediaCodecB.start();
                    m0.c();
                    return new u(mediaCodecB);
                } catch (IOException | RuntimeException e10) {
                    e = e10;
                    mediaCodec = mediaCodecB;
                    if (mediaCodec != 0) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            } catch (IOException e11) {
                e = e11;
            } catch (RuntimeException e12) {
                e = e12;
            }
        }

        protected MediaCodec b(l.a aVar) throws IOException {
            com.google.android.exoplayer2.util.a.e(aVar.f24753a);
            String str = aVar.f24753a.f24759a;
            m0.a("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            m0.c();
            return mediaCodecCreateByCodecName;
        }
    }

    public void o(l.c cVar, MediaCodec mediaCodec, long j10, long j11) {
        cVar.a(this, j10, j11);
    }

    @Override
    public void a(int i10, int i11, int i12, long j10, int i13) {
        this.f24775a.queueInputBuffer(i10, i11, i12, j10, i13);
    }

    @Override
    public void b(Bundle bundle) {
        this.f24775a.setParameters(bundle);
    }

    @Override
    public MediaFormat c() {
        return this.f24775a.getOutputFormat();
    }

    @Override
    public ByteBuffer d(int i10) {
        return p0.f26854a >= 21 ? this.f24775a.getInputBuffer(i10) : ((ByteBuffer[]) p0.j(this.f24776b))[i10];
    }

    @Override
    public void e(Surface surface) {
        this.f24775a.setOutputSurface(surface);
    }

    @Override
    public void f(int i10, int i11, com.google.android.exoplayer2.decoder.c cVar, long j10, int i12) {
        this.f24775a.queueSecureInputBuffer(i10, i11, cVar.a(), j10, i12);
    }

    @Override
    public void flush() {
        this.f24775a.flush();
    }

    @Override
    public boolean g() {
        return false;
    }

    @Override
    public void h(int i10, long j10) {
        this.f24775a.releaseOutputBuffer(i10, j10);
    }

    @Override
    public int i() {
        return this.f24775a.dequeueInputBuffer(0L);
    }

    @Override
    public int j(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.f24775a.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && p0.f26854a < 21) {
                this.f24777c = this.f24775a.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override
    public void k(int i10, boolean z10) {
        this.f24775a.releaseOutputBuffer(i10, z10);
    }

    @Override
    public ByteBuffer l(int i10) {
        return p0.f26854a >= 21 ? this.f24775a.getOutputBuffer(i10) : ((ByteBuffer[]) p0.j(this.f24777c))[i10];
    }

    @Override
    public void m(final l.c cVar, Handler handler) {
        this.f24775a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() {
            @Override
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                this.f24773a.o(cVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override
    public void release() {
        this.f24776b = null;
        this.f24777c = null;
        this.f24775a.release();
    }

    @Override
    public void setVideoScalingMode(int i10) {
        this.f24775a.setVideoScalingMode(i10);
    }

    private u(MediaCodec mediaCodec) {
        this.f24775a = mediaCodec;
        if (p0.f26854a < 21) {
            this.f24776b = mediaCodec.getInputBuffers();
            this.f24777c = mediaCodec.getOutputBuffers();
        }
    }
}
