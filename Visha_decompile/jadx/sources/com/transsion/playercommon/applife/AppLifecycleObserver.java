package com.transsion.playercommon.applife;

import android.app.Application;
import android.util.Log;
import androidx.p004lifecycle.DefaultLifecycleObserver;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.ProcessLifecycleOwner;

public class AppLifecycleObserver implements DefaultLifecycleObserver {
    public static AppLifecycleObserver e;
    public final Application b;
    public boolean c = false;
    public a d;

    public interface a {
        void a();

        void b();
    }

    public AppLifecycleObserver(Application application) {
        this.b = application;
        Log.d("AppLifecycleObserver", "AppLifecycleObserver: " + application);
    }

    public static AppLifecycleObserver a() {
        return e;
    }

    public static void b(Application application) {
        if (e == null) {
            e = new AppLifecycleObserver(application);
            ProcessLifecycleOwner.get().getLifecycle().addObserver(e);
            Log.i("AppLifecycleObserver", "AppLifecycleObserver initialized");
        }
    }

    public final void c() {
        Log.i("AppLifecycleObserver", "App went to background, recording exit time");
        a aVar = this.d;
        if (aVar != null) {
            try {
                aVar.b();
            } catch (Exception e2) {
                Log.e("AppLifecycleObserver", "onAppBackground callback error: " + e2);
            }
        }
    }

    @Override
    public void onStart(LifecycleOwner lifecycleOwner) {
        a aVar;
        boolean z = this.c;
        this.c = true;
        Log.d("AppLifecycleObserver", "App entered foreground");
        if (z || (aVar = this.d) == null) {
            return;
        }
        try {
            aVar.a();
        } catch (Exception e2) {
            Log.e("AppLifecycleObserver", "onAppForeground callback error: " + e2);
        }
    }

    @Override
    public void onStop(LifecycleOwner lifecycleOwner) {
        this.c = false;
        Log.d("AppLifecycleObserver", "App entered background");
        c();
    }

    public void setOnAppStateListener(a aVar) {
        this.d = aVar;
    }
}
