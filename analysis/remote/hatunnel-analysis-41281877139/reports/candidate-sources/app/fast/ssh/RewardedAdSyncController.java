package app.fast.ssh;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import androidx.work.PeriodicWorkRequest;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import java.util.concurrent.locks.ReentrantLock;

public final class RewardedAdSyncController {
    private static final String TAG = ProtectedFastSSH.s("⾝");
    private final String adUnitId;
    private RewardedAd cachedAd;
    private long cachedAtMs;
    private boolean isLoading;
    private long latestRequestId;
    private final Handler main;
    private final ReentrantLock mtx;
    private final long ttlMs;
    private long waitingRequestId;

    class AnonymousClass1 extends RewardedAdLoadCallback {
        final Ui val$ui;

        AnonymousClass1(Ui ui) {
            this.val$ui = ui;
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            String strS = ProtectedFastSSH.s("⾋");
            RewardedAdSyncController.access$000(RewardedAdSyncController.this).lock();
            try {
                RewardedAdSyncController.access$302(RewardedAdSyncController.this, false);
                long jAccess$400 = RewardedAdSyncController.access$400(RewardedAdSyncController.this);
                long jAccess$500 = RewardedAdSyncController.access$500(RewardedAdSyncController.this);
                RewardedAdSyncController.access$600(strS + loadAdError.getMessage());
                RewardedAdSyncController.access$000(RewardedAdSyncController.this).unlock();
                if (jAccess$500 == 0 || jAccess$500 != jAccess$400) {
                    return;
                }
                this.val$ui.dismissLoading(jAccess$500);
                this.val$ui.showLoadFailed(jAccess$500, loadAdError);
            } catch (Throwable th) {
                RewardedAdSyncController.access$000(RewardedAdSyncController.this).unlock();
                throw th;
            }
        }

        public void onAdLoaded2(RewardedAd rewardedAd) {
            RewardedAdSyncController.access$000(RewardedAdSyncController.this).lock();
            try {
                RewardedAdSyncController.access$102(RewardedAdSyncController.this, rewardedAd);
                RewardedAdSyncController.access$202(RewardedAdSyncController.this, System.currentTimeMillis());
                RewardedAdSyncController.access$302(RewardedAdSyncController.this, false);
                long jAccess$400 = RewardedAdSyncController.access$400(RewardedAdSyncController.this);
                long jAccess$500 = RewardedAdSyncController.access$500(RewardedAdSyncController.this);
                RewardedAdSyncController.access$600(ProtectedFastSSH.s("⾌"));
                RewardedAdSyncController.access$000(RewardedAdSyncController.this).unlock();
                if (jAccess$500 != 0 && jAccess$500 == jAccess$400 && this.val$ui.isLoadingVisible(jAccess$500)) {
                    RewardedAdSyncController.access$600(ProtectedFastSSH.s("⾍") + jAccess$500);
                    this.val$ui.dismissLoading(jAccess$500);
                }
            } catch (Throwable th) {
                RewardedAdSyncController.access$000(RewardedAdSyncController.this).unlock();
                throw th;
            }
        }

        @Override
        public void onAdLoaded(RewardedAd rewardedAd) {
            onAdLoaded2(rewardedAd);
        }
    }

    public interface Ui {
        void dismissLoading(long j);

        boolean isLoadingVisible(long j);

        void showLoadFailed(long j, LoadAdError loadAdError);

        void showLoading(long j);
    }

