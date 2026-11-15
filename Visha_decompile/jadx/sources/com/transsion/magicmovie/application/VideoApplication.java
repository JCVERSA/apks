package com.transsion.magicmovie.application;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import androidx.multidex.MultiDex;
import com.transsion.audio.widgets.MusicHelper;
import com.transsion.magicmovie.activity.VideoPlayerMainActivity;
import com.transsion.magicmovie.application.VideoApplication;
import com.transsion.mediationads.bridgeimpl.MediationAdsRealInstaller;
import com.transsion.playercommon.applife.AppLifecycleObserver;
import com.transsion.playercommon.callback.AppActivityLifecycleCallback;
import com.transsion.playercommon.core.MainApp;
import com.transsion.privateroom.bridgeimpl.PrivateRoomRealInstaller;
import defpackage.bx9;
import defpackage.dv9;
import defpackage.ia7;
import defpackage.kec;
import defpackage.mn5;
import defpackage.n34;
import defpackage.pp3;
import defpackage.s45;
import defpackage.se;
import defpackage.te;
import defpackage.zz0;

public class VideoApplication extends MainApp implements MainApp.b {
    public static boolean H = true;
    public volatile boolean F = false;
    public volatile boolean G = true;

    public class a implements AppLifecycleObserver.a {
        public a() {
        }

        @Override
        public void a() {
            bx9.x();
            if (VideoApplication.this.G) {
                VideoApplication.this.G = false;
            } else {
                VideoApplication.this.F = true;
            }
        }

        @Override
        public void b() {
            VideoApplication.this.F = false;
            MusicHelper.clearBitmapCache();
            if (pp3.b || !dv9.a.a().a()) {
                return;
            }
            s45 s45VarA = s45.a.a();
            if (s45VarA.b()) {
                return;
            }
            s45VarA.d(VideoApplication.this.getApplicationContext(), s45VarA.a());
        }
    }

    public class b implements ComponentCallbacks2 {
        public b() {
        }

        @Override
        public void onConfigurationChanged(Configuration configuration) {
            if (com.transsion.utils.a.A()) {
                return;
            }
            ia7.setCustomDensity(VideoApplication.this.getApplicationContext());
        }

        @Override
        public void onLowMemory() {
        }

        @Override
        public void onTrimMemory(int i) {
        }
    }

    public class c implements ComponentCallbacks2 {
        public c() {
        }

        @Override
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override
        public void onLowMemory() {
            MusicHelper.clearBitmapCache();
        }

        @Override
        public void onTrimMemory(int i) {
            if (i >= 20) {
                MusicHelper.clearBitmapCache();
            }
        }
    }

    public static void F() {
        if (pp3.b) {
            return;
        }
        try {
            MediationAdsRealInstaller mediationAdsRealInstaller = MediationAdsRealInstaller.a;
            MediationAdsRealInstaller.class.getMethod("install", null).invoke(null, null);
        } catch (Throwable th) {
            Log.e("VideoApplication", "installMediationAdsBridgeIfNeeded failed", th);
        }
    }

    public static void G() {
        if (pp3.b) {
            return;
        }
        try {
            PrivateRoomRealInstaller.class.getMethod("install", null).invoke(null, null);
        } catch (Throwable th) {
            Log.e("VideoApplication", "installPrivateRoomBridgeIfNeeded failed", th);
        }
    }

    public static boolean H() {
        Application applicationA = se.a();
        if (applicationA instanceof VideoApplication) {
            return ((VideoApplication) applicationA).G;
        }
        return false;
    }

    public static void I(Activity activity) {
        n34.a(activity);
        s45.a.a().c(activity);
    }

    public final void J(Activity activity) {
        if (this.F) {
            this.F = false;
            n34.c(activity);
        }
    }

    public final void K() {
        if (pp3.G) {
            registerComponentCallbacks(new b());
        }
    }

    public final void L() {
        registerComponentCallbacks(new c());
    }

    @Override
    public void a(Activity activity) {
        if (activity instanceof VideoPlayerMainActivity) {
            ((VideoPlayerMainActivity) activity).checkAfterGpdrDialog();
        }
    }

    @Override
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }

    @Override
    public void onCreate() {
        if (Process.isIsolated()) {
            Log.e("VideoApplication", "Error init isIsolated");
            super.onCreate();
            return;
        }
        kec.c(this);
        F();
        G();
        zz0.f(this);
        MainApp.u(this);
        se.c(this, new Handler(Looper.getMainLooper()));
        te.a(this, se.b());
        super.onCreate();
        AppActivityLifecycleCallback.setOnActivityDestroyedListener(new AppActivityLifecycleCallback.a() {
            @Override
            public final void onActivityDestroyed(Activity activity) {
                VideoApplication.I(activity);
            }
        });
        AppActivityLifecycleCallback.setOnActivityResumedListener(new AppActivityLifecycleCallback.b() {
            @Override
            public final void onActivityResumed(Activity activity) {
                this.a.J(activity);
            }
        });
        K();
        L();
        AppLifecycleObserver appLifecycleObserverA = AppLifecycleObserver.a();
        if (appLifecycleObserverA != null) {
            appLifecycleObserverA.setOnAppStateListener(new a());
        }
    }

    @Override
    public void z() {
        super.z();
        if (mn5.g() || MainApp.w == 0) {
            return;
        }
        mn5.l(true);
    }
}
