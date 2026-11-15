package com.yandex.mobile.ads.impl;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.yandex.mobile.ads.impl.hh;
import java.nio.ByteBuffer;

@RequiresApi(23)
public final class hh implements gv0 {
    private final MediaCodec a;
    private final jh b;
    private final ih c;
    private final boolean d;
    private boolean e;
    private int f;

    public static final class a implements gv0.b {
        private final t32<HandlerThread> a;
        private final t32<HandlerThread> b;

        public a(final int i) {
            this(new t32() {
                @Override
                public final Object get() {
                    return hh.a.a(i);
                }
            }, new t32() {
                @Override
                public final Object get() {
                    return hh.a.b(i);
                }
            });
        }

        @Override
        public final hh a(gv0.a aVar) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            String str = aVar.a.a;
            hh hhVar = null;
            try {
                u52.a("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    hh hhVar2 = new hh(mediaCodecCreateByCodecName, this.a.get(), this.b.get(), false);
                    try {
                        u52.a();
                        hhVar2.a(aVar.b, aVar.d, aVar.e);
                        return hhVar2;
                    } catch (Exception e) {
                        e = e;
                        hhVar = hhVar2;
                        if (hhVar != null) {
                            hhVar.release();
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

        @VisibleForTesting
        public a(t32 t32Var, t32 t32Var2) {
            this.a = t32Var;
            this.b = t32Var2;
        }

        public static HandlerThread a(int i) {
            StringBuilder sb = new StringBuilder("ExoPlayer:MediaCodecAsyncAdapter:");
            if (i == 1) {
                sb.append("Audio");
            } else if (i == 2) {
                sb.append("Video");
            } else {
                sb.append("Unknown(");
                sb.append(i);
                sb.append(")");
            }
            return new HandlerThread(sb.toString());
        }

        public static HandlerThread b(int i) {
            StringBuilder sb = new StringBuilder("ExoPlayer:MediaCodecQueueingThread:");
            if (i == 1) {
                sb.append("Audio");
            } else if (i == 2) {
                sb.append("Video");
            } else {
                sb.append("Unknown(");
                sb.append(i);
                sb.append(")");
            }
            return new HandlerThread(sb.toString());
        }
    }

    @Override
    @Nullable
    public final ByteBuffer c(int i) {
        return this.a.getOutputBuffer(i);
    }

    @Override
    public final void flush() {
        this.c.a();
        this.a.flush();
        this.b.b();
        this.a.start();
    }

    @Override
    public final void release() {
        try {
            if (this.f == 1) {
                this.c.c();
                this.b.e();
            }
            this.f = 2;
        } finally {
            if (!this.e) {
                this.a.release();
                this.e = true;
            }
        }
    }

    private hh(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z) {
        this.a = mediaCodec;
        this.b = new jh(handlerThread);
        this.c = new ih(mediaCodec, handlerThread2);
        this.d = z;
        this.f = 0;
    }

    private void c() {
        if (this.d) {
            try {
                this.c.e();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @Override
    public final int a(MediaCodec.BufferInfo bufferInfo) {
        return this.b.a(bufferInfo);
    }

    @Override
    public final int b() {
        return this.b.a();
    }

    @Override
    public final MediaFormat a() {
        return this.b.c();
    }

    @Override
    @Nullable
    public final ByteBuffer b(int i) {
        return this.a.getInputBuffer(i);
    }

    public void a(@Nullable MediaFormat mediaFormat, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
        this.b.a(this.a);
        u52.a("configureCodec");
        this.a.configure(mediaFormat, surface, mediaCrypto, 0);
        u52.a();
        this.c.d();
        u52.a("startCodec");
        this.a.start();
        u52.a();
        this.f = 1;
    }

    public void a(gv0.c cVar, MediaCodec mediaCodec, long j, long j2) {
        cVar.a(j);
    }

    @Override
    public final void a(int i, int i2, long j, int i3) {
        this.c.a(i, i2, j, i3);
    }

    @Override
    public final void a(int i, gv gvVar, long j) {
        this.c.a(i, gvVar, j);
    }

    @Override
    public final void a(int i, long j) {
        this.a.releaseOutputBuffer(i, j);
    }

    @Override
    public final void a(boolean z, int i) {
        this.a.releaseOutputBuffer(i, z);
    }

    @Override
    public final void a(final gv0.c cVar, Handler handler) {
        c();
        this.a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() {
            @Override
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                this.a.a(cVar, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override
    public final void a(Surface surface) {
        c();
        this.a.setOutputSurface(surface);
    }

    @Override
    public final void a(Bundle bundle) {
        c();
        this.a.setParameters(bundle);
    }

    @Override
    public final void a(int i) {
        c();
        this.a.setVideoScalingMode(i);
    }
}
