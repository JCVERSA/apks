package ee;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.util.k0;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.OnSkipListener;
import com.hisavana.common.interfacz.TAdListener;
import com.hisavana.common.interfacz.TAdditionalListener;
import com.hisavana.common.interfacz.TInnerAdListener;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.CloudControlConfigSync;
import com.hisavana.mediation.config.ConfigContentHelper;

public class s extends TInnerAdListener {

    public fe.b f59658a;

    public TAdListener f59659b;

    public OnSkipListener f59660c;

    public TAdditionalListener f59661d;

    public int f59662e;

    public s(fe.b bVar) {
        this.f59658a = bVar;
    }

    public TAdditionalListener a() {
        return this.f59661d;
    }

    public void b(int i10) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> source --> " + i10);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onClosed(i10);
        }
    }

    public void c(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onLoadSuccess(additionalInfo);
        }
    }

    public void d(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + tAdErrorCode + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    public void e(TAdNativeInfo tAdNativeInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> NativeInfo -->" + tAdNativeInfo);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onClosed(tAdNativeInfo);
        }
    }

    public void f(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> NativeInfo -->" + tAdNativeInfo + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onClick(tAdNativeInfo, additionalInfo);
        }
    }

    public void g(OnSkipListener onSkipListener) {
        this.f59660c = onSkipListener;
    }

    public void h(TAdListener tAdListener) {
        this.f59659b = tAdListener;
    }

    public void i(TAdditionalListener tAdditionalListener) {
        this.f59661d = tAdditionalListener;
    }

    public final void j(String str) {
        CloudControlConfig.CodeSeat codeSeatB;
        fe.b bVar = this.f59658a;
        if (bVar == null || TextUtils.isEmpty(bVar.f60129a) || (codeSeatB = h.b(this.f59658a.f60129a, str, true)) == null) {
            return;
        }
        ConfigContentHelper.g().j(codeSeatB);
    }

    public TAdListener k() {
        return this.f59659b;
    }

    public void l(int i10) {
        this.f59662e = i10;
    }

    public void m(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onShowed(additionalInfo);
        }
    }

    public void n(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + tAdErrorCode + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onShowError(tAdErrorCode, additionalInfo);
        }
    }

    public void o(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> NativeInfo -->" + tAdNativeInfo + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onShow(tAdNativeInfo, additionalInfo);
        }
    }

    @Override
    public void onAdActivate(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> onAdActivate -->\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onAdActivate(additionalInfo);
        }
    }

    @Override
    public void onClicked(int i10) {
        AdLogUtil.Log().d("TAdListenerAdapter", "onClicked");
    }

    @Override
    public void onClosed(int i10) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on close");
        if (this.f59659b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onClosed()");
            this.f59659b.onClosed(i10);
        }
        fe.b bVar = this.f59658a;
        if (bVar != null) {
            bVar.setIsShowing(false);
        }
        b(i10);
    }

    @Override
    public void onError(TAdErrorCode tAdErrorCode) {
        if (this.f59658a == null) {
            return;
        }
        int errorCode = tAdErrorCode != null ? tAdErrorCode.getErrorCode() : -1;
        String errorMessage = tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : "";
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on alliance error: " + errorMessage);
        this.f59658a.stopTimer();
        this.f59658a.setLoading(false);
        this.f59658a.setLoaded(false);
        this.f59658a.trackingAdLoaded(errorCode, errorMessage, this.f59662e);
        TAdListener tAdListener = this.f59659b;
        if (tAdListener != null) {
            tAdListener.onError(tAdErrorCode);
        }
        this.f59658a.c(tAdErrorCode);
        if (errorCode == 20001) {
            CloudControlConfigSync.b(3);
        }
    }

    @Override
    public void onLoad() {
        fe.b bVar = this.f59658a;
        if (bVar != null) {
            bVar.setLoaded(true);
        }
        TAdListener tAdListener = this.f59659b;
        if (tAdListener != null) {
            tAdListener.onLoad();
        }
        fe.b bVar2 = this.f59658a;
        if (bVar2 != null) {
            bVar2.l();
            this.f59658a.q();
        }
    }

    @Override
    public void onNativeFeedClicked(int i10, TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on click");
        if (this.f59659b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onClicked()");
            if (tAdNativeInfo == null) {
                this.f59659b.onClicked(i10);
            } else {
                this.f59659b.onNativeFeedClicked(i10, tAdNativeInfo);
            }
        }
        f(tAdNativeInfo, additionalInfo);
    }

    @Override
    public void onNativeFeedShow(int i10, TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on show");
        t();
        if (this.f59659b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onShow()");
            if (tAdNativeInfo == null) {
                this.f59659b.onShow(i10);
            } else {
                this.f59659b.onNativeFeedShow(i10, tAdNativeInfo);
            }
        }
        fe.b bVar = this.f59658a;
        if (bVar != null) {
            bVar.setIsShowing(true);
        }
        o(tAdNativeInfo, additionalInfo);
    }

    @Override
    public void onRewarded() {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on rewarded");
        if (this.f59659b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onRewarded()");
            this.f59659b.onRewarded();
        }
        r();
    }

    @Override
    public void onShow(int i10) {
        AdLogUtil.Log().d("TAdListenerAdapter", "onShow");
    }

    @Override
    public void onShowError(TAdErrorCode tAdErrorCode) {
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TAdListenerAdapter --> on onAdShowError，errorCode");
        sb2.append(tAdErrorCode);
        adLogUtilLog.d(ComConstants.AD_FLOW, sb2.toString() != null ? tAdErrorCode.getErrorMessage() : "");
        if (this.f59659b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onAdShowError()");
            this.f59659b.onShowError(tAdErrorCode);
        }
        fe.b bVar = this.f59658a;
        if (bVar != null) {
            bVar.setIsShowing(false);
            this.f59658a.d(tAdErrorCode);
        }
    }

    @Override
    public void onShowed(AdditionalInfo additionalInfo) {
        j(additionalInfo.getCodeSeatId());
        m(additionalInfo);
    }

    @Override
    public void onSkipClick() {
        OnSkipListener onSkipListener = this.f59660c;
        if (onSkipListener != null) {
            onSkipListener.onClick();
        }
        fe.b bVar = this.f59658a;
        if (bVar != null) {
            bVar.setIsShowing(false);
        }
    }

    @Override
    public void onTimeReach() {
        OnSkipListener onSkipListener = this.f59660c;
        if (onSkipListener != null) {
            onSkipListener.onTimeReach();
        }
        fe.b bVar = this.f59658a;
        if (bVar != null) {
            bVar.setIsShowing(false);
        }
    }

    public void p() {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "*----> TAdListenerAdapter --> on alliance ad load");
        if (this.f59658a == null) {
            return;
        }
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "*----> TAdListenerAdapter --> >>> onLoad()");
        this.f59658a.stopTimer();
        this.f59658a.setLoading(false);
        fe.b bVar = this.f59658a;
        int i10 = this.f59662e;
        bVar.mFillSource = i10;
        bVar.trackingAdLoaded(0, "", i10);
        onLoad();
        CloudControlConfigSync.b(3);
    }

    public void q(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onTrigger(additionalInfo);
        }
    }

    public void r() {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> rewarded");
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onRewarded();
        }
    }

    public void s(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.f59661d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onTriggerShow(additionalInfo);
        }
    }

    public final void t() {
        fe.b bVar = this.f59658a;
        if (bVar == null || TextUtils.isEmpty(bVar.f60129a)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        CloudControlConfig.CodeSeat codeSeatA = h.a(this.f59658a.f60129a);
        if (codeSeatA == null) {
            return;
        }
        codeSeatA.setLastShowTime(jCurrentTimeMillis);
        long jC = k0.c(jCurrentTimeMillis);
        long jB = k0.b(jCurrentTimeMillis);
        if (codeSeatA.getCurrentHourZeroClock() == jB) {
            codeSeatA.setCurrentHourShowTimes(codeSeatA.getCurrentHourShowTimes() + 1);
        } else {
            codeSeatA.setCurrentHourShowTimes(1);
            codeSeatA.setCurrentHourZeroClock(jB);
        }
        if (codeSeatA.getTodayZeroClock() == jC) {
            codeSeatA.setTodayShowTimes(codeSeatA.getTodayShowTimes() + 1);
        } else {
            codeSeatA.setTodayShowTimes(1);
            codeSeatA.setTodayZeroClock(jC);
        }
        ConfigContentHelper.g().j(codeSeatA);
    }

    @Override
    public void onClosed(TAdNativeInfo tAdNativeInfo) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on close");
        if (this.f59659b != null) {
            com.cloud.sdk.commonutil.util.c.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onClosed()");
            this.f59659b.onClosed(tAdNativeInfo);
        }
        fe.b bVar = this.f59658a;
        if (bVar != null) {
            bVar.setIsShowing(false);
        }
        e(tAdNativeInfo);
    }
}
