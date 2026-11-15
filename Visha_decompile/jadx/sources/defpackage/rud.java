package defpackage;

import android.text.TextUtils;
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

public class rud extends TInnerAdListener {
    public pca a;
    public TAdListener b;
    public OnSkipListener c;
    public TAdditionalListener d;
    public int e;

    public rud(pca pcaVar) {
        this.a = pcaVar;
    }

    public void a(OnSkipListener onSkipListener) {
        this.c = onSkipListener;
    }

    public void b(int i) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> source --> " + i);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onClosed(i);
        }
    }

    public void c(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onLoadSuccess(additionalInfo);
        }
    }

    public void d(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + tAdErrorCode + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    public void e(TAdNativeInfo tAdNativeInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> NativeInfo -->" + tAdNativeInfo);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onClosed(tAdNativeInfo);
        }
    }

    public void f(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> NativeInfo -->" + tAdNativeInfo + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onClick(tAdNativeInfo, additionalInfo);
        }
    }

    public void g(TAdListener tAdListener) {
        this.b = tAdListener;
    }

    public void h(TAdditionalListener tAdditionalListener) {
        this.d = tAdditionalListener;
    }

    public final void i(String str) {
        CloudControlConfig.CodeSeat codeSeatB;
        pca pcaVar = this.a;
        if (pcaVar == null || TextUtils.isEmpty(pcaVar.a) || (codeSeatB = zgd.b(this.a.a, str, true)) == null) {
            return;
        }
        ConfigContentHelper.g().j(codeSeatB);
    }

    public TAdListener j() {
        return this.b;
    }

    public void k(int i) {
        this.e = i;
    }

    public void l(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onShowed(additionalInfo);
        }
    }

    public void m(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + tAdErrorCode + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onShowError(tAdErrorCode, additionalInfo);
        }
    }

    public void n(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> NativeInfo -->" + tAdNativeInfo + "\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onShow(tAdNativeInfo, additionalInfo);
        }
    }

    public void o() {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "*----> TAdListenerAdapter --> on alliance ad load");
        if (this.a == null) {
            return;
        }
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "*----> TAdListenerAdapter --> >>> onLoad()");
        this.a.stopTimer();
        this.a.setLoading(false);
        pca pcaVar = this.a;
        int i = this.e;
        pcaVar.mFillSource = i;
        pcaVar.trackingAdLoaded(0, "", i);
        onLoad();
        CloudControlConfigSync.b(3);
    }

    @Override
    public void onAdActivate(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> onAdActivate -->\n>>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onAdActivate(additionalInfo);
        }
    }

    @Override
    public void onClicked(int i) {
        AdLogUtil.Log().d("TAdListenerAdapter", "onClicked");
    }

    @Override
    public void onClosed(int i) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on close");
        if (this.b != null) {
            ja1.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onClosed()");
            this.b.onClosed(i);
        }
        pca pcaVar = this.a;
        if (pcaVar != null) {
            pcaVar.setIsShowing(false);
        }
        b(i);
    }

    @Override
    public void onError(TAdErrorCode tAdErrorCode) {
        if (this.a == null) {
            return;
        }
        int errorCode = tAdErrorCode != null ? tAdErrorCode.getErrorCode() : -1;
        String errorMessage = tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : "";
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on alliance error: " + errorMessage);
        this.a.stopTimer();
        this.a.setLoading(false);
        this.a.setLoaded(false);
        this.a.trackingAdLoaded(errorCode, errorMessage, this.e);
        TAdListener tAdListener = this.b;
        if (tAdListener != null) {
            tAdListener.onError(tAdErrorCode);
        }
        this.a.c(tAdErrorCode);
        if (errorCode == 20001) {
            CloudControlConfigSync.b(3);
        }
    }

    @Override
    public void onLoad() {
        pca pcaVar = this.a;
        if (pcaVar != null) {
            pcaVar.setLoaded(true);
        }
        TAdListener tAdListener = this.b;
        if (tAdListener != null) {
            tAdListener.onLoad();
        }
        pca pcaVar2 = this.a;
        if (pcaVar2 != null) {
            pcaVar2.l();
            this.a.q();
        }
    }

    @Override
    public void onNativeFeedClicked(int i, TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on click");
        if (this.b != null) {
            ja1.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onClicked()");
            if (tAdNativeInfo == null) {
                this.b.onClicked(i);
            } else {
                this.b.onNativeFeedClicked(i, tAdNativeInfo);
            }
        }
        f(tAdNativeInfo, additionalInfo);
    }

    @Override
    public void onNativeFeedShow(int i, TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on show");
        s();
        if (this.b != null) {
            ja1.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onShow()");
            if (tAdNativeInfo == null) {
                this.b.onShow(i);
            } else {
                this.b.onNativeFeedShow(i, tAdNativeInfo);
            }
        }
        pca pcaVar = this.a;
        if (pcaVar != null) {
            pcaVar.setIsShowing(true);
        }
        n(tAdNativeInfo, additionalInfo);
    }

    @Override
    public void onRewarded() {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on rewarded");
        if (this.b != null) {
            ja1.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onRewarded()");
            this.b.onRewarded();
        }
        q();
    }

    @Override
    public void onShow(int i) {
        AdLogUtil.Log().d("TAdListenerAdapter", "onShow");
    }

    @Override
    public void onShowError(TAdErrorCode tAdErrorCode) {
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb = new StringBuilder();
        sb.append("TAdListenerAdapter --> on onAdShowError，errorCode");
        sb.append(tAdErrorCode);
        adLogUtilLog.d(ComConstants.AD_FLOW, sb.toString() != null ? tAdErrorCode.getErrorMessage() : "");
        if (this.b != null) {
            ja1.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onAdShowError()");
            this.b.onShowError(tAdErrorCode);
        }
        pca pcaVar = this.a;
        if (pcaVar != null) {
            pcaVar.setIsShowing(false);
            this.a.d(tAdErrorCode);
        }
    }

    @Override
    public void onShowed(AdditionalInfo additionalInfo) {
        i(additionalInfo.getCodeSeatId());
        l(additionalInfo);
    }

    @Override
    public void onSkipClick() {
        OnSkipListener onSkipListener = this.c;
        if (onSkipListener != null) {
            onSkipListener.onClick();
        }
        pca pcaVar = this.a;
        if (pcaVar != null) {
            pcaVar.setIsShowing(false);
        }
    }

    @Override
    public void onTimeReach() {
        OnSkipListener onSkipListener = this.c;
        if (onSkipListener != null) {
            onSkipListener.onTimeReach();
        }
        pca pcaVar = this.a;
        if (pcaVar != null) {
            pcaVar.setIsShowing(false);
        }
    }

    public void p(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onTrigger(additionalInfo);
        }
    }

    public void q() {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> rewarded");
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onRewarded();
        }
    }

    public void r(AdditionalInfo additionalInfo) {
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> " + additionalInfo);
        TAdditionalListener tAdditionalListener = this.d;
        if (tAdditionalListener != null) {
            tAdditionalListener.onTriggerShow(additionalInfo);
        }
    }

    public final void s() {
        pca pcaVar = this.a;
        if (pcaVar == null || TextUtils.isEmpty(pcaVar.a)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        CloudControlConfig.CodeSeat codeSeatA = zgd.a(this.a.a);
        if (codeSeatA == null) {
            return;
        }
        codeSeatA.setLastShowTime(jCurrentTimeMillis);
        long jC = una.c(jCurrentTimeMillis);
        long jB = una.b(jCurrentTimeMillis);
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

    public TAdditionalListener a() {
        return this.d;
    }

    @Override
    public void onClosed(TAdNativeInfo tAdNativeInfo) {
        AdLogUtil.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> on close");
        if (this.b != null) {
            ja1.Log().d(ComConstants.AD_FLOW, "TAdListenerAdapter --> >>> onClosed()");
            this.b.onClosed(tAdNativeInfo);
        }
        pca pcaVar = this.a;
        if (pcaVar != null) {
            pcaVar.setIsShowing(false);
        }
        e(tAdNativeInfo);
    }
}
