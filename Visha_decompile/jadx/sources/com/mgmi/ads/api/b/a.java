package com.mgmi.ads.api.b;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.R;
import com.mgmi.ads.api.render.AdWidgetInfo;
import defpackage.j4d;
import defpackage.l4d;
import defpackage.w3d;
import java.lang.ref.WeakReference;
import java.util.Timer;
import java.util.TimerTask;

public abstract class a {
    public String a;
    private ViewGroup b;
    private Context c;
    private TextView d;
    private View e;
    private Timer g;
    private com.mgmi.ads.api.a h;
    private boolean i;
    private boolean j;
    private long f = 0;
    private Handler k = new HandlerC0163a(Looper.getMainLooper(), this);

    public static class HandlerC0163a extends Handler {
        WeakReference<a> a;

        public HandlerC0163a(Looper looper, a aVar) {
            super(looper);
            this.a = new WeakReference<>(aVar);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<a> weakReference = this.a;
            if (weakReference == null || weakReference.get() == null || message.what != 301) {
                return;
            }
            this.a.get().i();
        }
    }

    public static class b extends TimerTask {
        private WeakReference<a> a;

        public b(a aVar) {
            this.a = new WeakReference<>(aVar);
        }

        @Override
        public void run() {
            a aVar;
            WeakReference<a> weakReference = this.a;
            if (weakReference == null || (aVar = weakReference.get()) == null) {
                return;
            }
            aVar.j();
        }
    }

    public a(Context context, ViewGroup viewGroup, @NonNull String str) {
        this.i = false;
        this.j = false;
        this.b = viewGroup;
        this.c = context;
        this.a = str;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.mgmi_pacth_ad_prepare_layout, (ViewGroup) null);
        this.e = viewInflate;
        this.d = (TextView) viewInflate.findViewById(R.id.prepare_ad_countdown);
        this.j = false;
        this.i = true;
    }

    public void i() {
        if (this.i) {
            this.c.getResources().getString(R.string.mgmi_ad_mid_wait);
            this.d.setText(String.valueOf(this.f));
        }
        this.f--;
    }

    public void j() {
        if (this.f > 0) {
            this.k.sendEmptyMessage(301);
            return;
        }
        this.j = false;
        f();
        ((Activity) this.c).runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (a.this.b != null && a.this.e != null && a.this.i) {
                    l4d.g(a.this.b, a.this.e);
                }
                a.this.c();
            }
        });
    }

    public abstract void c();

    public void f() {
        try {
            Timer timer = this.g;
            if (timer != null) {
                timer.cancel();
                this.g.purge();
                this.g = null;
            }
            this.k.removeMessages(301);
        } catch (Throwable unused) {
        }
    }

    public void g() {
        try {
            j4d.b(new Runnable() {
                @Override
                public void run() {
                    l4d.f(a.this.e, 8);
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void h() {
        Timer timer = this.g;
        if (timer != null) {
            timer.cancel();
            this.g.purge();
            this.g = null;
        }
        this.g = new Timer("mgmiad");
        this.g.schedule(new b(this), 500L, 1000L);
    }

    public void a(com.mgmi.ads.api.a aVar) {
        this.h = aVar;
    }

    public void b() {
        View view = this.e;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public boolean d() {
        return this.j;
    }

    public void e() {
        Timer timer = this.g;
        if (timer != null) {
            timer.cancel();
            this.g.purge();
            this.g = null;
        }
        this.j = false;
        this.k.removeMessages(301);
    }

    public void a() {
        View view = this.e;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public void a(boolean z) {
        this.i = z;
    }

    public void a(int i) {
        if (this.j) {
            return;
        }
        SourceKitLogger.a("MidVideoCountDownView", "MidVideoCountDownView start");
        this.j = true;
        this.f = i;
        final FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 53;
        int iA = w3d.a(this.c, 10.0f);
        layoutParams.topMargin = iA;
        layoutParams.rightMargin = iA;
        this.d.setText(String.valueOf(this.f));
        ((Activity) this.c).runOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (a.this.i) {
                    l4d.g(a.this.b, a.this.e);
                    l4d.c(a.this.b, a.this.e, layoutParams);
                }
            }
        });
        Timer timer = this.g;
        if (timer != null) {
            timer.cancel();
            this.g.purge();
            this.g = null;
        }
        this.g = new Timer("mgmiad");
        this.g.schedule(new b(this), 500L, 1000L);
        com.mgmi.ads.api.a aVar = this.h;
        if (aVar != null) {
            aVar.onAdListener(com.mgmi.ads.api.a.EnumC0161a.AD_COUNTDOWN_NOTIFY, new AdWidgetInfo(this.a));
        }
    }
}
