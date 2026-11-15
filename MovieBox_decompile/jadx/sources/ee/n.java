package ee;

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
import com.hisavana.mediation.bean.CloudControlConfig;
import java.util.ArrayList;
import java.util.Iterator;

public class n extends c {
    public int B;

    public n(CloudControlConfig.CodeSeat codeSeat, i iVar, s sVar) {
        super(codeSeat, iVar, sVar);
        this.B = 0;
    }

    @Override
    public AdCache G() {
        return AdCacheManager.getCache(this.f59576q);
    }

    @Override
    public int M() {
        return this.B;
    }

    @Override
    public boolean d0() {
        return true;
    }

    public ArrayList q0(int i10, int i11, boolean z10, boolean z11) {
        ArrayList caches = G().getCaches(this.f59569j, i11, z10, this.f59576q == 6, i10, z11);
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("*---->get ad from cache,size:");
        sb2.append(caches != null ? caches.size() : 0);
        adLogUtilLog.d("NativeCacheHandler", sb2.toString());
        if (caches == null || caches.isEmpty()) {
            AdLogUtil.Log().w("NativeCacheHandler", "get 0 native ad from cache");
            return new ArrayList();
        }
        if (z10) {
            u0(caches);
        }
        return caches;
    }

    public void r0(TAdNativeInfo tAdNativeInfo, s sVar) {
        NativeAdWrapper nativeAdWrapper;
        BaseNative adImpl;
        WrapTAdAllianceListener tAdAllianceListener;
        if (tAdNativeInfo == null || (nativeAdWrapper = tAdNativeInfo.getNativeAdWrapper()) == null || (adImpl = nativeAdWrapper.getAdImpl()) == null || (tAdAllianceListener = adImpl.getTAdAllianceListener()) == null || tAdAllianceListener.getAdListener() != null) {
            return;
        }
        AdLogUtil.Log().i("NativeCacheHandler", "NativeCacheHandler setAdListener");
        tAdAllianceListener.setAdListener(sVar);
    }

    @Override
    public void p(ArrayList arrayList) {
    }

    public final void t0(TAdNativeInfo tAdNativeInfo, s sVar) {
        NativeAdWrapper nativeAdWrapper;
        BaseNative adImpl;
        if (tAdNativeInfo == null || (nativeAdWrapper = tAdNativeInfo.getNativeAdWrapper()) == null || (adImpl = nativeAdWrapper.getAdImpl()) == null) {
            return;
        }
        TInnerAdRequestBody tInnerAdRequestBodyC = c(null, 2);
        adImpl.addRequestBody(tInnerAdRequestBodyC);
        i(tInnerAdRequestBodyC, sVar);
    }

    public void u0(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TAdNativeInfo tAdNativeInfo = (TAdNativeInfo) it.next();
            if (tAdNativeInfo != null) {
                if (TextUtils.isEmpty(tAdNativeInfo.getShowId())) {
                    tAdNativeInfo.setShowId(DeviceUtil.o());
                }
                t0(tAdNativeInfo, this.f59561b);
            }
        }
    }
}
