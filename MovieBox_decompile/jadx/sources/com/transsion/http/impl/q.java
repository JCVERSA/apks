package com.transsion.http.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;

public abstract class q implements r {

    private Handler f44632a;

    private boolean f44633b;

    private boolean f44634c;

    private Looper f44635d;

    private static class a extends Handler {

        private final q f44636a;

        a(q qVar, Looper looper) {
            super(looper);
            this.f44636a = qVar;
        }

        @Override
        public void handleMessage(Message message) {
            this.f44636a.g(message);
        }
    }

    public q() {
        this(null);
    }

    @Override
    public void a() {
        i(f(2, null));
    }

    @Override
    public void b() {
        i(f(3, null));
    }

    @Override
    public void c(int i10, byte[] bArr) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i10 >= 300) {
            d(i10, bArr, new IOException());
        } else {
            v(i10, bArr);
        }
    }

    @Override
    public void d(int i10, byte[] bArr, Throwable th2) {
        i(f(1, new Object[]{Integer.valueOf(i10), bArr, th2}));
    }

    @Override
    public final void e() {
        i(f(6, null));
    }

    protected Message f(int i10, Object obj) {
        return Message.obtain(this.f44632a, i10, obj);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected void g(Message message) {
        try {
            switch (message.what) {
                case 0:
                    Object[] objArr = (Object[]) message.obj;
                    if (objArr == null || objArr.length < 2) {
                        jl.a.f63170a.e("HttpCallbackImpl", "SUCCESS_MESSAGE didn't got enough params");
                    } else {
                        s(((Integer) objArr[0]).intValue(), (byte[]) objArr[1]);
                    }
                    break;
                case 1:
                    Object[] objArr2 = (Object[]) message.obj;
                    if (objArr2 == null || objArr2.length < 3) {
                        jl.a.f63170a.e("HttpCallbackImpl", "FAILURE_MESSAGE didn't got enough params");
                    } else {
                        m(((Integer) objArr2[0]).intValue(), (byte[]) objArr2[1], (Throwable) objArr2[2]);
                    }
                    break;
                case 2:
                    r();
                    break;
                case 3:
                    n();
                    break;
                case 4:
                    Object[] objArr3 = (Object[]) message.obj;
                    if (objArr3 == null || objArr3.length < 2) {
                        jl.a.f63170a.e("HttpCallbackImpl", "PROGRESS_MESSAGE didn't got enough params");
                    } else {
                        try {
                            p(((Long) objArr3[0]).longValue(), ((Long) objArr3[1]).longValue());
                        } catch (Throwable th2) {
                            jl.a.f63170a.e("HttpCallbackImpl", "custom onProgress contains an error", th2);
                        }
                    }
                    break;
                case 5:
                    Object[] objArr4 = (Object[]) message.obj;
                    if (objArr4 == null || objArr4.length != 1) {
                        jl.a.f63170a.e("HttpCallbackImpl", "RETRY_MESSAGE didn't get enough params");
                    } else {
                        q(((Integer) objArr4[0]).intValue());
                    }
                    break;
                case 6:
                    l();
                    break;
                case 7:
                    o();
                    break;
                default:
                    break;
            }
        } catch (Throwable th3) {
            t(th3);
        }
    }

    protected void h(Runnable runnable) {
        Handler handler;
        if (runnable != null) {
            if (k() || (handler = this.f44632a) == null) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    protected void i(Message message) {
        if (k() || this.f44632a == null) {
            g(message);
        } else {
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            kl.b.a(this.f44632a != null, "handler should not be null!");
            this.f44632a.sendMessage(message);
        }
    }

    public boolean j() {
        return this.f44634c;
    }

    public boolean k() {
        return this.f44633b;
    }

    public void l() {
        jl.a.f63170a.d("HttpCallbackImpl", "Request got cancelled");
    }

    public abstract void m(int i10, byte[] bArr, Throwable th2);

    public void n() {
    }

    public void o() {
        jl.a.f63170a.d("HttpCallbackImpl", "Request got onPaused");
    }

    public void p(long j10, long j11) {
        jl.a.f63170a.v("HttpCallbackImpl", String.format("Progress %d from %d (%2.0f%%)", Long.valueOf(j10), Long.valueOf(j11), Double.valueOf(j11 > 0 ? ((j10 * 1.0d) / j11) * 100.0d : -1.0d)));
    }

    public void q(int i10) {
        jl.a.f63170a.d("HttpCallbackImpl", String.format("Request retry no. %d", Integer.valueOf(i10)));
    }

    public void r() {
    }

    public abstract void s(int i10, byte[] bArr);

    public void t(Throwable th2) {
        jl.a.f63170a.e("HttpCallbackImpl", "User-space exception detected!", th2);
        throw new RuntimeException(th2);
    }

    public void u() {
        i(f(7, null));
    }

    public void v(int i10, byte[] bArr) {
        i(f(0, new Object[]{Integer.valueOf(i10), bArr}));
    }

    public q(Looper looper) {
        this(looper == null ? Looper.myLooper() : looper, false);
    }

    private q(Looper looper, boolean z10) {
        this.f44635d = null;
        if (!z10) {
            kl.b.a(looper != null, "use looper thread, must call Looper.prepare() first!");
            this.f44635d = looper;
            this.f44632a = new a(this, looper);
        } else {
            kl.b.a(looper == null, "use pool thread, looper should be null!");
            this.f44635d = null;
            this.f44632a = null;
        }
        this.f44634c = z10;
    }
}
