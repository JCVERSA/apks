package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import defpackage.y45;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class sl {
    private final ExecutorService a;

    public static final class a implements Runnable {
        private final Bitmap b;
        private final b c;
        private final Handler d;
        private final yl e;

        public a(Bitmap bitmap, fp1 fp1Var, Handler handler, yl ylVar) {
            y45.j(bitmap, "originalBitmap");
            y45.j(fp1Var, "listener");
            y45.j(handler, "handler");
            y45.j(ylVar, "blurredBitmapProvider");
            this.b = bitmap;
            this.c = fp1Var;
            this.d = handler;
            this.e = ylVar;
        }

        private final void a(final Bitmap bitmap) {
            this.d.post(new Runnable() {
                @Override
                public final void run() {
                    sl.a.a(this.b, bitmap);
                }
            });
        }

        @Override
        public final void run() {
            yl ylVar = this.e;
            Bitmap bitmap = this.b;
            ylVar.getClass();
            a(yl.a(bitmap, 0.1d));
        }

        public static final void a(a aVar, Bitmap bitmap) {
            y45.j(aVar, "this$0");
            y45.j(bitmap, "$blurredBitmap");
            aVar.c.a(bitmap);
        }
    }

    public interface b {
        void a(Bitmap bitmap);
    }

    public sl() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        y45.i(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        this.a = executorServiceNewSingleThreadExecutor;
    }

    public final void a(Bitmap bitmap, fp1 fp1Var) {
        y45.j(bitmap, "bitmap");
        y45.j(fp1Var, "listener");
        this.a.execute(new a(bitmap, fp1Var, new Handler(Looper.getMainLooper()), new yl()));
    }
}
