package com.cloud.hisavana.sdk.common.http.listener;

import android.os.Handler;
import android.os.Looper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;

public abstract class ResponseBaseListener {

    protected Handler f21503a;

    private static class a extends Handler {
        a(Looper looper) {
            super(looper);
        }
    }

    public ResponseBaseListener() {
        this(true);
    }

    public abstract void a(TaErrorCode taErrorCode);

    public void b(int i10) {
    }

    public void c(int i10, String str, Throwable th2) {
        e(new TaErrorCode(i10, "erro msg = " + str));
    }

    public void d(int i10, byte[] bArr, Throwable th2) {
        e(new TaErrorCode(i10, "erro msg = " + bArr));
    }

    public void e(final TaErrorCode taErrorCode) {
        Handler handler = this.f21503a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public void run() {
                    ResponseBaseListener.this.a(taErrorCode);
                }
            });
        } else {
            a(taErrorCode);
        }
    }

    public void f(final int i10) {
        Handler handler = this.f21503a;
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public void run() {
                    ResponseBaseListener.this.b(i10);
                }
            });
        } else {
            b(i10);
        }
    }

    protected ResponseBaseListener(boolean z10) {
        this(z10 ? Looper.myLooper() : null);
    }

    private ResponseBaseListener(Looper looper) {
        this.f21503a = null;
        if (looper != null) {
            this.f21503a = new a(looper);
        } else {
            this.f21503a = null;
        }
    }
}
