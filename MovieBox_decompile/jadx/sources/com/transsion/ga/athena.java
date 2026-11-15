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
import com.transsion.athena.taaneh.aethna;
import com.transsion.athena.taaneh.anehat;
import com.transsion.push.PushConstants;
import java.util.LinkedList;
import java.util.Set;
import java.util.UUID;

public class athena implements Application.ActivityLifecycleCallbacks {

    private int f43009b;

    private Runnable f43011d;

    private long f43015h;

    private long f43018k;

    private final Handler f43008a = new Handler(Looper.getMainLooper());

    private boolean f43010c = true;

    private long f43012e = 0;

    private int f43013f = 0;

    private String f43014g = null;

    private int f43016i = 0;

    private final LinkedList f43017j = new LinkedList();

    private static class a {

        int f43019a;

        String f43020b;

        long f43021c;

        a(int i10, String str, long j10) {
            this.f43019a = i10;
            this.f43020b = str;
            this.f43021c = j10;
        }
    }

    class RunnableC0595athena implements Runnable {
        RunnableC0595athena() {
        }

        @Override
        public void run() {
            try {
                athena.this.f43016i = 0;
                athena.this.f43017j.clear();
                athena.this.f43010c = true;
                athena.this.f43012e = 0L;
                ehanat.d("");
            } catch (Exception unused) {
            }
        }
    }

    private boolean e(Activity activity) {
        Window window;
        if (activity == null || AthenaAnalytics.r(activity.getClass()) || (window = activity.getWindow()) == null) {
            return false;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        return (attributes.width == 1 && attributes.height == 1) ? false : true;
    }

    void d(long j10) {
        this.f43018k = j10;
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
        com.transsion.athena.taaneh.athena.b(activity);
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        com.transsion.athena.taaneh.athena.a();
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
                int i10 = 1;
                if (ehanat.s()) {
                    int i11 = this.f43016i + 1;
                    this.f43016i = i11;
                    this.f43017j.addLast(new a(i11, simpleName, SystemClock.elapsedRealtime()));
                }
                int i12 = this.f43009b + 1;
                this.f43009b = i12;
                if (i12 <= 1) {
                    this.f43015h = SystemClock.elapsedRealtime();
                    if (this.f43010c) {
                        try {
                            strValueOf = UUID.randomUUID().toString();
                        } catch (Exception unused) {
                            strValueOf = String.valueOf(System.currentTimeMillis());
                        }
                        ehanat.d(strValueOf);
                        this.f43012e = System.currentTimeMillis();
                        try {
                            Uri referrer = activity.getReferrer();
                            if (referrer != null) {
                                this.f43014g = referrer.getAuthority();
                            }
                            Intent intent = activity.getIntent();
                            String str = this.f43014g;
                            int i13 = anehat.f41678e;
                            if (intent != null) {
                                Set<String> categories = intent.getCategories();
                                if (!"android.intent.action.MAIN".equals(intent.getAction()) || categories == null || !categories.contains("android.intent.category.LAUNCHER")) {
                                    i10 = TextUtils.isEmpty(str) ? 0 : 2;
                                }
                            }
                            this.f43013f = i10;
                            if (TextUtils.equals(this.f43014g, activity.getPackageName())) {
                                this.f43013f = 3;
                            }
                        } catch (Exception e10) {
                            aethna.b(Log.getStackTraceString(e10));
                        }
                        for (Integer num : com.transsion.athena.data.athena.a()) {
                            if (num.intValue() != 9999) {
                                AthenaAnalytics.K(num.intValue()).g0("page_enter", new TrackData().add("purl", simpleName), num.intValue());
                            }
                        }
                    }
                }
                this.f43010c = false;
                Runnable runnable = this.f43011d;
                if (runnable != null) {
                    this.f43008a.removeCallbacks(runnable);
                    this.f43011d = null;
                }
            } catch (Exception e11) {
                aethna.b(Log.getStackTraceString(e11));
            }
        }
    }

    @Override
    public void onActivityStopped(Activity activity) {
        Bundle bundleExtra;
        if (e(activity)) {
            try {
                if (ehanat.s() && this.f43017j.size() > 0) {
                    String simpleName = activity.getClass().getSimpleName();
                    for (a aVar : this.f43017j) {
                        if (simpleName.equals(aVar.f43020b)) {
                            long jElapsedRealtime = SystemClock.elapsedRealtime() - aVar.f43021c;
                            TrackData trackDataAdd = new TrackData().add("s_id", ehanat.m()).add("url", aVar.f43020b).add("no", aVar.f43019a);
                            if (jElapsedRealtime <= 0) {
                                jElapsedRealtime = 0;
                            }
                            TrackData trackDataAdd2 = trackDataAdd.add("t", jElapsedRealtime).add("ext", "");
                            if (activity.getIntent() != null && (bundleExtra = activity.getIntent().getBundleExtra("athena")) != null) {
                                trackDataAdd2.add("ext", bundleExtra);
                            }
                            AthenaAnalytics.L(this.f43018k).h0("page_view", trackDataAdd2, this.f43018k);
                            this.f43017j.remove(aVar);
                            break;
                        }
                    }
                }
                int i10 = this.f43009b - 1;
                this.f43009b = i10;
                if (i10 == 0) {
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime() - this.f43015h;
                    if (jElapsedRealtime2 > 1000 && jElapsedRealtime2 < 86400000) {
                        for (Integer num : com.transsion.athena.data.athena.a()) {
                            if (num.intValue() != 9999) {
                                AthenaAnalytics.K(num.intValue()).g0("app_active", new TrackData().add("s_id", ehanat.m()).add("s_t", this.f43013f).add(PushConstants.PROVIDER_FIELD_PKG, this.f43013f == 2 ? this.f43014g : "").add("s_s", this.f43012e).add("t", jElapsedRealtime2), num.intValue());
                            }
                        }
                    }
                    Runnable runnable = this.f43011d;
                    if (runnable != null) {
                        this.f43008a.removeCallbacks(runnable);
                    }
                    Handler handler = this.f43008a;
                    RunnableC0595athena runnableC0595athena = new RunnableC0595athena();
                    this.f43011d = runnableC0595athena;
                    handler.postDelayed(runnableC0595athena, ehanat.n());
                    AthenaAnalytics.X();
                }
            } catch (Exception e10) {
                aethna.b(Log.getStackTraceString(e10));
            }
        }
    }
}
