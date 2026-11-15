package defpackage;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public final class jue implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {
    public static final long q = ((Long) zzbd.zzc().b(cye.z1)).longValue();
    public final Context b;
    public Application c;
    public final WindowManager d;
    public final PowerManager e;
    public final KeyguardManager f;
    public BroadcastReceiver g;
    public WeakReference h;
    public final WeakReference i;
    public vue j;
    public final zzbx k = new zzbx(q);
    public boolean l = false;
    public int m = -1;
    public final HashSet n = new HashSet();
    public final DisplayMetrics o;
    public final Rect p;

    public jue(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        WindowManager windowManager = (WindowManager) applicationContext.getSystemService("window");
        this.d = windowManager;
        this.e = (PowerManager) applicationContext.getSystemService("power");
        this.f = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.c = (Application) applicationContext;
            this.j = new vue((Application) applicationContext, this);
        }
        this.o = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.p = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference weakReference = this.i;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            m(view2);
        }
        this.i = new WeakReference(view);
        if (view != null) {
            if (view.isAttachedToWindow()) {
                l(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    public final Rect a(Rect rect) {
        return new Rect(h(rect.left), h(rect.top), h(rect.right), h(rect.bottom));
    }

    public final void d(iue iueVar) {
        this.n.add(iueVar);
        j(3);
    }

    public final void e(iue iueVar) {
        this.n.remove(iueVar);
    }

    public final void f() {
        this.k.zza(q);
    }

    public final void g(long j) {
        this.k.zza(j);
    }

    public final int h(int i) {
        return (int) (i / this.o.density);
    }

    public final void i(Activity activity, int i) {
        Window window;
        WeakReference weakReference = this.i;
        if (weakReference == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        View view = (View) weakReference.get();
        if (view == null || viewPeekDecorView == null || view.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.m = i;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0137  */
    /* JADX WARN: Code duplicated, block: B:55:0x013c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0140  */
    /* JADX WARN: Code duplicated, block: B:58:0x0144  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void j(int i) {
        WeakReference weakReference;
        boolean globalVisibleRect;
        boolean localVisibleRect;
        View view;
        List listEmptyList;
        boolean z;
        int i2;
        boolean z2;
        if (this.n.isEmpty() || (weakReference = this.i) == null) {
            return;
        }
        View view2 = (View) weakReference.get();
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = new Rect();
        Rect rect4 = new Rect();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (view2 != null) {
            globalVisibleRect = view2.getGlobalVisibleRect(rect2);
            localVisibleRect = view2.getLocalVisibleRect(rect3);
            view2.getHitRect(rect4);
            try {
                view2.getLocationOnScreen(iArr);
                view2.getLocationInWindow(iArr2);
            } catch (Exception e) {
                int i3 = zze.zza;
                zzo.zzh("Failure getting view location.", e);
            }
            if (((Boolean) zzbd.zzc().b(cye.e5)).booleanValue()) {
                rect.left = iArr2[0];
                rect.top = iArr2[1];
            } else {
                rect.left = iArr[0];
                rect.top = iArr[1];
            }
            rect.right = rect.left + view2.getWidth();
            rect.bottom = rect.top + view2.getHeight();
            view = view2;
        } else {
            globalVisibleRect = false;
            localVisibleRect = false;
            view = null;
        }
        if (!((Boolean) zzbd.zzc().b(cye.C1)).booleanValue() || view == null) {
            listEmptyList = Collections.emptyList();
        } else {
            try {
                listEmptyList = new ArrayList();
                ViewParent parent = view.getParent();
                while (parent instanceof View) {
                    View view3 = (View) parent;
                    Rect rect5 = new Rect();
                    if (view3.isScrollContainer() && view3.getGlobalVisibleRect(rect5)) {
                        listEmptyList.add(a(rect5));
                    }
                    parent = parent.getParent();
                }
            } catch (Exception e2) {
                zzv.zzp().x(e2, "PositionWatcher.getParentScrollViewRects");
                listEmptyList = Collections.emptyList();
            }
        }
        List list = listEmptyList;
        int windowVisibility = view != null ? view.getWindowVisibility() : 8;
        int i4 = this.m;
        if (i4 != -1) {
            windowVisibility = i4;
        }
        zzv.zzq();
        long jZzx = zzs.zzx(view);
        if (((Boolean) zzbd.zzc().b(cye.Ha)).booleanValue()) {
            if (view2 != null) {
                PowerManager powerManager = this.e;
                KeyguardManager keyguardManager = this.f;
                zzv.zzq();
                if (zzs.zzT(view, powerManager, keyguardManager)) {
                    if (!globalVisibleRect) {
                        z = 0;
                        globalVisibleRect = false;
                    } else if (!localVisibleRect) {
                        globalVisibleRect = true;
                        z = 0;
                        localVisibleRect = false;
                    } else if (jZzx < ((Integer) zzbd.zzc().b(cye.Ka)).intValue() || windowVisibility != 0) {
                        globalVisibleRect = true;
                        localVisibleRect = true;
                    } else {
                        z = 1;
                        globalVisibleRect = true;
                        localVisibleRect = true;
                        windowVisibility = 0;
                    }
                }
            }
            z = 0;
        } else {
            if (view2 != null) {
                PowerManager powerManager2 = this.e;
                KeyguardManager keyguardManager2 = this.f;
                zzv.zzq();
                if (zzs.zzT(view, powerManager2, keyguardManager2)) {
                    if (!globalVisibleRect) {
                        z = 0;
                        globalVisibleRect = false;
                    } else if (!localVisibleRect) {
                        globalVisibleRect = true;
                        z = 0;
                        localVisibleRect = false;
                    } else if (windowVisibility == 0) {
                        z = 1;
                        globalVisibleRect = true;
                        localVisibleRect = true;
                        windowVisibility = 0;
                    } else {
                        globalVisibleRect = true;
                        localVisibleRect = true;
                    }
                }
            }
            z = 0;
        }
        if (((Boolean) zzbd.zzc().b(cye.Ma)).booleanValue()) {
            PowerManager powerManager3 = this.e;
            KeyguardManager keyguardManager3 = this.f;
            zzv.zzq();
            int i5 = true != zzs.zzT(view, powerManager3, keyguardManager3) ? 0 : 64;
            int i6 = true != globalVisibleRect ? 0 : 8;
            int i7 = true != localVisibleRect ? 0 : 16;
            int i8 = windowVisibility == 0 ? 128 : 0;
            int i9 = jZzx >= ((long) ((Integer) zzbd.zzc().b(cye.Ka)).intValue()) ? 32 : 0;
            zzv.zzq();
            zzs.zzK(view, i9 | i8 | i5 | i6 | i7 | z, null);
            i2 = 1;
        } else {
            i2 = 1;
        }
        if (i == i2 && !this.k.zzb() && z == this.l) {
            return;
        }
        if (z != 0 || this.l) {
            z2 = true;
        } else {
            z2 = true;
            if (i == 1) {
                return;
            }
        }
        hue hueVar = new hue(zzv.zzC().elapsedRealtime(), this.e.isScreenOn(), (view == null || !view.isAttachedToWindow()) ? false : z2, view != null ? view.getWindowVisibility() : 8, a(this.p), a(rect), a(rect2), globalVisibleRect, a(rect3), localVisibleRect, jZzx, a(rect4), this.o.density, z, list);
        Iterator it = this.n.iterator();
        while (it.hasNext()) {
            ((iue) it.next()).zzdn(hueVar);
        }
        this.l = z;
    }

    public final void k() {
        zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                this.zza.j(3);
            }
        });
    }

    public final void l(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.h = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.g == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.g = new gue(this);
            zzv.zzw().zzc(this.b, this.g, intentFilter);
        }
        Application application = this.c;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.j);
            } catch (Exception e) {
                int i = zze.zza;
                zzo.zzh("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    public final void m(View view) {
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
        } catch (Exception e) {
            int i = zze.zza;
            zzo.zzh("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            int i2 = zze.zza;
            zzo.zzh("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        if (this.g != null) {
            try {
                zzv.zzw().zzd(this.b, this.g);
            } catch (IllegalStateException e3) {
                int i3 = zze.zza;
                zzo.zzh("Failed trying to unregister the receiver", e3);
            } catch (Exception e4) {
                zzv.zzp().x(e4, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.g = null;
        }
        Application application = this.c;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.j);
            } catch (Exception e5) {
                int i4 = zze.zza;
                zzo.zzh("Error registering activity lifecycle callbacks.", e5);
            }
        }
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        i(activity, 0);
        j(3);
        k();
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
        j(3);
        k();
    }

    @Override
    public final void onActivityPaused(Activity activity) {
        i(activity, 4);
        j(3);
        k();
    }

    @Override
    public final void onActivityResumed(Activity activity) {
        i(activity, 0);
        j(3);
        k();
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        j(3);
        k();
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        i(activity, 0);
        j(3);
        k();
    }

    @Override
    public final void onActivityStopped(Activity activity) {
        j(3);
        k();
    }

    @Override
    public final void onGlobalLayout() {
        j(2);
        k();
    }

    @Override
    public final void onScrollChanged() {
        j(1);
    }

    @Override
    public final void onViewAttachedToWindow(View view) {
        this.m = -1;
        l(view);
        j(3);
    }

    @Override
    public final void onViewDetachedFromWindow(View view) {
        this.m = -1;
        j(3);
        k();
        m(view);
    }
}
