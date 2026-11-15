package defpackage;

import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;
import java.util.ArrayList;
import java.util.Iterator;

public class ynd extends a {
    public int B;

    public ynd(CloudControlConfig.CodeSeat codeSeat, vid vidVar, rud rudVar) {
        super(codeSeat, vidVar, rudVar);
        this.B = 0;
    }

    @Override
    public AdCache G() {
        return AdCacheManager.getCache(this.q);
    }

    @Override
    public int M() {
        return this.B;
    }

    @Override
    public boolean d0() {
        return true;
    }

    public ArrayList q0(int i, int i2, boolean z, boolean z2) {
        ArrayList caches = G().getCaches(this.j, i2, z, this.q == 6, i, z2);
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb = new StringBuilder();
        sb.append("*---->get ad from cache,size:");
        sb.append(caches != null ? caches.size() : 0);
        adLogUtilLog.d("NativeCacheHandler", sb.toString());
        if (caches == null || caches.isEmpty()) {
            AdLogUtil.Log().w("NativeCacheHandler", "get 0 native ad from cache");
            return new ArrayList();
        }
        if (z) {
            u0(caches);
        }
        return caches;
    }

    public void r0(TAdNativeInfo tAdNativeInfo, rud rudVar) {
        NativeAdWrapper nativeAdWrapper;
        BaseNative adImpl;
        WrapTAdAllianceListener tAdAllianceListener;
        if (tAdNativeInfo == null || (nativeAdWrapper = tAdNativeInfo.getNativeAdWrapper()) == null || (adImpl = nativeAdWrapper.getAdImpl()) == null || (tAdAllianceListener = adImpl.getTAdAllianceListener()) == null || tAdAllianceListener.getAdListener() != null) {
            return;
        }
        AdLogUtil.Log().i("NativeCacheHandler", "NativeCacheHandler setAdListener");
        tAdAllianceListener.setAdListener(rudVar);
    }

    @Override
    public void o(ArrayList arrayList) {
    }

    public final void t0(TAdNativeInfo tAdNativeInfo, rud rudVar) {
        NativeAdWrapper nativeAdWrapper;
        BaseNative adImpl;
        if (tAdNativeInfo == null || (nativeAdWrapper = tAdNativeInfo.getNativeAdWrapper()) == null || (adImpl = nativeAdWrapper.getAdImpl()) == null) {
            return;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        adImpl.addRequestBody(tInnerAdRequestBodyC);
        i(tInnerAdRequestBodyC, rudVar);
    }

    public void u0(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TAdNativeInfo tAdNativeInfo = (TAdNativeInfo) it.next();
            if (tAdNativeInfo != null) {
                if (TextUtils.isEmpty(tAdNativeInfo.getShowId())) {
                    tAdNativeInfo.setShowId(DeviceUtil.p());
                }
                t0(tAdNativeInfo, this.b);
            }
        }
    }
}
