package com.mgmi.platform;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import cn.com.custommma.mobile.tracking.api.Countly;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class a implements Application.ActivityLifecycleCallbacks {
    private static volatile a f;
    private int b;
    private boolean d;
    private WeakReference<Activity> e;
    private List<WeakReference<Activity>> a = Collections.synchronizedList(new LinkedList());
    private boolean c = true;

    public static final class C0168a extends BroadcastReceiver {
        private final WeakReference<a> a;

        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            a aVar = this.a.get();
            if (aVar != null) {
                if (TextUtils.equals(action, "android.intent.action.SCREEN_OFF")) {
                    aVar.d = true;
                } else if (TextUtils.equals(action, "android.intent.action.USER_PRESENT")) {
                    aVar.d = false;
                } else if (TextUtils.equals(action, "android.intent.action.SCREEN_ON")) {
                    aVar.d = false;
                }
            }
        }

        private C0168a(a aVar) {
            this.a = new WeakReference<>(aVar);
        }
    }

    private a() {
        c();
    }

    private void b(Activity activity) {
        try {
            Countly.l().h();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void c() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        if (com.mgmi.ads.api.c.a() != null) {
            com.mgmi.ads.api.c.a().registerReceiver(new C0168a(), intentFilter);
        }
    }

    @Override
    public void onActivityCreated(@NonNull Activity activity, Bundle bundle) {
        if (this.a == null) {
            this.a = Collections.synchronizedList(new LinkedList());
        }
        this.a.add(new WeakReference<>(activity));
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        WeakReference<Activity> next;
        List<WeakReference<Activity>> list = this.a;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<WeakReference<Activity>> it = this.a.iterator();
        while (it.hasNext() && (next = it.next()) != null) {
            if (next.get() == activity) {
                it.remove();
                return;
            }
        }
    }

    @Override
    public void onActivityPaused(Activity activity) {
    }

    @Override
    public void onActivityResumed(Activity activity) {
        if (!this.c) {
            a(activity);
        }
        this.c = true;
        this.e = new WeakReference<>(activity);
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
        this.b++;
    }

    @Override
    public void onActivityStopped(Activity activity) {
        int i = this.b - 1;
        this.b = i;
        if (i == 0 || this.d) {
            this.c = false;
            b(activity);
        }
    }

    public static a a() {
        if (f == null) {
            synchronized (a.class) {
                try {
                    if (f == null) {
                        f = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public WeakReference<Activity> b() {
        return this.e;
    }

    private void a(Activity activity) {
        try {
            Countly.l().j();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
