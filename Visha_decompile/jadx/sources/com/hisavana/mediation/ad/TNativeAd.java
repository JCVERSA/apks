package com.hisavana.mediation.ad;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.a;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;
import defpackage.pca;
import defpackage.ul4;
import defpackage.vid;
import defpackage.ynd;
import defpackage.zgd;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class TNativeAd extends pca {
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
    public boolean a(int i) {
        return i == 1 || i == 10 || i == 6;
    }

    public void bindNativeView(@NonNull TAdNativeView tAdNativeView, @NonNull TAdNativeInfo tAdNativeInfo, @NonNull ViewBinder viewBinder, String str) {
        if (!ul4.i()) {
            AdLogUtil.Log().e("TNativeAd", "you should init first");
            return;
        }
        a(tAdNativeInfo);
        if (this.q && tAdNativeInfo.isMatchVulgarBrand()) {
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
            nativeAdWrapper.getAdImpl().mBundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.q ? 1 : 0);
        }
        a aVarG = g();
        if (aVarG instanceof ynd) {
            ((ynd) aVarG).r0(tAdNativeInfo, this.h);
        }
        tAdNativeView.a(tAdNativeInfo, viewBinder);
        this.D.add(new WeakReference<>(tAdNativeView));
    }

    public final int c(int i) {
        return i == 6 ? Integer.MAX_VALUE : 1;
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
            if (this.m) {
                a(TAdErrorCode.ERROR_AD_REQUEST_TIME_OUT, 0);
                return new ArrayList();
            }
            CloudControlConfig.CodeSeat codeSeatA = zgd.a(this.a);
            setCodeSeatType(codeSeatA == null ? -1 : codeSeatA.getCodeSeatType().intValue());
            TAdErrorCode tAdErrorCodeB = b(codeSeatA);
            if (tAdErrorCodeB != null) {
                a(tAdErrorCodeB, 0);
                return new ArrayList();
            }
            a aVarG = g();
            if (aVarG != null && codeSeatA != null) {
                ArrayList arrayListQ0 = ((ynd) aVarG).q0(aVarG.V(), Math.max(1, Math.min(c(codeSeatA.getCodeSeatType().intValue()), codeSeatA.getAdRequestCount().intValue())), true, this.q);
                if (arrayListQ0 != null && !arrayListQ0.isEmpty()) {
                    a((TAdErrorCode) null, arrayListQ0.size());
                } else if (NetStateManager.checkNetworkState(false)) {
                    a(TAdErrorCode.ERROR_TRIGGER_SHOW_ONLINE_NO_AD, 0);
                } else {
                    a(TAdErrorCode.ERROR_RIGGER_SHOW_OFFLINE_NO_AD, 0);
                }
                return arrayListQ0;
            }
            return new ArrayList();
        } catch (Exception e) {
            AdLogUtil.Log().e("TNativeAd", Log.getStackTraceString(e));
            return new ArrayList();
        }
    }

    public int getNativeInfoSize() {
        try {
            CloudControlConfig.CodeSeat codeSeatA = zgd.a(this.a);
            if (codeSeatA == null) {
                return 0;
            }
            setCodeSeatType(codeSeatA.getCodeSeatType().intValue());
            a aVarG = g();
            if (aVarG == null) {
                return 0;
            }
            ArrayList arrayListQ0 = ((ynd) aVarG).q0(aVarG.V(), Math.max(1, Math.min(c(codeSeatA.getCodeSeatType().intValue()), codeSeatA.getAdRequestCount().intValue())), false, this.q);
            if (arrayListQ0 == null) {
                return 0;
            }
            return arrayListQ0.size();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public void setAdMobPosition(int i) {
        this.A = i;
    }

    public void setAdmobMediaAspectRatio(int i) {
        this.B = i;
    }

    public void setRecommendReqInfo(SSPWebPageReqInfo sSPWebPageReqInfo) {
        this.C = sSPWebPageReqInfo;
    }

    @Override
    public a a(CloudControlConfig.CodeSeat codeSeat) {
        vid vidVarD = d();
        vidVarD.b(this.A);
        vidVarD.i(this.B);
        vidVarD.d(this.C);
        return new ynd(codeSeat, vidVarD, this.h);
    }

    @Override
    public boolean c() {
        return true;
    }

    public final void a(TAdErrorCode tAdErrorCode, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("ad_number", i);
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.a);
        bundle.putLong(TrackingKey.TS, System.currentTimeMillis());
        if (tAdErrorCode != null) {
            bundle.putString("error_code", String.valueOf(tAdErrorCode.getErrorCode()));
        }
        TrackingManager.trackGetNativeInfo(bundle);
    }

    public void bindNativeView(@NonNull TAdNativeView tAdNativeView, @NonNull TAdNativeInfo tAdNativeInfo, @NonNull ViewBinder viewBinder) {
        bindNativeView(tAdNativeView, tAdNativeInfo, viewBinder, "");
    }
}
