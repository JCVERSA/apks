package com.mgmi.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.mgmi.R;
import com.mgmi.ssp.AdError;
import com.mgmi.ssp.IncentiveVideoAd;
import com.mgmi.ssp.IncentiveVideoListener;
import defpackage.h2d;
import java.lang.ref.WeakReference;

public class IncentiveVideoActivity extends AppCompatActivity {
    public static WeakReference<IncentiveVideoAd> a;
    public static String b;
    public static String c;
    public static IncentiveVideoListener d;
    public static int e;
    public static boolean f;
    public static boolean g;
    public static boolean h;
    public static FrameLayout i;
    public static WeakReference<Activity> j;
    public static WeakReference<IncentiveVideoActivity> k;
    private FrameLayout l;

    public interface a {
    }

    public static void a(@NonNull Activity activity, @NonNull String str, String str2, @NonNull IncentiveVideoListener incentiveVideoListener, int i2, boolean z, boolean z2, boolean z3, int i3) {
        c();
        h = z2;
        g = z3;
        b = str;
        c = str2;
        d = incentiveVideoListener;
        e = i2;
        f = z;
        FrameLayout frameLayout = new FrameLayout(activity);
        i = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        j = new WeakReference<>(activity);
        WeakReference<IncentiveVideoAd> weakReference = new WeakReference<>(new IncentiveVideoAd(activity, i, b, c, new IncentiveVideoListener() {
            @Override
            public void onAdClick() {
                IncentiveVideoListener incentiveVideoListener2 = IncentiveVideoActivity.d;
                if (incentiveVideoListener2 != null) {
                    incentiveVideoListener2.onAdClick();
                }
            }

            @Override
            public void onAdClosed() {
                IncentiveVideoListener incentiveVideoListener2 = IncentiveVideoActivity.d;
                if (incentiveVideoListener2 != null) {
                    incentiveVideoListener2.onAdClosed();
                }
                WeakReference<IncentiveVideoActivity> weakReference2 = IncentiveVideoActivity.k;
                if (weakReference2 == null || weakReference2.get() == null) {
                    return;
                }
                IncentiveVideoActivity.k.get().finish();
            }

            @Override
            public void onAdComplete() {
                IncentiveVideoListener incentiveVideoListener2 = IncentiveVideoActivity.d;
                if (incentiveVideoListener2 != null) {
                    incentiveVideoListener2.onAdComplete();
                }
                WeakReference<IncentiveVideoActivity> weakReference2 = IncentiveVideoActivity.k;
                if (weakReference2 == null || weakReference2.get() == null) {
                    return;
                }
                IncentiveVideoActivity.k.get().finish();
            }

            @Override
            public void onAdError(@NonNull AdError adError) {
                IncentiveVideoListener incentiveVideoListener2 = IncentiveVideoActivity.d;
                if (incentiveVideoListener2 != null) {
                    incentiveVideoListener2.onAdError(adError);
                }
                WeakReference<IncentiveVideoActivity> weakReference2 = IncentiveVideoActivity.k;
                if (weakReference2 == null || weakReference2.get() == null) {
                    return;
                }
                IncentiveVideoActivity.k.get().finish();
            }

            @Override
            public void onAdPrepared() {
                IncentiveVideoListener incentiveVideoListener2 = IncentiveVideoActivity.d;
                if (incentiveVideoListener2 != null) {
                    incentiveVideoListener2.onAdPrepared();
                }
            }

            @Override
            public void onAdStart() {
                IncentiveVideoListener incentiveVideoListener2 = IncentiveVideoActivity.d;
                if (incentiveVideoListener2 != null) {
                    incentiveVideoListener2.onAdStart();
                }
            }

            @Override
            public void onNoAd(@NonNull AdError adError) {
                IncentiveVideoListener incentiveVideoListener2 = IncentiveVideoActivity.d;
                if (incentiveVideoListener2 != null) {
                    incentiveVideoListener2.onNoAd(adError);
                }
                WeakReference<IncentiveVideoActivity> weakReference2 = IncentiveVideoActivity.k;
                if (weakReference2 == null || weakReference2.get() == null) {
                    return;
                }
                IncentiveVideoActivity.k.get().finish();
            }

            @Override
            public void onUpdateAdTime(int i4) {
                IncentiveVideoListener incentiveVideoListener2 = IncentiveVideoActivity.d;
                if (incentiveVideoListener2 != null) {
                    incentiveVideoListener2.onUpdateAdTime(i4);
                }
            }
        }, e, f, i3));
        a = weakReference;
        if (weakReference.get() != null) {
            a.get().setResizeVideo(g);
            a.get().setCloseBtnVisible(h);
            a.get().setOrientation(i3);
        }
    }

    public static void b() {
        WeakReference<Activity> weakReference = j;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        h2d.d(j.get(), new Intent(j.get(), (Class<?>) IncentiveVideoActivity.class));
    }

    public static void c() {
        b = "";
        c = "";
        d = null;
        e = 1000;
        f = false;
        i = null;
        j = null;
        k = null;
        h = false;
        g = false;
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        Log.v("IncentiveVideoActivity", "onBackPressed = ");
        try {
            if (com.mgmi.activity.a.a().a != null) {
                com.mgmi.activity.a.a().c();
                com.mgmi.activity.a.a().a.a();
                com.mgmi.activity.a.a().b();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.mgmi.activity.a.a().a(this);
        setContentView(R.layout.mgad_incentive_video_activity);
        try {
            this.l = (FrameLayout) findViewById(R.id.container);
            com.mgmi.activity.a.a().a(this.l);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.v("IncentiveVideoActivity", "onDestroy = ");
        try {
            if (com.mgmi.activity.a.a().a != null) {
                com.mgmi.activity.a.a().a.a();
                com.mgmi.activity.a.a().b();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        try {
            if (com.mgmi.activity.a.a().a != null) {
                com.mgmi.activity.a.a().a.c();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        try {
            if (com.mgmi.activity.a.a().a != null) {
                com.mgmi.activity.a.a().a.b();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override
    public void onStop() {
        super.onStop();
    }

    public static void a() {
        WeakReference<IncentiveVideoAd> weakReference = a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        a.get().loadAd(f);
    }
}
