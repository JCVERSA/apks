package ee;

import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;

public class k extends c {
    public k(CloudControlConfig.CodeSeat codeSeat, i iVar, s sVar) {
        super(codeSeat, iVar, sVar);
    }

    @Override
    public AdCache G() {
        return AdCacheManager.getCache(3);
    }

    @Override
    public boolean d0() {
        return true;
    }

    @Override
    public void p(BaseInterstitial baseInterstitial) {
        if (baseInterstitial == null || G().hasAd(this.f59569j, baseInterstitial)) {
            return;
        }
        baseInterstitial.destroyAd();
    }

    @Override
    public BaseInterstitial e(boolean z10) {
        ICacheAd cache = G().getCache(this.f59569j, false, V(), z10);
        this.f59568i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("InterstialCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.f59569j, (BaseInterstitial) this.f59568i);
        if (((BaseInterstitial) this.f59568i).isExpired()) {
            AdLogUtil.Log().w("InterstialCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        ((BaseInterstitial) this.f59568i).addRequestBody(tInnerAdRequestBodyC);
        ((BaseInterstitial) this.f59568i).setShowId(DeviceUtil.o());
        i(tInnerAdRequestBodyC, this.f59561b);
        return (BaseInterstitial) this.f59568i;
    }
}
