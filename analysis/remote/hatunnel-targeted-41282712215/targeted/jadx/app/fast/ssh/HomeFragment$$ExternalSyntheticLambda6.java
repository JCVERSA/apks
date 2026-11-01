package app.fast.ssh;

import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;

public final class HomeFragment$$ExternalSyntheticLambda6 implements OnUserEarnedRewardListener {
    public final HomeFragment f$0;

    public HomeFragment$$ExternalSyntheticLambda6(HomeFragment homeFragment) {
        this.f$0 = homeFragment;
    }

    @Override
    public final void onUserEarnedReward(RewardItem rewardItem) {
        this.f$0.m471lambda$showRewarded$8$appfastsshHomeFragment(rewardItem);
    }
}
