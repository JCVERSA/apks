package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(17)
public final class oh1 extends Surface {
    private static int e;
    private static boolean f;
    public final boolean b;
    private final a c;
    private boolean d;

    public static class a extends HandlerThread implements Handler.Callback {
        private y40 b;
        private Handler c;

        @Nullable
        private Error d;

        @Nullable
        private RuntimeException e;

        @Nullable
        private oh1 f;

        public a() {
            super("ExoPlayer:PlaceholderSurface");
        }

        private void b(int i) {
            this.b.getClass();
            this.b.a(i);
            this.f = new oh1(this, this.b.a(), i != 0);
        }

        @Override
        public final boolean handleMessage(Message message) {
            int i = message.what;
            try {
                if (i != 1) {
                    if (i != 2) {
                        return true;
                    }
                    try {
                        this.b.getClass();
                        this.b.b();
                    } catch (Throwable th) {
                        try {
                            et0.a("PlaceholderSurface", "Failed to release placeholder surface", th);
                        } finally {
                            quit();
                        }
                    }
                    return true;
                }
                try {
                    b(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e) {
                    et0.a("PlaceholderSurface", "Failed to initialize placeholder surface", e);
                    this.d = e;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e2) {
                    et0.a("PlaceholderSurface", "Failed to initialize placeholder surface", e2);
                    this.e = e2;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th2) {
                synchronized (this) {
                    notify();
                    throw th2;
                }
            }
        }

        public final oh1 a(int i) {
            boolean z;
            start();
            Handler handler = new Handler(getLooper(), this);
            this.c = handler;
            this.b = new y40(handler);
            synchronized (this) {
                z = false;
                this.c.obtainMessage(1, i, 0).sendToTarget();
                while (this.f == null && this.e == null && this.d == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.e;
            if (runtimeException != null) {
                throw runtimeException;
            }
            Error error = this.d;
            if (error != null) {
                throw error;
            }
            oh1 oh1Var = this.f;
            oh1Var.getClass();
            return oh1Var;
        }
    }

    public static oh1 a(Context context, boolean z) {
        if (!z || a(context)) {
            return new a().a(z ? e : 0);
        }
        throw new IllegalStateException();
    }

    @Override
    public final void release() {
        super.release();
        synchronized (this.c) {
            try {
                if (!this.d) {
                    a aVar = this.c;
                    aVar.c.getClass();
                    aVar.c.sendEmptyMessage(2);
                    this.d = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private oh1(a aVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.c = aVar;
        this.b = z;
    }

    public static synchronized boolean a(Context context) {
        int i;
        try {
            if (!f) {
                if (qe0.a(context)) {
                    i = qe0.c() ? 1 : 2;
                } else {
                    i = 0;
                }
                e = i;
                f = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return e != 0;
    }
}
