package ee;

import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;

public class r extends c {
    public static AdCache B = new AdCache();

    public r(CloudControlConfig.CodeSeat codeSeat, i iVar, s sVar) {
        super(codeSeat, iVar, sVar);
    }

    @Override
    public AdCache G() {
        return AdCacheManager.getCache(4);
    }

    @Override
    public boolean d0() {
        return true;
    }

    @Override
    public void p(BaseSplash baseSplash) {
        if (baseSplash == null || G().hasAd(this.f59569j, baseSplash)) {
            return;
        }
        baseSplash.destroyAd();
    }

    @Override
    public BaseSplash e(boolean z10) {
        ICacheAd cache = G().getCache(this.f59569j, false, V(), z10);
        this.f59568i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("SplashCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.f59569j, (BaseSplash) this.f59568i);
        if (((BaseSplash) this.f59568i).isExpired()) {
            AdLogUtil.Log().w("SplashCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        ((BaseSplash) this.f59568i).addRequestBody(tInnerAdRequestBodyC);
        ((BaseSplash) this.f59568i).setShowId(DeviceUtil.o());
        i(tInnerAdRequestBodyC, this.f59561b);
        return (BaseSplash) this.f59568i;
    }

    @Override
    public void z(BaseSplash baseSplash) {
        if (baseSplash != null) {
            baseSplash.pauseAd();
        }
    }

    @Override
    public void F(BaseSplash baseSplash) {
        if (baseSplash != null) {
            baseSplash.resumeAd();
        }
    }
}
