package com.yandex.div.internal.viewpool;

import android.os.Handler;
import android.os.Looper;
import defpackage.sh8;
import defpackage.y45;
import defpackage.zfb;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

public final class ViewPoolProfiler {
    public final a a;
    public final sh8 b;
    public final FrameWatcher c;
    public final Handler d;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/yandex/div/internal/viewpool/ViewPoolProfiler$FrameWatcher;", "Ljava/lang/Runnable;", MethodDecl.initName, "(Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;)V", "Lzfb;", "run", "()V", "Landroid/os/Handler;", "handler", "watch", "(Landroid/os/Handler;)V", "", "watching", "Z", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class FrameWatcher implements Runnable {
        private boolean watching;

        public FrameWatcher() {
        }

        @Override
        public void run() {
            ViewPoolProfiler.this.a();
            this.watching = false;
        }

        public final void watch(Handler handler) {
            y45.j(handler, "handler");
            if (this.watching) {
                return;
            }
            handler.post(this);
            this.watching = true;
        }
    }

    public interface a {
        public static final b a = b.a;
        public static final a b = new C0299a();

        public static final class C0299a implements a {
            @Override
            public void reportEvent(String str, Map map) {
                y45.j(str, "message");
                y45.j(map, "result");
            }
        }

        public static final class b {
            public static final b a = new b();
        }

        void reportEvent(String str, Map map);
    }

    public ViewPoolProfiler(a aVar) {
        y45.j(aVar, "reporter");
        this.a = aVar;
        this.b = new sh8();
        this.c = new FrameWatcher();
        this.d = new Handler(Looper.getMainLooper());
    }

    public final void a() {
        synchronized (this.b) {
            try {
                if (this.b.c()) {
                    this.a.reportEvent("view pool profiling", this.b.b());
                }
                this.b.a();
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(String str, long j) {
        y45.j(str, "viewName");
        synchronized (this.b) {
            this.b.d(str, j);
            this.c.watch(this.d);
            zfb zfbVar = zfb.a;
        }
    }

    public final void c(long j) {
        synchronized (this.b) {
            this.b.e(j);
            this.c.watch(this.d);
            zfb zfbVar = zfb.a;
        }
    }

    public final void d(long j) {
        this.b.f(j);
        this.c.watch(this.d);
    }
}
