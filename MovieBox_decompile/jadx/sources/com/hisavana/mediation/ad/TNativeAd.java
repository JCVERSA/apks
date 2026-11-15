package com.hisavana.mediation.ad;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;
import ee.c;
import ee.h;
import ee.i;
import ee.n;
import fe.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class TNativeAd extends b {
    public int A;
    public int B;
    public SSPWebPageReqInfo C;
    public final List<WeakReference<TAdNativeView>> D;

    public TNativeAd(Context context, String str) {
        super(context, str);
        this.A = 1;
        this.B = 0;
        this.D = new ArrayList();
    }

    @Override
    public boolean a(int i10) {
        return i10 == 1 || i10 == 10 || i10 == 6;
    }

    public void bindNativeView(@NonNull TAdNativeView tAdNativeView, @NonNull TAdNativeInfo tAdNativeInfo, @NonNull ViewBinder viewBinder, String str) {
        if (!e.h()) {
            AdLogUtil.Log().e("TNativeAd", "you should init first");
            return;
        }
        a(tAdNativeInfo);
        if (this.f60145q && tAdNativeInfo.isMatchVulgarBrand()) {
            AdLogUtil.Log().e("TNativeAd", "nativeInfo is match vulgar");
            TAdErrorCode tAdErrorCode = TAdErrorCode.ERROR_CODE_SHOW_VULGAR;
            trackingTriggerShowError(tAdErrorCode);
            b(tAdErrorCode);
            return;
        }
        tAdNativeInfo.setSceneToken(str);
        tAdNativeInfo.setSceneId(a(str));
        NativeAdWrapper nativeAdWrapper = tAdNativeInfo.getNativeAdWrapper();
        if (nativeAdWrapper != null && nativeAdWrapper.getAdImpl() != null && nativeAdWrapper.getAdImpl().mBundle != null) {
            nativeAdWrapper.getAdImpl().mBundle.putInt(TrackingKey.FILLING_SOURCE, tAdNativeInfo.getFillSource());
            nativeAdWrapper.getAdImpl().mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.f60145q ? 1 : 0);
        }
        c cVarG = g();
        if (cVarG instanceof n) {
            ((n) cVarG).r0(tAdNativeInfo, this.f60136h);
        }
        tAdNativeView.a(tAdNativeInfo, viewBinder);
        this.D.add(new WeakReference<>(tAdNativeView));
    }

    public final int c(int i10) {
        return i10 == 6 ? Integer.MAX_VALUE : 1;
    }

    @Override
    public void clearCurrentAd() {
        super.clearCurrentAd();
    }

    @Override
    public void destroy() {
        super.destroy();
        for (WeakReference<TAdNativeView> weakReference : this.D) {
            if (weakReference.get() != null) {
                weakReference.get().release();
            }
        }
        this.D.clear();
    }

    public List<TAdNativeInfo> getNativeAdInfo() {
        try {
            if (this.f60141m) {
                a(TAdErrorCode.ERROR_AD_REQUEST_TIME_OUT, 0);
                return new ArrayList();
            }
            CloudControlConfig.CodeSeat codeSeatA = h.a(this.f60129a);
            setCodeSeatType(codeSeatA == null ? -1 : codeSeatA.getCodeSeatType().intValue());
            TAdErrorCode tAdErrorCodeB = b(codeSeatA);
            if (tAdErrorCodeB != null) {
                a(tAdErrorCodeB, 0);
                return new ArrayList();
            }
            c cVarG = g();
            if (cVarG == null) {
                return new ArrayList();
            }
            if (codeSeatA == null) {
                return new ArrayList();
            }
            ArrayList arrayListQ0 = ((n) cVarG).q0(cVarG.V(), Math.max(1, Math.min(c(codeSeatA.getCodeSeatType().intValue()), codeSeatA.getAdRequestCount().intValue())), true, this.f60145q);
            if (arrayListQ0 != null && !arrayListQ0.isEmpty()) {
                a((TAdErrorCode) null, arrayListQ0.size());
            } else if (NetStateManager.checkNetworkState(false)) {
                a(TAdErrorCode.ERROR_TRIGGER_SHOW_ONLINE_NO_AD, 0);
            } else {
                a(TAdErrorCode.ERROR_RIGGER_SHOW_OFFLINE_NO_AD, 0);
            }
            return arrayListQ0;
        } catch (Exception e10) {
            AdLogUtil.Log().e("TNativeAd", Log.getStackTraceString(e10));
            return new ArrayList();
        }
    }

    public int getNativeInfoSize() {
        try {
            CloudControlConfig.CodeSeat codeSeatA = h.a(this.f60129a);
            if (codeSeatA == null) {
                return 0;
            }
            setCodeSeatType(codeSeatA.getCodeSeatType().intValue());
            c cVarG = g();
            if (cVarG == null) {
                return 0;
            }
            ArrayList arrayListQ0 = ((n) cVarG).q0(cVarG.V(), Math.max(1, Math.min(c(codeSeatA.getCodeSeatType().intValue()), codeSeatA.getAdRequestCount().intValue())), false, this.f60145q);
            if (arrayListQ0 == null) {
                return 0;
            }
            return arrayListQ0.size();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public void setAdMobPosition(int i10) {
        this.A = i10;
    }

    public void setAdmobMediaAspectRatio(int i10) {
        this.B = i10;
    }

    public void setRecommendReqInfo(SSPWebPageReqInfo sSPWebPageReqInfo) {
        this.C = sSPWebPageReqInfo;
    }

    @Override
    public c a(CloudControlConfig.CodeSeat codeSeat) {
        i iVarD = d();
        iVarD.b(this.A);
        iVarD.i(this.B);
        iVarD.d(this.C);
        return new n(codeSeat, iVarD, this.f60136h);
    }

    @Override
    public boolean c() {
        return true;
    }

    public final void a(TAdErrorCode tAdErrorCode, int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt("ad_number", i10);
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f60129a);
        bundle.putLong("ts", System.currentTimeMillis());
        if (tAdErrorCode != null) {
            bundle.putString("error_code", String.valueOf(tAdErrorCode.getErrorCode()));
        }
        TrackingManager.trackGetNativeInfo(bundle);
    }

    public void bindNativeView(@NonNull TAdNativeView tAdNativeView, @NonNull TAdNativeInfo tAdNativeInfo, @NonNull ViewBinder viewBinder) {
        bindNativeView(tAdNativeView, tAdNativeInfo, viewBinder, "");
    }
}
