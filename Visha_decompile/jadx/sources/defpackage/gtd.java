package defpackage;

import android.os.Bundle;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseInterstitialRewardedVideo;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;

public class gtd extends a {
    public gtd(CloudControlConfig.CodeSeat codeSeat, vid vidVar, rud rudVar) {
        super(codeSeat, vidVar, rudVar);
    }

    @Override
    public AdCache G() {
        return AdCacheManager.getCache(8);
    }

    @Override
    public boolean d0() {
        return true;
    }

    @Override
    public void o(BaseInterstitialRewardedVideo baseInterstitialRewardedVideo) {
        if (baseInterstitialRewardedVideo == null || G().hasAd(this.j, baseInterstitialRewardedVideo)) {
            return;
        }
        baseInterstitialRewardedVideo.destroyAd();
    }

    @Override
    public BaseInterstitialRewardedVideo d(boolean z) {
        Bundle bundle;
        ICacheAd cache = G().getCache(this.j, false, V(), z);
        this.i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("RewardedInterstitialCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.j, (BaseInterstitialRewardedVideo) this.i);
        if (((BaseInterstitialRewardedVideo) this.i).isExpired()) {
            AdLogUtil.Log().w("RewardedInterstitialCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        ((BaseInterstitialRewardedVideo) this.i).addRequestBody(tInnerAdRequestBodyC);
        Bundle bundle2 = ((BaseInterstitialRewardedVideo) this.i).mBundle;
        if (bundle2 != null && (bundle = this.A) != null) {
            bundle2.putString(TrackingKey.TRIGGER_ID, bundle.getString(TrackingKey.TRIGGER_ID));
            ((BaseInterstitialRewardedVideo) this.i).mBundle.putLong(TrackingKey.TRIGGER_TS, this.A.getLong(TrackingKey.TRIGGER_TS));
        }
        ((BaseInterstitialRewardedVideo) this.i).setShowId(DeviceUtil.p());
        i(tInnerAdRequestBodyC, this.b);
        return (BaseInterstitialRewardedVideo) this.i;
    }
}
