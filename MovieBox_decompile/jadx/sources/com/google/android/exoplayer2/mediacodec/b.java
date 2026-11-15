package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import com.google.android.exoplayer2.util.m0;
import java.nio.ByteBuffer;

final class b implements l {

    private final MediaCodec f24700a;

    private final g f24701b;

    private final e f24702c;

    private final boolean f24703d;

    private boolean f24704e;

    private int f24705f;

    public static final class C0344b implements l.b {

        private final com.google.common.base.q f24706a;

        private final com.google.common.base.q f24707b;

        private final boolean f24708c;

        public C0344b(final int i10, boolean z10) {
            this(new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return b.C0344b.e(i10);
                }
            }, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return b.C0344b.f(i10);
                }
            }, z10);
        }

        public static HandlerThread e(int i10) {
            return new HandlerThread(b.r(i10));
        }

        public static HandlerThread f(int i10) {
            return new HandlerThread(b.s(i10));
        }

        @Override
        public b a(l.a aVar) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            String str = aVar.f24753a.f24759a;
            b bVar = null;
            try {
                m0.a("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    b bVar2 = new b(mediaCodecCreateByCodecName, (HandlerThread) this.f24706a.get(), (HandlerThread) this.f24707b.get(), this.f24708c);
                    try {
                        m0.c();
                        bVar2.u(aVar.f24754b, aVar.f24756d, aVar.f24757e, aVar.f24758f);
                        return bVar2;
                    } catch (Exception e10) {
                        e = e10;
                        bVar = bVar2;
                        if (bVar != null) {
                            bVar.release();
                        } else if (mediaCodecCreateByCodecName != null) {
                            mediaCodecCreateByCodecName.release();
                        }
                        throw e;
                    }
                } catch (Exception e11) {
                    e = e11;
                }
            } catch (Exception e12) {
                e = e12;
                mediaCodecCreateByCodecName = null;
            }
        }

        C0344b(com.google.common.base.q qVar, com.google.common.base.q qVar2, boolean z10) {
            this.f24706a = qVar;
            this.f24707b = qVar2;
            this.f24708c = z10;
        }
    }

    public static String r(int i10) {
        return t(i10, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    public static String s(int i10) {
        return t(i10, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String t(int i10, String str) {
        StringBuilder sb2 = new StringBuilder(str);
        if (i10 == 1) {
            sb2.append("Audio");
        } else if (i10 == 2) {
            sb2.append("Video");
        } else {
            sb2.append("Unknown(");
            sb2.append(i10);
            sb2.append(")");
        }
        return sb2.toString();
    }

    public void u(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i10) {
        this.f24701b.h(this.f24700a);
        m0.a("configureCodec");
        this.f24700a.configure(mediaFormat, surface, mediaCrypto, i10);
        m0.c();
        this.f24702c.q();
        m0.a("startCodec");
        this.f24700a.start();
        m0.c();
        this.f24705f = 1;
    }

    public void v(l.c cVar, MediaCodec mediaCodec, long j10, long j11) {
        cVar.a(this, j10, j11);
    }

    private void w() {
        if (this.f24703d) {
            try {
                this.f24702c.r();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    @Override
    public void a(int i10, int i11, int i12, long j10, int i13) {
        this.f24702c.m(i10, i11, i12, j10, i13);
    }

    @Override
    public void b(Bundle bundle) {
        w();
        this.f24700a.setParameters(bundle);
    }

    @Override
    public MediaFormat c() {
        return this.f24701b.g();
    }

    @Override
    public ByteBuffer d(int i10) {
        return this.f24700a.getInputBuffer(i10);
    }

    @Override
    public void e(Surface surface) {
        w();
        this.f24700a.setOutputSurface(surface);
    }

    @Override
    public void f(int i10, int i11, com.google.android.exoplayer2.decoder.c cVar, long j10, int i12) {
        this.f24702c.n(i10, i11, cVar, j10, i12);
    }

    @Override
    public void flush() {
        this.f24702c.i();
        this.f24700a.flush();
        this.f24701b.e();
        this.f24700a.start();
    }

    @Override
    public boolean g() {
        return false;
    }

    @Override
    public void h(int i10, long j10) {
        this.f24700a.releaseOutputBuffer(i10, j10);
    }

    @Override
    public int i() {
        return this.f24701b.c();
    }

    @Override
    public int j(MediaCodec.BufferInfo bufferInfo) {
        return this.f24701b.d(bufferInfo);
    }

    @Override
    public void k(int i10, boolean z10) {
        this.f24700a.releaseOutputBuffer(i10, z10);
    }

    @Override
    public ByteBuffer l(int i10) {
        return this.f24700a.getOutputBuffer(i10);
    }

    @Override
    public void m(final l.c cVar, Handler handler) {
        w();
        this.f24700a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() {
            @Override
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                this.f24698a.v(cVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override
    public void release() {
        try {
            if (this.f24705f == 1) {
                this.f24702c.p();
                this.f24701b.o();
            }
            this.f24705f = 2;
        } finally {
            if (!this.f24704e) {
                this.f24700a.release();
                this.f24704e = true;
            }
        }
    }

    @Override
    public void setVideoScalingMode(int i10) {
        w();
        this.f24700a.setVideoScalingMode(i10);
    }

    private b(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z10) {
        this.f24700a = mediaCodec;
        this.f24701b = new g(handlerThread);
        this.f24702c = new e(mediaCodec, handlerThread2);
        this.f24703d = z10;
        this.f24705f = 0;
    }
}
