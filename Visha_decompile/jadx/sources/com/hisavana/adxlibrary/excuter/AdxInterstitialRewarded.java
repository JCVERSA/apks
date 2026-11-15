package com.hisavana.adxlibrary.excuter;

import android.app.Activity;
import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.hisavana.common.base.BaseInterstitialRewardedVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.lzy.okgo.model.Progress;
import com.transsion.push.PushConstants;
import defpackage.n6;
import defpackage.sca;
import defpackage.w6;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\nJ\u0019\u0010\u000e\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0017\u0010\u0012J\u000f\u0010\u0018\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;", "Lcom/hisavana/common/base/BaseInterstitialRewardedVideo;", "Landroid/content/Context;", "context", "Lcom/hisavana/common/bean/Network;", "network", MethodDecl.initName, "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V", "Lzfb;", "initVideo", "()V", "onVideoStartLoad", "Landroid/app/Activity;", "activity", "onVideoShow", "(Landroid/app/Activity;)V", "", "isLoaded", "()Z", "isExpired", "canShow", "destroyAd", "isAdxAd", "isEwAd", "isInternalAd", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lcom/hisavana/common/bean/Network;", "", "b", "Ljava/lang/String;", Progress.TAG, "Lsca;", "c", "Lsca;", "rewarded", "ssp_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdxInterstitialRewarded extends BaseInterstitialRewardedVideo {

    public final Network network;

    public final String tag;

    public sca rewarded;

    public static final class a extends n6 {
        public a() {
        }

        @Override
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxInterstitialRewarded.this.adActivate(adActiveInfo);
        }

        @Override
        public void onAdClicked() {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onAdClicked");
            AdxInterstitialRewarded.this.adClicked(null);
        }

        @Override
        public void onAdClosed() {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onAdClosed");
            AdxInterstitialRewarded.this.adClosed();
        }

        @Override
        public void onAdLoaded() {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onAdLoaded");
            sca scaVar = AdxInterstitialRewarded.this.rewarded;
            double dE = scaVar != null ? scaVar.e() : 0.0d;
            if (dE > 0.0d) {
                AdxInterstitialRewarded.this.setEcpmPrice(dE);
            }
            AdxInterstitialRewarded.this.adLoaded();
        }

        @Override
        public void onAdShow() {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onAdShow");
            AdxInterstitialRewarded.this.adImpression(null);
        }

        @Override
        public void onError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onError : " + taErrorCode);
            if (taErrorCode != null) {
                AdxInterstitialRewarded.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
            } else {
                AdxInterstitialRewarded.this.adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
            }
        }

        @Override
        public void onRewarded() {
            AdLogUtil.Log().i(AdxInterstitialRewarded.this.tag, "onRewarded");
            AdxInterstitialRewarded.this.onReward();
        }
    }

    public AdxInterstitialRewarded(Context context, Network network) {
        super(context, network);
        this.network = network;
        this.tag = "AdxInterstitialRewarded";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5 */
    @Override
    public boolean canShow() {
        int iC;
        boolean zCanShow = false;
        try {
            sca scaVar = this.rewarded;
            if (scaVar != null) {
                iC = scaVar.c();
                if (iC == 0) {
                    this = iC;
                    zCanShow = true;
                    this = iC;
                }
            } else {
                zCanShow = super.canShow();
                this = this;
            }
            this = iC;
        } catch (Exception e) {
            AdLogUtil.Log().e(this.tag, "canShow failed: " + e.getMessage());
        }
        return zCanShow;
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        sca scaVar = this.rewarded;
        if (scaVar != null) {
            scaVar.b();
        }
        this.rewarded = null;
        AdLogUtil.Log().d(this.tag, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    public void initVideo() {
        try {
            Network network = this.network;
            if (network != null) {
                String codeSeatId = network.getCodeSeatId();
                y45.i(codeSeatId, "getCodeSeatId(...)");
                sca scaVar = new sca(codeSeatId);
                this.rewarded = scaVar;
                scaVar.q(w6.a().a());
                sca scaVar2 = this.rewarded;
                if (scaVar2 != null) {
                    scaVar2.t(new a());
                }
            }
        } catch (Exception e) {
            AdLogUtil.Log().e(this.tag, "initVideo failed: " + e.getMessage());
            adFailedToLoad(TAdErrorCode.ERROR_AD_SOURCE_INIT_FAILED);
        }
    }

    @Override
    public boolean isAdxAd() {
        sca scaVar = this.rewarded;
        return scaVar != null && scaVar.d() == 2;
    }

    @Override
    public boolean isEwAd() {
        sca scaVar = this.rewarded;
        return scaVar != null && scaVar.d() == 1;
    }

    @Override
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        try {
            sca scaVar = this.rewarded;
            int iC = scaVar != null ? scaVar.c() : 1115;
            setExpireReason(iC);
            return iC != 0;
        } catch (Exception e) {
            AdLogUtil.Log().e(this.tag, "isExpired failed: " + e.getMessage());
            setExpireReason(1115);
            return true;
        }
    }

    @Override
    public boolean isInternalAd() {
        sca scaVar = this.rewarded;
        return scaVar != null && scaVar.h();
    }

    @Override
    public boolean isLoaded() {
        sca scaVar = this.rewarded;
        if (scaVar != null) {
            return scaVar.i();
        }
        return false;
    }

    @Override
    public void onVideoShow(Activity activity) {
        w6 w6VarG;
        zfb zfbVar;
        sca scaVar = this.rewarded;
        if (scaVar != null && (w6VarG = scaVar.g()) != null) {
            double d = this.secondPrice;
            if (d != 0.0d) {
                w6VarG.h(d);
                sca scaVar2 = this.rewarded;
                if (scaVar2 != null) {
                    scaVar2.q(w6VarG);
                }
            }
            sca scaVar3 = this.rewarded;
            if (scaVar3 != null) {
                scaVar3.u();
                zfbVar = zfb.a;
            } else {
                zfbVar = null;
            }
            if (zfbVar != null) {
                return;
            }
        }
        onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
        AdLogUtil.Log().w(this.tag, "rewarded ad or listener is null");
    }

    @Override
    public void onVideoStartLoad() {
        w6 w6VarG;
        try {
            sca scaVar = this.rewarded;
            if (scaVar == null || scaVar.i() || (w6VarG = scaVar.g()) == null) {
                return;
            }
            w6VarG.k(this.requestType);
            w6VarG.l("hisa-" + this.mTriggerId);
            w6VarG.j("hisa-" + this.mRequestId);
            w6VarG.i(getSupportHisavanaFlag() >= 2);
            scaVar.q(w6VarG);
            scaVar.l(this.isContainVulgarContent);
            scaVar.k(this.mGameName, this.mGameScene, this.mExtInfo);
            scaVar.s();
        } catch (Exception e) {
            AdLogUtil.Log().e(this.tag, "onVideoStartLoad failed: " + e.getMessage());
            adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
        }
    }
}
