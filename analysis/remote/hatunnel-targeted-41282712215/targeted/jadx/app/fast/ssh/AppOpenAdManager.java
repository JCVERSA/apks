package app.fast.ssh;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import java.util.Date;

public class AppOpenAdManager implements LifecycleObserver, Application.ActivityLifecycleCallbacks {
    private static final String AD_UNIT_ID = ProtectedFastSSH.s("ⷙ");
    private static final String LOG_TAG = ProtectedFastSSH.s("ⷚ");
    private static boolean isShowingAd;
    private Activity currentActivity;
    private AppOpenAd.AppOpenAdLoadCallback loadCallback;
    private final FastSSH myApplication;
    private long loadTime = 0;
    private AppOpenAd appOpenAd = null;

    class AnonymousClass1 extends AppOpenAd.AppOpenAdLoadCallback {

        class C00121 extends FullScreenContentCallback {
            C00121() {
            }

            @Override
            public void onAdDismissedFullScreenContent() {
                AppOpenAdManager.access$002(AppOpenAdManager.this, null);
                AppOpenAdManager.access$202(false);
                AppOpenAdManager.this.fetchAd();
                synchronized (HomeFragment.MS_LOCK) {
                    HomeFragment.SHOW_AD_MS = System.currentTimeMillis();
                }
            }

            @Override
            public void onAdFailedToShowFullScreenContent(AdError adError) {
                AppOpenAdManager.access$202(false);
            }

            @Override
            public void onAdShowedFullScreenContent() {
                AppOpenAdManager.access$202(true);
            }
        }

        AnonymousClass1() {
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            AppOpenAdManager.access$002(AppOpenAdManager.this, null);
        }

        public void onAdLoaded2(AppOpenAd appOpenAd) {
            AppOpenAdManager.access$002(AppOpenAdManager.this, appOpenAd);
            AppOpenAdManager.access$102(AppOpenAdManager.this, new Date().getTime());
            AppOpenAdManager.access$000(AppOpenAdManager.this).setFullScreenContentCallback(new C00121());
        }

        @Override
        public void onAdLoaded(AppOpenAd appOpenAd) {
            onAdLoaded2(appOpenAd);
        }
    }

    public AppOpenAdManager(FastSSH fastSSH) {
        this.myApplication = fastSSH;
        fastSSH.registerActivityLifecycleCallbacks(this);
        ProcessLifecycleOwner.get().get$lifecycle().addObserver(this);
    }

    static AppOpenAd access$000(AppOpenAdManager appOpenAdManager) {
        return appOpenAdManager.appOpenAd;
    }

    static AppOpenAd access$002(AppOpenAdManager appOpenAdManager, AppOpenAd appOpenAd) {
        appOpenAdManager.appOpenAd = appOpenAd;
        return appOpenAd;
    }

    static long access$102(AppOpenAdManager appOpenAdManager, long j) {
        appOpenAdManager.loadTime = j;
        return j;
    }

    static boolean access$202(boolean z) {
        isShowingAd = z;
        return z;
    }

    private AdRequest getAdRequest() {
        return new AdRequest.Builder().build();
    }

    private boolean wasLoadTimeLessThanNHoursAgo(long j) {
        return new Date().getTime() - this.loadTime < j * 3600000;
    }

    public void fetchAd() {
        if (new Subscription(new PrefsSubscriptionStore(this.myApplication)).shouldRequestAds() && !isAdAvailable()) {
            this.loadCallback = new AnonymousClass1();
            AppOpenAd.load(this.myApplication, ProtectedFastSSH.s("ⷙ"), getAdRequest(), this.loadCallback);
        }
    }

    public boolean isAdAvailable() {
        return this.appOpenAd != null && wasLoadTimeLessThanNHoursAgo(4L);
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
        this.currentActivity = null;
    }

    @Override
    public void onActivityPaused(Activity activity) {
    }

    @Override
    public void onActivityResumed(Activity activity) {
        this.currentActivity = activity;
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
        this.currentActivity = activity;
    }

    @Override
    public void onActivityStopped(Activity activity) {
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart() {
        showAdIfAvailable();
        ProtectedFastSSH.s("ⷚ");
        ProtectedFastSSH.s("ⷛ");
    }

    public void showAdIfAvailable() {
        boolean zShouldRequestAds = new Subscription(new PrefsSubscriptionStore(this.myApplication)).shouldRequestAds();
        ProtectedFastSSH.s("ⷚ");
        if (!zShouldRequestAds || isShowingAd || !isAdAvailable()) {
            ProtectedFastSSH.s("ⷝ");
            fetchAd();
        } else {
            ProtectedFastSSH.s("ⷜ");
            isShowingAd = true;
            this.appOpenAd.show(this.currentActivity);
        }
    }
}
