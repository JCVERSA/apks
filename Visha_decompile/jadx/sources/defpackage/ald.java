package defpackage;

import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;

public class ald extends a {
    public ald(CloudControlConfig.CodeSeat codeSeat, vid vidVar, rud rudVar) {
        super(codeSeat, vidVar, rudVar);
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
    public void o(BaseInterstitial baseInterstitial) {
        if (baseInterstitial == null || G().hasAd(this.j, baseInterstitial)) {
            return;
        }
        baseInterstitial.destroyAd();
    }

    @Override
    public BaseInterstitial d(boolean z) {
        ICacheAd cache = G().getCache(this.j, false, V(), z);
        this.i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("InterstialCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.j, (BaseInterstitial) this.i);
        if (((BaseInterstitial) this.i).isExpired()) {
            AdLogUtil.Log().w("InterstialCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        ((BaseInterstitial) this.i).addRequestBody(tInnerAdRequestBodyC);
        ((BaseInterstitial) this.i).setShowId(DeviceUtil.p());
        i(tInnerAdRequestBodyC, this.b);
        return (BaseInterstitial) this.i;
    }
}
