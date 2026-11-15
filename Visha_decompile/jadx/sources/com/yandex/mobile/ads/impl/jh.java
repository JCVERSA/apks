package com.yandex.mobile.ads.impl;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayDeque;

@RequiresApi(23)
final class jh extends MediaCodec.Callback {
    private final HandlerThread b;
    private Handler c;

    @Nullable
    @GuardedBy("lock")
    private MediaFormat h;

    @Nullable
    @GuardedBy("lock")
    private MediaFormat i;

    @Nullable
    @GuardedBy("lock")
    private MediaCodec.CodecException j;

    @GuardedBy("lock")
    private long k;

    @GuardedBy("lock")
    private boolean l;

    @Nullable
    @GuardedBy("lock")
    private IllegalStateException m;
    private final Object a = new Object();

    @GuardedBy("lock")
    private final zo0 d = new zo0();

    @GuardedBy("lock")
    private final zo0 e = new zo0();

    @GuardedBy("lock")
    private final ArrayDeque<MediaCodec.BufferInfo> f = new ArrayDeque<>();

    @GuardedBy("lock")
    private final ArrayDeque<MediaFormat> g = new ArrayDeque<>();

    public jh(HandlerThread handlerThread) {
        this.b = handlerThread;
    }

    public void d() {
        synchronized (this.a) {
            try {
                if (this.l) {
                    return;
                }
                long j = this.k - 1;
                this.k = j;
                if (j > 0) {
                    return;
                }
                if (j < 0) {
                    a(new IllegalStateException());
                    return;
                }
                if (!this.g.isEmpty()) {
                    this.i = this.g.getLast();
                }
                this.d.a();
                this.e.a();
                this.f.clear();
                this.g.clear();
                this.j = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        synchronized (this.a) {
            this.k++;
            Handler handler = this.c;
            int i = f92.a;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.d();
                }
            });
        }
    }

    public final MediaFormat c() {
        MediaFormat mediaFormat;
        synchronized (this.a) {
            try {
                mediaFormat = this.h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    public final void e() {
        synchronized (this.a) {
            try {
                this.l = true;
                this.b.quit();
                if (!this.g.isEmpty()) {
                    this.i = this.g.getLast();
                }
                this.d.a();
                this.e.a();
                this.f.clear();
                this.g.clear();
                this.j = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.a) {
            this.j = codecException;
        }
    }

    @Override
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        synchronized (this.a) {
            this.d.a(i);
        }
    }

    @Override
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.a) {
            try {
                MediaFormat mediaFormat = this.i;
                if (mediaFormat != null) {
                    this.e.a(-2);
                    this.g.add(mediaFormat);
                    this.i = null;
                }
                this.e.a(i);
                this.f.add(bufferInfo);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.a) {
            this.e.a(-2);
            this.g.add(mediaFormat);
            this.i = null;
        }
    }

    public final int a() {
        synchronized (this.a) {
            try {
                int iC = -1;
                if (this.k <= 0 && !this.l) {
                    IllegalStateException illegalStateException = this.m;
                    if (illegalStateException != null) {
                        this.m = null;
                        throw illegalStateException;
                    }
                    MediaCodec.CodecException codecException = this.j;
                    if (codecException != null) {
                        this.j = null;
                        throw codecException;
                    }
                    if (!this.d.b()) {
                        iC = this.d.c();
                    }
                    return iC;
                }
                return -1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int a(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.a) {
            try {
                if (this.k <= 0 && !this.l) {
                    IllegalStateException illegalStateException = this.m;
                    if (illegalStateException == null) {
                        MediaCodec.CodecException codecException = this.j;
                        if (codecException == null) {
                            if (this.e.b()) {
                                return -1;
                            }
                            int iC = this.e.c();
                            if (iC >= 0) {
                                if (this.h != null) {
                                    MediaCodec.BufferInfo bufferInfoRemove = this.f.remove();
                                    bufferInfo.set(bufferInfoRemove.offset, bufferInfoRemove.size, bufferInfoRemove.presentationTimeUs, bufferInfoRemove.flags);
                                } else {
                                    throw new IllegalStateException();
                                }
                            } else if (iC == -2) {
                                this.h = this.g.remove();
                            }
                            return iC;
                        }
                        this.j = null;
                        throw codecException;
                    }
                    this.m = null;
                    throw illegalStateException;
                }
                return -1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(MediaCodec mediaCodec) {
        if (this.c == null) {
            this.b.start();
            Handler handler = new Handler(this.b.getLooper());
            mediaCodec.setCallback(this, handler);
            this.c = handler;
            return;
        }
        throw new IllegalStateException();
    }

    private void a(IllegalStateException illegalStateException) {
        synchronized (this.a) {
            this.m = illegalStateException;
        }
    }
}
