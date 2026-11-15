package com.transsion.playercommon.callback;

import android.app.Activity;
import android.app.Application;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import com.transsion.athena.data.TrackData;
import com.transsion.playercommon.core.MainApp;
import defpackage.m27;
import defpackage.p06;
import defpackage.vv7;
import java.lang.ref.WeakReference;

public class AppActivityLifecycleCallback implements Application.ActivityLifecycleCallbacks {
    public static a j;
    public static b k;
    public int c;
    public Runnable e;
    public Runnable i;
    public Handler b = new Handler(Looper.getMainLooper());
    public boolean d = true;
    public int f = 0;
    public String g = "";
    public int h = 0;

    public interface a {
        void onActivityDestroyed(Activity activity);
    }

    public interface b {
        void onActivityResumed(Activity activity);
    }

    public static void setOnActivityDestroyedListener(a aVar) {
        j = aVar;
    }

    public static void setOnActivityResumedListener(b bVar) {
        k = bVar;
    }

    public final boolean b(Activity activity) {
        Window window;
        int i;
        if (activity == null || (window = activity.getWindow()) == null) {
            return false;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i2 = attributes.width;
        return i2 <= 0 || i2 > 1 || (i = attributes.height) <= 0 || i > 1;
    }

    public final void c(Activity activity) {
        if (b(activity)) {
            try {
                String simpleName = activity.getClass().getSimpleName();
                int i = this.c + 1;
                this.c = i;
                if (i <= 1 && this.d) {
                    vv7.c(vv7.a());
                    try {
                        Uri referrer = activity.getReferrer();
                        if (referrer != null) {
                            this.g = referrer.getAuthority();
                        }
                    } catch (Exception e) {
                        Log.e("AppActivityLifecycleCallback", "onActivityStarted : " + e);
                    }
                    TrackData trackDataAdd = new TrackData().add("pageame", simpleName).add("from", this.g).add("type", this.h);
                    int i2 = this.h;
                    if (i2 == 0) {
                        this.h = i2 + 1;
                    }
                    p06.p0(trackDataAdd, "visha_page_enter", 9324L);
                }
                this.d = false;
                Runnable runnable = this.e;
                if (runnable != null) {
                    this.b.removeCallbacks(runnable);
                    this.e = null;
                }
            } catch (Exception e2) {
                Log.e("AppActivityLifecycleCallback", "onActivityStarted " + e2);
            }
        }
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        a aVar = j;
        if (aVar != null) {
            aVar.onActivityDestroyed(activity);
        }
        WeakReference weakReference = MainApp.E;
        if (weakReference == null || weakReference.get() != activity) {
            return;
        }
        MainApp.E.clear();
        MainApp.E = null;
    }

    @Override
    public void onActivityPaused(Activity activity) {
        if (b(activity)) {
            try {
                m27.e(false);
                Runnable runnable = this.i;
                if (runnable != null) {
                    this.b.removeCallbacks(runnable);
                }
                Handler handler = this.b;
                Runnable runnable2 = new Runnable() {
                    @Override
                    public void run() {
                        m27.e(true);
                    }
                };
                this.i = runnable2;
                handler.postDelayed(runnable2, 400L);
            } catch (Exception e) {
                Log.e("AppActivityLifecycleCallback", "onActivityStopped " + e);
            }
        }
    }

    @Override
    public void onActivityResumed(Activity activity) {
        Runnable runnable;
        if (b(activity) && (runnable = this.i) != null) {
            this.b.removeCallbacks(runnable);
            this.i = null;
        }
        MainApp.E = new WeakReference(activity);
        b bVar = k;
        if (bVar != null) {
            bVar.onActivityResumed(activity);
        }
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
        c(activity);
    }

    @Override
    public void onActivityStopped(Activity activity) {
        if (b(activity)) {
            try {
                int i = this.c - 1;
                this.c = i;
                if (i == 0) {
                    Runnable runnable = this.e;
                    if (runnable != null) {
                        this.b.removeCallbacks(runnable);
                    }
                    Handler handler = this.b;
                    Runnable runnable2 = new Runnable() {
                        @Override
                        public void run() {
                            AppActivityLifecycleCallback.this.d = true;
                            vv7.c("");
                        }
                    };
                    this.e = runnable2;
                    handler.postDelayed(runnable2, vv7.b());
                }
            } catch (Exception e) {
                Log.e("AppActivityLifecycleCallback", "onActivityStopped " + e);
            }
        }
    }
}
