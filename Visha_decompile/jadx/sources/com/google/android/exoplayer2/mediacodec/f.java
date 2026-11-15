package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import defpackage.blb;
import defpackage.sua;
import defpackage.vl1;
import defpackage.zi;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class f implements c {
    public final MediaCodec a;
    public ByteBuffer[] b;
    public ByteBuffer[] c;

    public static class b implements c.b {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public c a(c.a aVar) throws Throwable {
            MediaCodec mediaCodec = null;
            Object[] objArr = 0;
            try {
                MediaCodec mediaCodecB = b(aVar);
                try {
                    sua.a("configureCodec");
                    mediaCodecB.configure(aVar.b, aVar.d, aVar.e, aVar.f);
                    sua.c();
                    sua.a("startCodec");
                    mediaCodecB.start();
                    sua.c();
                    return new f(mediaCodecB);
                } catch (IOException | RuntimeException e) {
                    e = e;
                    mediaCodec = mediaCodecB;
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            } catch (IOException | RuntimeException e2) {
                e = e2;
            }
        }

        public MediaCodec b(c.a aVar) throws IOException {
            zi.e(aVar.a);
            String str = aVar.a.a;
            sua.a("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            sua.c();
            return mediaCodecCreateByCodecName;
        }
    }

    public void d(c.InterfaceC0081c interfaceC0081c, MediaCodec mediaCodec, long j, long j2) {
        interfaceC0081c.a(this, j, j2);
    }

    @Override
    public void a(int i, int i2, vl1 vl1Var, long j, int i3) {
        this.a.queueSecureInputBuffer(i, i2, vl1Var.a(), j, i3);
    }

    @Override
    public void b(final c.InterfaceC0081c interfaceC0081c, Handler handler) {
        this.a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() {
            @Override
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.a.d(interfaceC0081c, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override
    public int dequeueInputBufferIndex() {
        return this.a.dequeueInputBuffer(0L);
    }

    @Override
    public int dequeueOutputBufferIndex(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.a.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && blb.a < 21) {
                this.c = this.a.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override
    public void flush() {
        this.a.flush();
    }

    @Override
    public ByteBuffer getInputBuffer(int i) {
        return blb.a >= 21 ? this.a.getInputBuffer(i) : ((ByteBuffer[]) blb.j(this.b))[i];
    }

    @Override
    public ByteBuffer getOutputBuffer(int i) {
        return blb.a >= 21 ? this.a.getOutputBuffer(i) : ((ByteBuffer[]) blb.j(this.c))[i];
    }

    @Override
    public MediaFormat getOutputFormat() {
        return this.a.getOutputFormat();
    }

    @Override
    public boolean needsReconfiguration() {
        return false;
    }

    @Override
    public void queueInputBuffer(int i, int i2, int i3, long j, int i4) {
        this.a.queueInputBuffer(i, i2, i3, j, i4);
    }

    @Override
    public void release() {
        this.b = null;
        this.c = null;
        this.a.release();
    }

    @Override
    public void releaseOutputBuffer(int i, boolean z) {
        this.a.releaseOutputBuffer(i, z);
    }

    @Override
    public void setOutputSurface(Surface surface) {
        this.a.setOutputSurface(surface);
    }

    @Override
    public void setParameters(Bundle bundle) {
        this.a.setParameters(bundle);
    }

    @Override
    public void setVideoScalingMode(int i) {
        this.a.setVideoScalingMode(i);
    }

    public f(MediaCodec mediaCodec) {
        this.a = mediaCodec;
        if (blb.a < 21) {
            this.b = mediaCodec.getInputBuffers();
            this.c = mediaCodec.getOutputBuffers();
        }
    }

    @Override
    public void releaseOutputBuffer(int i, long j) {
        this.a.releaseOutputBuffer(i, j);
    }
}
