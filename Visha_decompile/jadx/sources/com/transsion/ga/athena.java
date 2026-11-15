package com.transsion.ga;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.TrackData;
import com.transsion.push.PushConstants;
import defpackage.c4d;
import java.util.LinkedList;
import java.util.Set;
import java.util.UUID;
import org.apache.commons.lang3.BooleanUtils;

public class athena implements Application.ActivityLifecycleCallbacks {
    public int c;
    public Runnable e;
    public long i;
    public long l;
    public final Handler b = new Handler(Looper.getMainLooper());
    public boolean d = true;
    public long f = 0;
    public int g = 0;
    public String h = null;
    public int j = 0;
    public final LinkedList k = new LinkedList();

    public static class a {
        public int a;
        public String b;
        public long c;

        public a(int i, String str, long j) {
            this.a = i;
            this.b = str;
            this.c = j;
        }
    }

    public class RunnableC0218athena implements Runnable {
        public RunnableC0218athena() {
        }

        @Override
        public void run() {
            try {
                athena.this.j = 0;
                athena.this.k.clear();
                athena.this.d = true;
                athena.this.f = 0L;
                ehanat.d("");
            } catch (Exception unused) {
            }
        }
    }

    public void d(long j) {
        this.l = j;
    }

    public final boolean e(Activity activity) {
        Window window;
        if (activity == null || AthenaAnalytics.r(activity.getClass()) || (window = activity.getWindow()) == null) {
            return false;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        return (attributes.width == 1 && attributes.height == 1) ? false : true;
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        com.transsion.athena.taaneh.athena.n(activity);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        com.transsion.athena.taaneh.athena.g();
    }

    @Override
    public void onActivityPaused(Activity activity) {
    }

    @Override
    public void onActivityResumed(Activity activity) {
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
        String strValueOf;
        if (e(activity)) {
            try {
                String simpleName = activity.getClass().getSimpleName();
                int i = 1;
                if (ehanat.s()) {
                    int i2 = this.j + 1;
                    this.j = i2;
                    this.k.addLast(new a(i2, simpleName, SystemClock.elapsedRealtime()));
                }
                int i3 = this.c + 1;
                this.c = i3;
                if (i3 <= 1) {
                    this.i = SystemClock.elapsedRealtime();
                    if (this.d) {
                        try {
                            strValueOf = UUID.randomUUID().toString();
                        } catch (Exception unused) {
                            strValueOf = String.valueOf(System.currentTimeMillis());
                        }
                        ehanat.d(strValueOf);
                        this.f = System.currentTimeMillis();
                        try {
                            Uri referrer = activity.getReferrer();
                            if (referrer != null) {
                                this.h = referrer.getAuthority();
                            }
                            Intent intent = activity.getIntent();
                            String str = this.h;
                            String str2 = com.transsion.athena.taaneh.a.a;
                            if (intent != null) {
                                Set<String> categories = intent.getCategories();
                                if (!"android.intent.action.MAIN".equals(intent.getAction()) || categories == null || !categories.contains("android.intent.category.LAUNCHER")) {
                                    i = TextUtils.isEmpty(str) ? 0 : 2;
                                }
                            }
                            this.g = i;
                            if (TextUtils.equals(this.h, activity.getPackageName())) {
                                this.g = 3;
                            }
                        } catch (Exception e) {
                            c4d.d(Log.getStackTraceString(e));
                        }
                        for (Integer num : com.transsion.athena.data.athena.a()) {
                            if (num.intValue() != 9999) {
                                AthenaAnalytics.J(num.intValue()).c0("page_enter", new TrackData().add("purl", simpleName), num.intValue());
                            }
                        }
                    }
                }
                this.d = false;
                Runnable runnable = this.e;
                if (runnable != null) {
                    this.b.removeCallbacks(runnable);
                    this.e = null;
                }
            } catch (Exception e2) {
                c4d.d(Log.getStackTraceString(e2));
            }
        }
    }

    @Override
    public void onActivityStopped(Activity activity) {
        Bundle bundleExtra;
        if (e(activity)) {
            try {
                if (ehanat.s() && this.k.size() > 0) {
                    String simpleName = activity.getClass().getSimpleName();
                    for (a aVar : this.k) {
                        if (simpleName.equals(aVar.b)) {
                            long jElapsedRealtime = SystemClock.elapsedRealtime() - aVar.c;
                            TrackData trackDataAdd = new TrackData().add("s_id", ehanat.m()).add("url", aVar.b).add(BooleanUtils.NO, aVar.a);
                            if (jElapsedRealtime <= 0) {
                                jElapsedRealtime = 0;
                            }
                            TrackData trackDataAdd2 = trackDataAdd.add("t", jElapsedRealtime).add("ext", "");
                            if (activity.getIntent() != null && (bundleExtra = activity.getIntent().getBundleExtra("athena")) != null) {
                                trackDataAdd2.add("ext", bundleExtra);
                            }
                            AthenaAnalytics.K(this.l).d0("page_view", trackDataAdd2, this.l);
                            this.k.remove(aVar);
                            break;
                        }
                    }
                }
                int i = this.c - 1;
                this.c = i;
                if (i == 0) {
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime() - this.i;
                    if (jElapsedRealtime2 > 1000 && jElapsedRealtime2 < 86400000) {
                        for (Integer num : com.transsion.athena.data.athena.a()) {
                            if (num.intValue() != 9999) {
                                AthenaAnalytics.J(num.intValue()).c0("app_active", new TrackData().add("s_id", ehanat.m()).add("s_t", this.g).add(PushConstants.PROVIDER_FIELD_PKG, this.g == 2 ? this.h : "").add("s_s", this.f).add("t", jElapsedRealtime2), num.intValue());
                            }
                        }
                    }
                    Runnable runnable = this.e;
                    if (runnable != null) {
                        this.b.removeCallbacks(runnable);
                    }
                    Handler handler = this.b;
                    RunnableC0218athena runnableC0218athena = new RunnableC0218athena();
                    this.e = runnableC0218athena;
                    handler.postDelayed(runnableC0218athena, ehanat.n());
                    AthenaAnalytics.W();
                }
            } catch (Exception e) {
                c4d.d(Log.getStackTraceString(e));
            }
        }
    }
}
