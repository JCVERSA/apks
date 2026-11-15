package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.media3.common.util.a1;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class r0 implements t {

    private final MediaCodec f11933a;

    private final p f11934b;

    public static class b implements t.b {
        /* JADX WARN: Code duplicated, block: B:22:0x0045  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.exoplayer.mediacodec.r0$a] */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3 */
        @Override
        public t a(t.a aVar) throws Throwable {
            MediaCodec mediaCodec = 0;
            mediaCodec = 0;
            try {
                MediaCodec mediaCodecB = b(aVar);
                try {
                    androidx.media3.common.util.q0.a("configureCodec");
                    Surface surface = aVar.f11939d;
                    mediaCodecB.configure(aVar.f11937b, surface, aVar.f11940e, (surface == null && aVar.f11936a.f11953k && a1.f10038a >= 35) ? 8 : 0);
                    androidx.media3.common.util.q0.b();
                    androidx.media3.common.util.q0.a("startCodec");
                    mediaCodecB.start();
                    androidx.media3.common.util.q0.b();
                    return new r0(mediaCodecB, aVar.f11941f);
                } catch (IOException e10) {
                    e = e10;
                    mediaCodec = mediaCodecB;
                    if (mediaCodec != 0) {
                        mediaCodec.release();
                    }
                    throw e;
                } catch (RuntimeException e11) {
                    e = e11;
                    mediaCodec = mediaCodecB;
                    if (mediaCodec != 0) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            } catch (IOException e12) {
                e = e12;
            } catch (RuntimeException e13) {
                e = e13;
            }
        }

        protected MediaCodec b(t.a aVar) throws IOException {
            androidx.media3.common.util.a.e(aVar.f11936a);
            String str = aVar.f11936a.f11943a;
            androidx.media3.common.util.q0.a("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            androidx.media3.common.util.q0.b();
            return mediaCodecCreateByCodecName;
        }
    }

    public void q(t.d dVar, MediaCodec mediaCodec, long j10, long j11) {
        dVar.a(this, j10, j11);
    }

    @Override
    public void a(int i10, int i11, int i12, long j10, int i13) {
        this.f11933a.queueInputBuffer(i10, i11, i12, j10, i13);
    }

    @Override
    public void b(Bundle bundle) {
        this.f11933a.setParameters(bundle);
    }

    @Override
    public MediaFormat c() {
        return this.f11933a.getOutputFormat();
    }

    @Override
    public ByteBuffer d(int i10) {
        return this.f11933a.getInputBuffer(i10);
    }

    @Override
    public void e(Surface surface) {
        this.f11933a.setOutputSurface(surface);
    }

    @Override
    public void f(int i10, int i11, androidx.media3.decoder.c cVar, long j10, int i12) {
        this.f11933a.queueSecureInputBuffer(i10, i11, cVar.a(), j10, i12);
    }

    @Override
    public void flush() {
        this.f11933a.flush();
    }

    @Override
    public boolean g() {
        return false;
    }

    @Override
    public void h(int i10, long j10) {
        this.f11933a.releaseOutputBuffer(i10, j10);
    }

    @Override
    public int i() {
        return this.f11933a.dequeueInputBuffer(0L);
    }

    @Override
    public int j(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.f11933a.dequeueOutputBuffer(bufferInfo, 0L);
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override
    public void k(int i10, boolean z10) {
        this.f11933a.releaseOutputBuffer(i10, z10);
    }

    @Override
    public ByteBuffer l(int i10) {
        return this.f11933a.getOutputBuffer(i10);
    }

    @Override
    public boolean m(t.c cVar) {
        return s.a(this, cVar);
    }

    @Override
    public void n(final t.d dVar, Handler handler) {
        this.f11933a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() {
            @Override
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                this.f11931a.q(dVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override
    public void o() {
        this.f11933a.detachOutputSurface();
    }

    @Override
    public void release() {
        p pVar;
        try {
            int i10 = a1.f10038a;
            if (i10 >= 30 && i10 < 33) {
                this.f11933a.stop();
            }
        } finally {
            if (a1.f10038a >= 35 && (pVar = this.f11934b) != null) {
                pVar.d(this.f11933a);
            }
            this.f11933a.release();
        }
    }

    @Override
    public void setVideoScalingMode(int i10) {
        this.f11933a.setVideoScalingMode(i10);
    }

    private r0(MediaCodec mediaCodec, p pVar) {
        this.f11933a = mediaCodec;
        this.f11934b = pVar;
        if (a1.f10038a < 35 || pVar == null) {
            return;
        }
        pVar.b(mediaCodec);
    }
}
