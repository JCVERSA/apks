package app.fast.ssh;

import android.app.Activity;

public final class RewardedAdSyncController$$ExternalSyntheticLambda0 implements Runnable {
    public final RewardedAdSyncController f$0;
    public final Activity f$1;
    public final RewardedAdSyncController.Ui f$2;

    public RewardedAdSyncController$$ExternalSyntheticLambda0(RewardedAdSyncController rewardedAdSyncController, Activity activity, RewardedAdSyncController.Ui ui) {
        this.f$0 = rewardedAdSyncController;
        this.f$1 = activity;
        this.f$2 = ui;
    }

    @Override
    public final void run() {
        this.f$0.m483lambda$prefetch$1$appfastsshRewardedAdSyncController(this.f$1, this.f$2);
    }
}
