package defpackage;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import java.nio.ByteBuffer;

public final class ckj implements rkj {
    public final MediaCodec a;
    public final hkj b;
    public final skj c;
    public final nkj d;
    public boolean e;
    public int f = 0;

    public ckj(MediaCodec mediaCodec, HandlerThread handlerThread, skj skjVar, nkj nkjVar, bkj bkjVar) {
        this.a = mediaCodec;
        this.b = new hkj(handlerThread);
        this.c = skjVar;
        this.d = nkjVar;
    }

    public static void l(ckj ckjVar, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i) {
        nkj nkjVar;
        hkj hkjVar = ckjVar.b;
        MediaCodec mediaCodec = ckjVar.a;
        hkjVar.f(mediaCodec);
        Trace.beginSection("configureCodec");
        mediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, i);
        Trace.endSection();
        ckjVar.c.zzh();
        Trace.beginSection("startCodec");
        mediaCodec.start();
        Trace.endSection();
        if (kfh.a >= 35 && (nkjVar = ckjVar.d) != null) {
            nkjVar.a(mediaCodec);
        }
        ckjVar.f = 1;
    }

    public static String m(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override
    public final void a(int i, int i2, int i3, long j, int i4) {
        this.c.c(i, 0, i3, j, i4);
    }

    @Override
    public final void b(Surface surface) {
        this.a.setOutputSurface(surface);
    }

    @Override
    public final boolean c(qkj qkjVar) {
        this.b.g(qkjVar);
        return true;
    }

    @Override
    public final void d(int i, int i2, pzi pziVar, long j, int i3) {
        this.c.b(i, 0, pziVar, j, 0);
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
        this.c.zzc();
        return this.b.b(bufferInfo);
    }

    @Override
    public final int zza() {
        this.c.zzc();
        return this.b.a();
    }

    @Override
    public final MediaFormat zzc() {
        return this.b.c();
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
        this.c.zzb();
        MediaCodec mediaCodec = this.a;
        mediaCodec.flush();
        this.b.e();
        mediaCodec.start();
    }

    @Override
    public final void zzm() {
        nkj nkjVar;
        nkj nkjVar2;
        try {
            try {
                if (this.f == 1) {
                    this.c.zzg();
                    this.b.h();
                }
                this.f = 2;
            } finally {
                if (!this.e) {
                    int i = kfh.a;
                    if (i >= 30 && i < 33) {
                        this.a.stop();
                    }
                    if (i >= 35 && (nkjVar2 = this.d) != null) {
                        nkjVar2.c(this.a);
                    }
                    this.a.release();
                    this.e = true;
                }
            }
        } catch (Throwable th) {
            if (kfh.a >= 35 && (nkjVar = this.d) != null) {
                nkjVar.c(this.a);
            }
            this.a.release();
            this.e = true;
            throw th;
        }
    }

    @Override
    public final void zzq(Bundle bundle) {
        this.c.a(bundle);
    }
}
