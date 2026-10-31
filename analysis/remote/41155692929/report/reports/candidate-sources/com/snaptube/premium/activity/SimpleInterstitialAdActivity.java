package com.snaptube.premium.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import com.snaptube.ads.view.SplashAdView;
import com.snaptube.base.BaseActivity;
import com.snaptube.dataadapter.utils.TextUtils;
import com.snaptube.premium.R;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.RxBus;
import javax.inject.Inject;
import o.d1;
import o.e1;
import o.fc1;
import o.hh3;
import o.od;
import o.tn7;

public class SimpleInterstitialAdActivity extends BaseActivity {

    @Inject
    hh3 b;
    public d1.b c = new a();

    public class a implements d1.b {
        public a() {
        }

        @Override
        public void a(boolean z) {
            SimpleInterstitialAdActivity.this.b.c();
            SimpleInterstitialAdActivity.this.finish();
        }

        @Override
        public void b() {
            tn7.a(this);
        }

        @Override
        public void i() {
        }

        @Override
        public void j() {
        }

        @Override
        public void k() {
            e1.a(this);
        }

        @Override
        public void u() {
            SimpleInterstitialAdActivity.this.finish();
        }
    }

    public interface b {
        void X(SimpleInterstitialAdActivity simpleInterstitialAdActivity);
    }

    private void z0() {
        int i = Build.VERSION.SDK_INT;
        if (i == 26 || i == 27) {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                Class<?> cls2 = Integer.TYPE;
                if (1 == ((Integer) cls.getMethod("getInt", String.class, cls2).invoke(null, "ro.miui.notch", 0)).intValue()) {
                    Window.class.getMethod("addExtraFlags", cls2).invoke(getWindow(), 1792);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final boolean A0(String str) {
        try {
            com.snaptube.ads_log_v2.c.h().d(str);
            SplashAdView splashAdView = (SplashAdView) LayoutInflater.from(this).inflate(R.layout.ad_splash8, (ViewGroup) findViewById(R.id.ad_splash_container), true).findViewById(R.id.container);
            splashAdView.setCallback(this.c);
            int iR = od.r(str);
            if (iR > 0) {
                splashAdView.setShowAdTimeout(iR);
            } else {
                splashAdView.setShouldIgnoreShowAdTimeout(true);
            }
            if (od.s(str)) {
                splashAdView.setCtaViewIds(null);
            } else {
                splashAdView.setCtaViewIds(new int[]{R.id.nativeAdCallToAction, R.id.nativeAdIcon});
            }
            splashAdView.q2(str);
            splashAdView.setVisibility(8);
            return true;
        } catch (Throwable th) {
            ProductionEnv.throwExceptForDebugging(th);
            return false;
        }
    }

    @Override
    public void onBackPressed() {
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.activity_simple_interstitial_ad);
        z0();
        ((b) fc1.a(getApplicationContext())).X(this);
        String stringExtra = getIntent().getStringExtra("PLACEMENT_ID");
        if (TextUtils.isEmpty(stringExtra)) {
            finish();
        } else if (!A0(stringExtra)) {
            finish();
        } else {
            this.b.a();
            RxBus.d().f(1066);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.b.c();
        RxBus.d().f(1067);
    }
}
