package defpackage;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;

public final class slj implements rkj {
    public final MediaCodec a;
    public final nkj b;

    public slj(MediaCodec mediaCodec, nkj nkjVar, rlj rljVar) {
        this.a = mediaCodec;
        this.b = nkjVar;
        if (kfh.a < 35 || nkjVar == null) {
            return;
        }
        nkjVar.a(mediaCodec);
    }

    @Override
    public final void a(int i, int i2, int i3, long j, int i4) {
        this.a.queueInputBuffer(i, 0, i3, j, i4);
    }

    @Override
    public final void b(Surface surface) {
        this.a.setOutputSurface(surface);
    }

    @Override
    public final boolean c(qkj qkjVar) {
        return false;
    }

    @Override
    public final void d(int i, int i2, pzi pziVar, long j, int i3) {
        this.a.queueSecureInputBuffer(i, 0, pziVar.a(), j, 0);
    }

    @Override
    public final ByteBuffer e(int i) {
        return this.a.getInputBuffer(i);
    }

    @Override
    public final void f(int i, long j) {
        this.a.releaseOutputBuffer(i, j);
    }

    @Override
    public final void g(int i) {
        this.a.setVideoScalingMode(i);
    }

    @Override
    public final void h(int i, boolean z) {
        this.a.releaseOutputBuffer(i, false);
    }

    @Override
    public final int i(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.a.dequeueOutputBuffer(bufferInfo, 0L);
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override
    public final int zza() {
        return this.a.dequeueInputBuffer(0L);
    }

    @Override
    public final MediaFormat zzc() {
        return this.a.getOutputFormat();
    }

    @Override
    public final ByteBuffer zzg(int i) {
        return this.a.getOutputBuffer(i);
    }

    @Override
    public final void zzi() {
        this.a.detachOutputSurface();
    }

    @Override
    public final void zzj() {
        this.a.flush();
    }

    @Override
    public final void zzm() {
        nkj nkjVar;
        try {
            int i = kfh.a;
            if (i >= 30 && i < 33) {
                this.a.stop();
            }
            if (i >= 35 && this.b != null) {
            }
        } finally {
            if (kfh.a >= 35 && (nkjVar = this.b) != null) {
                nkjVar.c(this.a);
            }
            this.a.release();
        }
    }

    @Override
    public final void zzq(Bundle bundle) {
        this.a.setParameters(bundle);
    }
}
