package com.mgmi.platform.view.ViewGroup.widget;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.model.VASTAd;
import com.mgmi.model.i;
import com.mgmi.platform.view.ViewGroup.widget.g;
import java.lang.ref.WeakReference;
import java.util.Timer;
import java.util.TimerTask;

public abstract class b<T extends g> {
    private Timer a;
    private int b;
    private int c;
    private Handler d;
    private int e;
    private a f;
    private volatile boolean g;
    protected ViewGroup i;
    protected Context j;
    protected View k;
    protected CreativeWidgetShadow l;
    protected T m;
    protected i n;
    protected VASTAd o;

    public static class a<T extends g> {
        public void a(T t) {
        }

        public void b(T t) {
        }

        public void c(T t) {
        }

        public void d(T t) {
        }

        public void a(boolean z) {
        }
    }

    public static class C0171b extends TimerTask {
        private WeakReference<b> a;

        public C0171b(b bVar) {
            this.a = new WeakReference<>(bVar);
        }

        @Override
        public void run() {
            b bVar;
            WeakReference<b> weakReference = this.a;
            if (weakReference == null || (bVar = weakReference.get()) == null) {
                return;
            }
            bVar.c();
        }
    }

    public void c() {
        int i = this.b + 1;
        this.b = i;
        if (i >= this.c) {
            d();
        } else {
            w();
        }
    }

    private void w() {
        Handler handler = this.d;
        if (handler != null) {
            try {
                handler.sendEmptyMessage(45831);
            } catch (Exception unused) {
            }
        }
    }

    public abstract View a(T t);

    public void b() {
        SourceKitLogger.a("CreativeWidget", "onPort");
    }

    public void d() {
        this.g = true;
        Handler handler = this.d;
        if (handler != null) {
            handler.removeMessages(45831);
        }
        Handler handler2 = this.d;
        if (handler2 != null) {
            try {
                handler2.sendEmptyMessage(45832);
            } catch (Exception unused) {
            }
        }
        m();
        u();
    }

    public void e() {
        Handler handler = this.d;
        if (handler != null) {
            try {
                handler.sendEmptyMessage(45832);
            } catch (Exception unused) {
            }
        }
    }

    public synchronized void f() {
        try {
            Timer timer = this.a;
            if (timer != null) {
                timer.cancel();
                this.a.purge();
                this.a = null;
            }
            this.a = new Timer("mgmiad");
            this.a.schedule(new C0171b(this), 500L, 1000L);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void g() {
        Timer timer = this.a;
        if (timer != null) {
            timer.cancel();
            this.a.purge();
            this.a = null;
        }
    }

    public synchronized void h() {
        Timer timer = this.a;
        if (timer != null) {
            timer.cancel();
            this.a.purge();
            this.a = null;
        }
    }

    public void i() {
        Handler handler = this.d;
        if (handler != null) {
            try {
                handler.sendEmptyMessage(45833);
            } catch (Exception unused) {
            }
        }
    }

    @CallSuper
    public void j() {
        SourceKitLogger.a("CreativeWidget", "pauseCreative");
        this.e = 1;
        h();
    }

    @CallSuper
    public void k() {
        SourceKitLogger.a("CreativeWidget", "resumeCreative");
        this.e = 3;
        f();
    }

    public View l() {
        SourceKitLogger.a("CreativeWidget", "showAllView");
        return a(this.m);
    }

    public void m() {
        SourceKitLogger.a("CreativeWidget", "reset");
        g();
        this.b = 0;
        this.e = 0;
    }

    public void n() {
        this.k = l();
        i();
    }

    public void o() {
    }

    public boolean p() {
        return this.e == 3;
    }

    public boolean q() {
        return this.e == 1;
    }

    public boolean r() {
        int i = this.e;
        return i == 3 || i == 1 || i == 2;
    }

    public void s() {
        a aVar = this.f;
        if (aVar != null) {
            aVar.a(this.m);
        }
    }

    public void t() {
        a aVar = this.f;
        if (aVar != null) {
            aVar.b(this.m);
        }
    }

    public void u() {
        a aVar = this.f;
        if (aVar != null) {
            aVar.c(this.m);
        }
    }

    public void v() {
        a aVar = this.f;
        if (aVar != null) {
            aVar.d(this.m);
        }
    }

    public void a() {
        SourceKitLogger.a("CreativeWidget", "onLandScape");
    }

    public void a(boolean z) {
        a aVar = this.f;
        if (aVar != null) {
            aVar.a(z);
        }
    }
}
