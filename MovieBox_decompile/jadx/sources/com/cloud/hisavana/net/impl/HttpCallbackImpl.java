package com.cloud.hisavana.net.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.cloud.sdk.commonutil.util.c;
import java.io.IOException;
import okhttp3.Headers;

public abstract class HttpCallbackImpl implements IHttpCallback {

    private Handler f20800a;

    private Looper f20801b;

    private static class ResponderHandler extends Handler {

        private final HttpCallbackImpl f20802a;

        ResponderHandler(HttpCallbackImpl httpCallbackImpl, Looper looper) {
            super(looper);
            this.f20802a = httpCallbackImpl;
        }

        @Override
        public void handleMessage(Message message) {
            this.f20802a.g(message);
        }
    }

    public HttpCallbackImpl() {
        this(true);
    }

    @Override
    public void a() {
        s(h(2, null));
    }

    @Override
    public void b() {
        s(h(3, null));
    }

    @Override
    public void c(int i10, byte[] bArr) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i10 >= 300) {
            d(i10, bArr, new IOException());
        } else {
            t(i10, bArr);
        }
    }

    @Override
    public void d(int i10, byte[] bArr, Throwable th2) {
        s(h(1, new Object[]{Integer.valueOf(i10), bArr, th2}));
    }

    @Override
    public void e(int i10, byte[] bArr, String str) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i10 >= 300) {
            d(i10, bArr, new IOException());
        } else {
            u(i10, bArr, str);
        }
    }

    @Override
    public void f(int i10, byte[] bArr, Headers headers) {
        if (Thread.currentThread().isInterrupted()) {
            return;
        }
        if (i10 >= 300) {
            r(i10, bArr, new IOException(), headers);
        } else {
            v(i10, bArr, headers);
        }
    }

    protected void g(Message message) {
        try {
            int i10 = message.what;
            if (i10 == 0) {
                Object[] objArr = (Object[]) message.obj;
                if (objArr == null || objArr.length < 2) {
                    c.Log().e("HttpCallbackImpl", "SUCCESS_MESSAGE didn't got enough params");
                    return;
                }
                if (objArr.length < 3) {
                    n(((Integer) objArr[0]).intValue(), (byte[]) objArr[1]);
                    return;
                }
                Object obj = objArr[2];
                if (obj instanceof String) {
                    o(((Integer) objArr[0]).intValue(), (byte[]) objArr[1], (String) objArr[2]);
                    return;
                } else {
                    if (obj instanceof Headers) {
                        l((Headers) obj);
                        n(((Integer) objArr[0]).intValue(), (byte[]) objArr[1]);
                        return;
                    }
                    return;
                }
            }
            if (i10 != 1) {
                if (i10 == 2) {
                    m();
                    return;
                }
                if (i10 == 3) {
                    j();
                    return;
                } else if (i10 != 7) {
                    c.Log().e("HttpCallbackImpl", "UnKnown message");
                    return;
                } else {
                    k();
                    return;
                }
            }
            Object[] objArr2 = (Object[]) message.obj;
            if (objArr2 == null || objArr2.length < 3) {
                c.Log().e("HttpCallbackImpl", "FAILURE_MESSAGE didn't got enough params");
                return;
            }
            if (objArr2.length >= 4) {
                Object obj2 = objArr2[3];
                if (obj2 instanceof Headers) {
                    l((Headers) obj2);
                }
            }
            i(((Integer) objArr2[0]).intValue(), (byte[]) objArr2[1], (Throwable) objArr2[2]);
        } catch (Throwable th2) {
            p(th2);
        }
    }

    protected Message h(int i10, Object obj) {
        return Message.obtain(this.f20800a, i10, obj);
    }

    public abstract void i(int i10, byte[] bArr, Throwable th2);

    public void j() {
    }

    public void k() {
        c.Log().d("HttpCallbackImpl", "Request got onPaused");
    }

    public void l(Headers headers) {
    }

    public void m() {
    }

    public abstract void n(int i10, byte[] bArr);

    public void o(int i10, byte[] bArr, String str) {
    }

    public void p(Throwable th2) {
        c.Log().e("HttpCallbackImpl", "User-space exception detected!", th2);
        throw new RuntimeException(th2);
    }

    protected void q(Runnable runnable) {
        if (runnable != null) {
            Handler handler = this.f20800a;
            if (handler == null) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    public void r(int i10, byte[] bArr, Throwable th2, Headers headers) {
        s(h(1, new Object[]{Integer.valueOf(i10), bArr, th2, headers}));
    }

    protected void s(Message message) {
        Handler handler;
        if (this.f20800a == null) {
            g(message);
        } else {
            if (Thread.currentThread().isInterrupted() || (handler = this.f20800a) == null) {
                return;
            }
            handler.sendMessage(message);
        }
    }

    public void t(int i10, byte[] bArr) {
        s(h(0, new Object[]{Integer.valueOf(i10), bArr}));
    }

    public void u(int i10, byte[] bArr, String str) {
        s(h(0, new Object[]{Integer.valueOf(i10), bArr, str}));
    }

    public void v(int i10, byte[] bArr, Headers headers) {
        s(h(0, new Object[]{Integer.valueOf(i10), bArr, headers}));
    }

    public HttpCallbackImpl(boolean z10) {
        this(z10 ? Looper.myLooper() : null);
    }

    private HttpCallbackImpl(Looper looper) {
        this.f20800a = null;
        this.f20801b = null;
        if (looper != null) {
            this.f20801b = looper;
            this.f20800a = new ResponderHandler(this, looper);
        }
    }
}
