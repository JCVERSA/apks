package ee;

import android.os.Bundle;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;

public class v extends c {
    public v(CloudControlConfig.CodeSeat codeSeat, i iVar, s sVar) {
        super(codeSeat, iVar, sVar);
    }

    @Override
    public AdCache G() {
        return AdCacheManager.getCache(5);
    }

    @Override
    public boolean d0() {
        return true;
    }

    @Override
    public void p(BaseVideo baseVideo) {
        if (baseVideo == null || G().hasAd(this.f59569j, baseVideo)) {
            return;
        }
        baseVideo.destroyAd();
    }

    @Override
    public BaseVideo e(boolean z10) {
        Bundle bundle;
        ICacheAd cache = G().getCache(this.f59569j, false, V(), z10);
        this.f59568i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("VideoCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.f59569j, (BaseVideo) this.f59568i);
        if (((BaseVideo) this.f59568i).isExpired()) {
            AdLogUtil.Log().w("VideoCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        ((BaseVideo) this.f59568i).addRequestBody(tInnerAdRequestBodyC);
        Bundle bundle2 = ((BaseVideo) this.f59568i).mBundle;
        if (bundle2 != null && (bundle = this.A) != null) {
            bundle2.putString(TrackingKey.TRIGGER_ID, bundle.getString(TrackingKey.TRIGGER_ID));
            ((BaseVideo) this.f59568i).mBundle.putLong(TrackingKey.TRIGGER_TS, this.A.getLong(TrackingKey.TRIGGER_TS));
        }
        ((BaseVideo) this.f59568i).setShowId(DeviceUtil.o());
        i(tInnerAdRequestBodyC, this.f59561b);
        return (BaseVideo) this.f59568i;
    }
}
