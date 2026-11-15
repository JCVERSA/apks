package com.yandex.mobile.ads.impl;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class x32 implements gv0 {
    private final MediaCodec a;

    @Nullable
    private ByteBuffer[] b;

    @Nullable
    private ByteBuffer[] c;

    public static class a implements gv0.b {
        public static MediaCodec b(gv0.a aVar) throws IOException {
            aVar.a.getClass();
            String str = aVar.a.a;
            u52.a("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            u52.a();
            return mediaCodecCreateByCodecName;
        }

        @Override
        public final gv0 a(gv0.a aVar) throws Throwable {
            MediaCodec mediaCodecB;
            Throwable e;
            try {
                mediaCodecB = b(aVar);
                try {
                    u52.a("configureCodec");
                    mediaCodecB.configure(aVar.b, aVar.d, aVar.e, 0);
                    u52.a();
                    u52.a("startCodec");
                    mediaCodecB.start();
                    u52.a();
                    return new x32(mediaCodecB);
                } catch (IOException | RuntimeException e2) {
                    e = e2;
                    if (mediaCodecB != null) {
                        mediaCodecB.release();
                    }
                    throw e;
                }
            } catch (IOException | RuntimeException e3) {
                mediaCodecB = null;
                e = e3;
            }
        }
    }

    @Override
    public final int b() {
        return this.a.dequeueInputBuffer(0L);
    }

    @Override
    @Nullable
    public final ByteBuffer c(int i) {
        return f92.a >= 21 ? this.a.getOutputBuffer(i) : this.c[i];
    }

    @Override
    public final void flush() {
        this.a.flush();
    }

    @Override
    public final void release() {
        this.b = null;
        this.c = null;
        this.a.release();
    }

    private x32(MediaCodec mediaCodec) {
        this.a = mediaCodec;
        if (f92.a < 21) {
            this.b = mediaCodec.getInputBuffers();
            this.c = mediaCodec.getOutputBuffers();
        }
    }

    @Override
    public final int a(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.a.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && f92.a < 21) {
                this.c = this.a.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override
    @Nullable
    public final ByteBuffer b(int i) {
        return f92.a >= 21 ? this.a.getInputBuffer(i) : this.b[i];
    }

    @Override
    public final MediaFormat a() {
        return this.a.getOutputFormat();
    }

    public void a(gv0.c cVar, MediaCodec mediaCodec, long j, long j2) {
        cVar.a(j);
    }

    @Override
    public final void a(int i, int i2, long j, int i3) {
        this.a.queueInputBuffer(i, 0, i2, j, i3);
    }

    @Override
    public final void a(int i, gv gvVar, long j) {
        this.a.queueSecureInputBuffer(i, 0, gvVar.a(), j, 0);
    }

    @Override
    @RequiresApi(21)
    public final void a(int i, long j) {
        this.a.releaseOutputBuffer(i, j);
    }

    @Override
    public final void a(boolean z, int i) {
        this.a.releaseOutputBuffer(i, z);
    }

    @Override
    @RequiresApi(23)
    public final void a(final gv0.c cVar, Handler handler) {
        this.a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() {
            @Override
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.a.a(cVar, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override
    @RequiresApi(23)
    public final void a(Surface surface) {
        this.a.setOutputSurface(surface);
    }

    @Override
    @RequiresApi(19)
    public final void a(Bundle bundle) {
        this.a.setParameters(bundle);
    }

    @Override
    public final void a(int i) {
        this.a.setVideoScalingMode(i);
    }
}