    public RewardedAdSyncController(String str) {
        this(str, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
    }

    public RewardedAdSyncController(String str, long j) {
        this.main = new Handler(Looper.getMainLooper());
        this.mtx = new ReentrantLock();
        this.adUnitId = str;
        this.ttlMs = j;
    }

    static ReentrantLock access$000(RewardedAdSyncController rewardedAdSyncController) {
        return rewardedAdSyncController.mtx;
    }

    static RewardedAd access$102(RewardedAdSyncController rewardedAdSyncController, RewardedAd rewardedAd) {
        rewardedAdSyncController.cachedAd = rewardedAd;
        return rewardedAd;
    }

    static long access$202(RewardedAdSyncController rewardedAdSyncController, long j) {
        rewardedAdSyncController.cachedAtMs = j;
        return j;
    }

    static boolean access$302(RewardedAdSyncController rewardedAdSyncController, boolean z) {
        rewardedAdSyncController.isLoading = z;
        return z;
    }

    static long access$400(RewardedAdSyncController rewardedAdSyncController) {
        return rewardedAdSyncController.latestRequestId;
    }

    static long access$500(RewardedAdSyncController rewardedAdSyncController) {
        return rewardedAdSyncController.waitingRequestId;
    }

    static void access$600(String str) {
        debug(str);
    }

    private static void debug(String str) {
    }

    private void dropExpiredLocked() {
        if (this.cachedAd != null && System.currentTimeMillis() - this.cachedAtMs > this.ttlMs) {
            debug(ProtectedFastSSH.s("⾎"));
            this.cachedAd = null;
            this.cachedAtMs = 0L;
        }
    }

    private void startLoadOnMain(Activity activity, Ui ui) {
        if (new Subscription(new PrefsSubscriptionStore(activity)).shouldRequestAds()) {
            debug(ProtectedFastSSH.s("⾏"));
            RewardedAd.load(activity.getApplicationContext(), this.adUnitId, new AdRequest.Builder().build(), new AnonymousClass1(ui));
        }
    }

    public boolean hasValidCachedAd() {
        this.mtx.lock();
        try {
            if (this.cachedAd == null) {
                debug(ProtectedFastSSH.s("⾐"));
            } else {
                if (System.currentTimeMillis() - this.cachedAtMs <= this.ttlMs) {
                    debug(ProtectedFastSSH.s("⾒"));
                    return true;
                }
                debug(ProtectedFastSSH.s("⾑"));
            }
            return false;
        } finally {
            this.mtx.unlock();
        }
    }

    void m482lambda$onUserClick$0$appfastsshRewardedAdSyncController(Activity activity, Ui ui) {
        onUserClick(activity, ui);
    }

    void m483lambda$prefetch$1$appfastsshRewardedAdSyncController(Activity activity, Ui ui) {
        prefetch(activity, ui);
    }

    public void onDialogCancelled(long j) {
        String strS = ProtectedFastSSH.s("⾓");
        this.mtx.lock();
        try {
            if (this.waitingRequestId == j) {
                debug(strS + j);
                this.waitingRequestId = 0L;
            }
        } finally {
            this.mtx.unlock();
        }
    }

    public void onUserClick(Activity activity, Ui ui) {
        String strS = ProtectedFastSSH.s("⾔");
        String strS2 = ProtectedFastSSH.s("⾕");
        String strS3 = ProtectedFastSSH.s("⾖");
        if (new Subscription(new PrefsSubscriptionStore(activity)).shouldRequestAds()) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.main.post(new RewardedAdSyncController$$ExternalSyntheticLambda1(this, activity, ui));
                return;
            }
            this.mtx.lock();
            try {
                long j = this.latestRequestId + 1;
                this.latestRequestId = j;
                debug(strS3 + j);
                dropExpiredLocked();
                RewardedAd rewardedAd = null;
                boolean z = false;
                if (this.cachedAd != null) {
                    debug(strS2 + j);
                    RewardedAd rewardedAd2 = this.cachedAd;
                    this.cachedAd = null;
                    this.cachedAtMs = 0L;
                    this.waitingRequestId = 0L;
                    rewardedAd = rewardedAd2;
                } else {
                    this.waitingRequestId = j;
                    debug(strS + this.waitingRequestId);
                    if (this.isLoading) {
                        debug(ProtectedFastSSH.s("⾘"));
                    } else {
                        z = true;
                        this.isLoading = true;
                        debug(ProtectedFastSSH.s("⾗"));
                    }
                }
                this.mtx.unlock();
                if (rewardedAd != null) {
                    ui.dismissLoading(j);
                    return;
                }
                ui.showLoading(j);
                if (z) {
                    startLoadOnMain(activity, ui);
                }
            } catch (Throwable th) {
                this.mtx.unlock();
                throw th;
            }
        }
    }

    public void prefetch(Activity activity, Ui ui) {
        if (new Subscription(new PrefsSubscriptionStore(activity)).shouldRequestAds()) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.main.post(new RewardedAdSyncController$$ExternalSyntheticLambda0(this, activity, ui));
                return;
            }
            this.mtx.lock();
            try {
                dropExpiredLocked();
                if (this.cachedAd != null) {
                    debug(ProtectedFastSSH.s("⾙"));
                    this.mtx.unlock();
                } else if (this.isLoading) {
                    debug(ProtectedFastSSH.s("⾚"));
                    this.mtx.unlock();
                } else {
                    this.isLoading = true;
                    debug(ProtectedFastSSH.s("⾛"));
                    this.mtx.unlock();
                    startLoadOnMain(activity, ui);
                }
            } catch (Throwable th) {
                this.mtx.unlock();
                throw th;
            }
        }
    }

    public RewardedAd tryConsumeCached() {
        this.mtx.lock();
        try {
            dropExpiredLocked();
            RewardedAd rewardedAd = this.cachedAd;
            this.cachedAd = null;
            this.cachedAtMs = 0L;
            if (rewardedAd != null) {
                debug(ProtectedFastSSH.s("⾜"));
            }
            return rewardedAd;
        } finally {
            this.mtx.unlock();
        }
    }
}
