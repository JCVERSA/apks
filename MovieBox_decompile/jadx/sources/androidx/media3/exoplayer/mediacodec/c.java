package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.media3.common.util.a1;
import java.nio.ByteBuffer;

final class c implements t {

    private final MediaCodec f11871a;

    private final i f11872b;

    private final v f11873c;

    private final p f11874d;

    private boolean f11875e;

    private int f11876f;

    public static final class b implements t.b {

        private final com.google.common.base.q f11877b;

        private final com.google.common.base.q f11878c;

        private boolean f11879d;

        public b(final int i10) {
            this(new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return c.b.f(i10);
                }
            }, new com.google.common.base.q() {
                @Override
                public final Object get() {
                    return c.b.g(i10);
                }
            });
        }

        public static HandlerThread f(int i10) {
            return new HandlerThread(c.t(i10));
        }

        public static HandlerThread g(int i10) {
            return new HandlerThread(c.u(i10));
        }

        private static boolean h(androidx.media3.common.r rVar) {
            int i10 = a1.f10038a;
            if (i10 < 34) {
                return false;
            }
            return i10 >= 35 || androidx.media3.common.y.t(rVar.f9849o);
        }

        @Override
        public c a(t.a aVar) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            v gVar;
            int i10;
            String str = aVar.f11936a.f11943a;
            c cVar = null;
            try {
                androidx.media3.common.util.q0.a("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    if (this.f11879d && h(aVar.f11938c)) {
                        gVar = new s0(mediaCodecCreateByCodecName);
                        i10 = 4;
                    } else {
                        gVar = new g(mediaCodecCreateByCodecName, (HandlerThread) this.f11878c.get());
                        i10 = 0;
                    }
                    v vVar = gVar;
                    int i11 = i10;
                    c cVar2 = new c(mediaCodecCreateByCodecName, (HandlerThread) this.f11877b.get(), vVar, aVar.f11941f);
                    try {
                        androidx.media3.common.util.q0.b();
                        Surface surface = aVar.f11939d;
                        if (surface == null && aVar.f11936a.f11953k && a1.f10038a >= 35) {
                            i11 |= 8;
                        }
                        cVar2.w(aVar.f11937b, surface, aVar.f11940e, i11);
                        return cVar2;
                    } catch (Exception e10) {
                        e = e10;
                        cVar = cVar2;
                        if (cVar != null) {
                            cVar.release();
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

        public void e(boolean z10) {
            this.f11879d = z10;
        }

        public b(com.google.common.base.q qVar, com.google.common.base.q qVar2) {
            this.f11877b = qVar;
            this.f11878c = qVar2;
            this.f11879d = false;
        }
    }

    public static String t(int i10) {
        return v(i10, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    public static String u(int i10) {
        return v(i10, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String v(int i10, String str) {
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

    public void w(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i10) {
        p pVar;
        this.f11872b.h(this.f11871a);
        androidx.media3.common.util.q0.a("configureCodec");
        this.f11871a.configure(mediaFormat, surface, mediaCrypto, i10);
        androidx.media3.common.util.q0.b();
        this.f11873c.start();
        androidx.media3.common.util.q0.a("startCodec");
        this.f11871a.start();
        androidx.media3.common.util.q0.b();
        if (a1.f10038a >= 35 && (pVar = this.f11874d) != null) {
            pVar.b(this.f11871a);
        }
        this.f11876f = 1;
    }

    public void x(t.d dVar, MediaCodec mediaCodec, long j10, long j11) {
        dVar.a(this, j10, j11);
    }

    @Override
    public void a(int i10, int i11, int i12, long j10, int i13) {
        this.f11873c.a(i10, i11, i12, j10, i13);
    }

    @Override
    public void b(Bundle bundle) {
        this.f11873c.b(bundle);
    }

    @Override
    public MediaFormat c() {
        return this.f11872b.g();
    }

    @Override
    public ByteBuffer d(int i10) {
        return this.f11871a.getInputBuffer(i10);
    }

    @Override
    public void e(Surface surface) {
        this.f11871a.setOutputSurface(surface);
    }

    @Override
    public void f(int i10, int i11, androidx.media3.decoder.c cVar, long j10, int i12) {
        this.f11873c.f(i10, i11, cVar, j10, i12);
    }

    @Override
    public void flush() {
        this.f11873c.flush();
        this.f11871a.flush();
        this.f11872b.e();
        this.f11871a.start();
    }

    @Override
    public boolean g() {
        return false;
    }

    @Override
    public void h(int i10, long j10) {
        this.f11871a.releaseOutputBuffer(i10, j10);
    }

    @Override
    public int i() {
        this.f11873c.c();
        return this.f11872b.c();
    }

    @Override
    public int j(MediaCodec.BufferInfo bufferInfo) {
        this.f11873c.c();
        return this.f11872b.d(bufferInfo);
    }

    @Override
    public void k(int i10, boolean z10) {
        this.f11871a.releaseOutputBuffer(i10, z10);
    }

    @Override
    public ByteBuffer l(int i10) {
        return this.f11871a.getOutputBuffer(i10);
    }

    @Override
    public boolean m(t.c cVar) {
        this.f11872b.p(cVar);
        return true;
    }

    @Override
    public void n(final t.d dVar, Handler handler) {
        this.f11871a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() {
            @Override
            public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
                this.f11869a.x(dVar, mediaCodec, j10, j11);
            }
        }, handler);
    }

    @Override
    public void o() {
        this.f11871a.detachOutputSurface();
    }

    @Override
    public void release() {
        p pVar;
        p pVar2;
        try {
            if (this.f11876f == 1) {
                this.f11873c.shutdown();
                this.f11872b.q();
            }
            this.f11876f = 2;
            if (this.f11875e) {
                return;
            }
            try {
                int i10 = a1.f10038a;
                if (i10 >= 30 && i10 < 33) {
                    this.f11871a.stop();
                }
            } finally {
                if (a1.f10038a >= 35 && (pVar2 = this.f11874d) != null) {
                    pVar2.d(this.f11871a);
                }
                this.f11871a.release();
                this.f11875e = true;
            }
        } catch (Throwable th2) {
            if (!this.f11875e) {
                try {
                    int i11 = a1.f10038a;
                    if (i11 >= 30 && i11 < 33) {
                        this.f11871a.stop();
                    }
                } finally {
                    if (a1.f10038a >= 35 && (pVar = this.f11874d) != null) {
                        pVar.d(this.f11871a);
                    }
                    this.f11871a.release();
                    this.f11875e = true;
                }
            }
            throw th2;
        }
    }

    @Override
    public void setVideoScalingMode(int i10) {
        this.f11871a.setVideoScalingMode(i10);
    }

    private c(MediaCodec mediaCodec, HandlerThread handlerThread, v vVar, p pVar) {
        this.f11871a = mediaCodec;
        this.f11872b = new i(handlerThread);
        this.f11873c = vVar;
        this.f11874d = pVar;
        this.f11876f = 0;
    }
}
