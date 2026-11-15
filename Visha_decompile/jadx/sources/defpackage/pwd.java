package defpackage;

import android.os.Bundle;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;

public class pwd extends a {
    public pwd(CloudControlConfig.CodeSeat codeSeat, vid vidVar, rud rudVar) {
        super(codeSeat, vidVar, rudVar);
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
    public void o(BaseVideo baseVideo) {
        if (baseVideo == null || G().hasAd(this.j, baseVideo)) {
            return;
        }
        baseVideo.destroyAd();
    }

    @Override
    public BaseVideo d(boolean z) {
        Bundle bundle;
        ICacheAd cache = G().getCache(this.j, false, V(), z);
        this.i = cache;
        if (cache == null) {
            AdLogUtil.Log().w("VideoCacheHandler", "no ad");
            return null;
        }
        G().removeCache(this.j, (BaseVideo) this.i);
        if (((BaseVideo) this.i).isExpired()) {
            AdLogUtil.Log().w("VideoCacheHandler", "ad is expired");
            return null;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        ((BaseVideo) this.i).addRequestBody(tInnerAdRequestBodyC);
        Bundle bundle2 = ((BaseVideo) this.i).mBundle;
        if (bundle2 != null && (bundle = this.A) != null) {
            bundle2.putString(TrackingKey.TRIGGER_ID, bundle.getString(TrackingKey.TRIGGER_ID));
            ((BaseVideo) this.i).mBundle.putLong(TrackingKey.TRIGGER_TS, this.A.getLong(TrackingKey.TRIGGER_TS));
        }
        ((BaseVideo) this.i).setShowId(DeviceUtil.p());
        i(tInnerAdRequestBodyC, this.b);
        return (BaseVideo) this.i;
    }
}
