package defpackage;

import android.os.Bundle;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;

public class z2d extends a {
    public z2d(CloudControlConfig.CodeSeat codeSeat, vid vidVar, rud rudVar) {
        super(codeSeat, vidVar, rudVar);
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
    public void o(BaseBanner baseBanner) {
        if (baseBanner == null || G().hasAd(this.j, baseBanner)) {
            return;
        }
        baseBanner.destroyAd();
    }

    @Override
    public BaseBanner d(boolean z) {
        Bundle bundle;
        ICacheAd cache = G().getCache(this.j, false, V(), z);
        this.i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("BannerCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.j, (BaseBanner) this.i);
        if (((BaseBanner) this.i).isExpired()) {
            AdLogUtil.Log().w("BannerCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        ((BaseBanner) this.i).addRequestBody(tInnerAdRequestBodyC);
        Bundle bundle2 = ((BaseBanner) this.i).mBundle;
        if (bundle2 != null && (bundle = this.A) != null) {
            bundle2.putString(TrackingKey.TRIGGER_ID, bundle.getString(TrackingKey.TRIGGER_ID));
            ((BaseBanner) this.i).mBundle.putLong(TrackingKey.TRIGGER_TS, this.A.getLong(TrackingKey.TRIGGER_TS));
        }
        ((BaseBanner) this.i).setShowId(DeviceUtil.p());
        i(tInnerAdRequestBodyC, this.b);
        return (BaseBanner) this.i;
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
