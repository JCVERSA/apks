package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import com.google.android.exoplayer2.mediacodec.a;
import defpackage.nj;
import defpackage.pj;
import defpackage.sua;
import defpackage.vl1;
import defpackage.w6a;
import java.nio.ByteBuffer;

public final class a implements c {
    public final MediaCodec a;
    public final pj b;
    public final nj c;
    public final boolean d;
    public boolean e;
    public int f;

    public static final class b implements c.b {
        public final w6a a;
        public final w6a b;
        public final boolean c;

        public b(final int i, boolean z) {
            this(new w6a() {
                @Override
                public final Object get() {
                    return a.b.e(i);
                }
            }, new w6a() {
                @Override
                public final Object get() {
                    return a.b.f(i);
                }
            }, z);
        }

        public static HandlerThread e(int i) {
            return new HandlerThread(a.g(i));
        }

        public static HandlerThread f(int i) {
            return new HandlerThread(a.h(i));
        }

        @Override
        public a a(c.a aVar) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            String str = aVar.a.a;
            a aVar2 = null;
            try {
                sua.a("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    a aVar3 = new a(mediaCodecCreateByCodecName, (HandlerThread) this.a.get(), (HandlerThread) this.b.get(), this.c);
                    try {
                        sua.c();
                        aVar3.j(aVar.b, aVar.d, aVar.e, aVar.f);
                        return aVar3;
                    } catch (Exception e) {
                        e = e;
                        aVar2 = aVar3;
                        if (aVar2 != null) {
                            aVar2.release();
                        } else if (mediaCodecCreateByCodecName != null) {
                            mediaCodecCreateByCodecName.release();
                        }
                        throw e;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                mediaCodecCreateByCodecName = null;
            }
        }

        public b(w6a w6aVar, w6a w6aVar2, boolean z) {
            this.a = w6aVar;
            this.b = w6aVar2;
            this.c = z;
        }
    }

    public static String g(int i) {
        return i(i, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    public static String h(int i) {
        return i(i, "ExoPlayer:MediaCodecQueueingThread:");
    }

    public static String i(int i, String str) {
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
    public void a(int i, int i2, vl1 vl1Var, long j, int i3) {
        this.c.n(i, i2, vl1Var, j, i3);
    }

    @Override
    public void b(final c.InterfaceC0081c interfaceC0081c, Handler handler) {
        l();
        this.a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() {
            @Override
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.a.k(interfaceC0081c, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override
    public int dequeueInputBufferIndex() {
        return this.b.c();
    }

    @Override
    public int dequeueOutputBufferIndex(MediaCodec.BufferInfo bufferInfo) {
        return this.b.d(bufferInfo);
    }

    @Override
    public void flush() {
        this.c.i();
        this.a.flush();
        this.b.e();
        this.a.start();
    }

    @Override
    public ByteBuffer getInputBuffer(int i) {
        return this.a.getInputBuffer(i);
    }

    @Override
    public ByteBuffer getOutputBuffer(int i) {
        return this.a.getOutputBuffer(i);
    }

    @Override
    public MediaFormat getOutputFormat() {
        return this.b.g();
    }

    public final void j(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i) {
        this.b.h(this.a);
        sua.a("configureCodec");
        this.a.configure(mediaFormat, surface, mediaCrypto, i);
        sua.c();
        this.c.q();
        sua.a("startCodec");
        this.a.start();
        sua.c();
        this.f = 1;
    }

    public final void k(c.InterfaceC0081c interfaceC0081c, MediaCodec mediaCodec, long j, long j2) {
        interfaceC0081c.a(this, j, j2);
    }

    public final void l() {
        if (this.d) {
            try {
                this.c.r();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @Override
    public boolean needsReconfiguration() {
        return false;
    }

    @Override
    public void queueInputBuffer(int i, int i2, int i3, long j, int i4) {
        this.c.m(i, i2, i3, j, i4);
    }

    @Override
    public void release() {
        try {
            if (this.f == 1) {
                this.c.p();
                this.b.o();
            }
            this.f = 2;
        } finally {
            if (!this.e) {
                this.a.release();
                this.e = true;
            }
        }
    }

    @Override
    public void releaseOutputBuffer(int i, boolean z) {
        this.a.releaseOutputBuffer(i, z);
    }

    @Override
    public void setOutputSurface(Surface surface) {
        l();
        this.a.setOutputSurface(surface);
    }

    @Override
    public void setParameters(Bundle bundle) {
        l();
        this.a.setParameters(bundle);
    }

    @Override
    public void setVideoScalingMode(int i) {
        l();
        this.a.setVideoScalingMode(i);
    }

    public a(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z) {
        this.a = mediaCodec;
        this.b = new pj(handlerThread);
        this.c = new nj(mediaCodec, handlerThread2);
        this.d = z;
        this.f = 0;
    }

    @Override
    public void releaseOutputBuffer(int i, long j) {
        this.a.releaseOutputBuffer(i, j);
    }
}
