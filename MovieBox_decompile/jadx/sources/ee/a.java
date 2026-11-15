package ee;

import android.os.Bundle;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;

public class a extends c {
    public a(CloudControlConfig.CodeSeat codeSeat, i iVar, s sVar) {
        super(codeSeat, iVar, sVar);
    }

    @Override
    public AdCache G() {
        return AdCacheManager.getCache(2);
    }

    @Override
    public boolean d0() {
        return true;
    }

    @Override
    public boolean e0() {
        return false;
    }

    @Override
    public void p(BaseBanner baseBanner) {
        if (baseBanner == null || G().hasAd(this.f59569j, baseBanner)) {
            return;
        }
        baseBanner.destroyAd();
    }

    @Override
    public BaseBanner e(boolean z10) {
        Bundle bundle;
        ICacheAd cache = G().getCache(this.f59569j, false, V(), z10);
        this.f59568i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("BannerCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.f59569j, (BaseBanner) this.f59568i);
        if (((BaseBanner) this.f59568i).isExpired()) {
            AdLogUtil.Log().w("BannerCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        ((BaseBanner) this.f59568i).addRequestBody(tInnerAdRequestBodyC);
        Bundle bundle2 = ((BaseBanner) this.f59568i).mBundle;
        if (bundle2 != null && (bundle = this.A) != null) {
            bundle2.putString(TrackingKey.TRIGGER_ID, bundle.getString(TrackingKey.TRIGGER_ID));
            ((BaseBanner) this.f59568i).mBundle.putLong(TrackingKey.TRIGGER_TS, this.A.getLong(TrackingKey.TRIGGER_TS));
        }
        ((BaseBanner) this.f59568i).setShowId(DeviceUtil.o());
        i(tInnerAdRequestBodyC, this.f59561b);
        return (BaseBanner) this.f59568i;
    }

    @Override
    public void z(BaseBanner baseBanner) {
        if (baseBanner != null) {
            baseBanner.pauseAd();
        }
    }

    @Override
    public void F(BaseBanner baseBanner) {
        if (baseBanner != null) {
            baseBanner.resumeAd();
        }
    }
}
