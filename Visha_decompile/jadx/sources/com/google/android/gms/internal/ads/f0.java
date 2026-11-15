package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import defpackage.jse;
import defpackage.lse;
import defpackage.xre;
import java.lang.ref.WeakReference;

public final class f0 implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {
    public static final Handler n = new Handler(Looper.getMainLooper());
    public final Context b;
    public Application c;
    public final PowerManager d;
    public final KeyguardManager e;
    public BroadcastReceiver f;
    public final zzavu g;
    public WeakReference h;
    public WeakReference i;
    public xre j;
    public byte k = -1;
    public int l = -1;
    public long m = -3;

    public f0(Context context, zzavu zzavuVar) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        this.g = zzavuVar;
        this.d = (PowerManager) applicationContext.getSystemService("power");
        this.e = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.c = (Application) applicationContext;
            this.j = new xre((Application) applicationContext, this);
        }
        d(null);
    }

    public final long a() {
        if (this.m <= -2 && b() == null) {
            this.m = -3L;
        }
        return this.m;
    }

    public final View b() {
        WeakReference weakReference = this.i;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public final void d(View view) {
        long j;
        View viewB = b();
        if (viewB != null) {
            viewB.removeOnAttachStateChangeListener(this);
            i(viewB);
        }
        this.i = new WeakReference(view);
        if (view != null) {
            if (view.getWindowToken() != null || view.getWindowVisibility() != 8) {
                h(view);
            }
            view.addOnAttachStateChangeListener(this);
            j = -2;
        } else {
            j = -3;
        }
        this.m = j;
    }

    public final void e(Activity activity, int i) {
        Window window;
        if (this.i == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        View viewB = b();
        if (viewB == null || viewPeekDecorView == null || viewB.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.l = i;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0082  */
    public final void f() {
        Activity activity;
        if (this.i == null) {
            return;
        }
        View viewB = b();
        if (viewB == null) {
            this.m = -3L;
            this.k = (byte) -1;
            return;
        }
        int i = 0;
        int i2 = viewB.getVisibility() != 0 ? 1 : 0;
        if (!viewB.isShown()) {
            i2 |= 2;
        }
        PowerManager powerManager = this.d;
        if (powerManager != null && !powerManager.isScreenOn()) {
            i2 |= 4;
        }
        if (!this.g.a()) {
            KeyguardManager keyguardManager = this.e;
            if (keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode()) {
                i2 |= 8;
            } else {
                char[] cArr = jse.a;
                View rootView = viewB.getRootView();
                if (rootView == null) {
                    rootView = viewB;
                }
                Context context = rootView.getContext();
                while (true) {
                    if (!(context instanceof ContextWrapper) || i >= 10) {
                        activity = null;
                        break;
                    } else if (context instanceof Activity) {
                        activity = (Activity) context;
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                        i++;
                    }
                }
                if (activity != null) {
                    Window window = activity.getWindow();
                    WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
                    if (attributes == null || (attributes.flags & 524288) == 0) {
                        i2 |= 8;
                    }
                } else {
                    i2 |= 8;
                }
            }
        }
        if (!viewB.getGlobalVisibleRect(new Rect())) {
            i2 |= 16;
        }
        if (!viewB.getLocalVisibleRect(new Rect())) {
            i2 |= 32;
        }
        int windowVisibility = viewB.getWindowVisibility();
        int i3 = this.l;
        if (i3 != -1) {
            windowVisibility = i3;
        }
        if (windowVisibility != 0) {
            i2 |= 64;
        }
        if (this.k != i2) {
            this.k = (byte) i2;
            this.m = i2 == 0 ? SystemClock.elapsedRealtime() : (-3) - ((long) i2);
        }
    }

    public final void g() {
        n.post(new zzawg(this));
    }

    public final void h(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.h = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            lse lseVar = new lse(this);
            this.f = lseVar;
            this.b.registerReceiver(lseVar, intentFilter);
        }
        Application application = this.c;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.j);
            } catch (Exception unused) {
            }
        }
    }

    public final void i(View view) {
        try {
            WeakReference weakReference = this.h;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = (ViewTreeObserver) weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.h = null;
            }
        } catch (Exception unused) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception unused2) {
        }
        BroadcastReceiver broadcastReceiver = this.f;
        if (broadcastReceiver != null) {
            try {
                this.b.unregisterReceiver(broadcastReceiver);
            } catch (Exception unused3) {
            }
            this.f = null;
        }
        Application application = this.c;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.j);
            } catch (Exception unused4) {
            }
        }
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        e(activity, 0);
        f();
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        f();
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        e(activity, 4);
        f();
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        e(activity, 0);
        f();
        g();
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        f();
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        e(activity, 0);
        f();
    }

    @Override
    public final void onActivityStopped(Activity activity) {
        f();
    }

    @Override
    public final void onGlobalLayout() {
        f();
    }

    @Override
    public final void onScrollChanged() {
        f();
    }

    @Override
    public final void onViewAttachedToWindow(View view) {
        this.l = -1;
        h(view);
        f();
    }

    @Override
    public final void onViewDetachedFromWindow(View view) {
        this.l = -1;
        f();
        g();
        i(view);
    }
}
