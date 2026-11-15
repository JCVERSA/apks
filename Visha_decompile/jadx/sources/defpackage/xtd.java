package defpackage;

import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;

public class xtd extends a {
    public static AdCache B = new AdCache();

    public xtd(CloudControlConfig.CodeSeat codeSeat, vid vidVar, rud rudVar) {
        super(codeSeat, vidVar, rudVar);
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
    public void o(BaseSplash baseSplash) {
        if (baseSplash == null || G().hasAd(this.j, baseSplash)) {
            return;
        }
        baseSplash.destroyAd();
    }

    @Override
    public BaseSplash d(boolean z) {
        ICacheAd cache = G().getCache(this.j, false, V(), z);
        this.i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("SplashCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.j, (BaseSplash) this.i);
        if (((BaseSplash) this.i).isExpired()) {
            AdLogUtil.Log().w("SplashCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        ((BaseSplash) this.i).addRequestBody(tInnerAdRequestBodyC);
        ((BaseSplash) this.i).setShowId(DeviceUtil.p());
        i(tInnerAdRequestBodyC, this.b);
        return (BaseSplash) this.i;
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
