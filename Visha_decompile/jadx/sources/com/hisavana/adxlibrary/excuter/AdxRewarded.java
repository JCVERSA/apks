package com.hisavana.adxlibrary.excuter;

import android.app.Activity;
import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.lzy.okgo.model.Progress;
import com.transsion.push.PushConstants;
import defpackage.n6;
import defpackage.vca;
import defpackage.w6;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\nJ\u0019\u0010\u000e\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0017\u0010\u0012J\u000f\u0010\u0018\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/hisavana/adxlibrary/excuter/AdxRewarded;", "Lcom/hisavana/common/base/BaseVideo;", "Landroid/content/Context;", "context", "Lcom/hisavana/common/bean/Network;", "network", MethodDecl.initName, "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V", "Lzfb;", "initVideo", "()V", "onVideoStartLoad", "Landroid/app/Activity;", "activity", "onVideoShow", "(Landroid/app/Activity;)V", "", "isLoaded", "()Z", "isExpired", "canShow", "destroyAd", "isAdxAd", "isEwAd", "isInternalAd", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lcom/hisavana/common/bean/Network;", "", "b", "Ljava/lang/String;", Progress.TAG, "Lvca;", "c", "Lvca;", "rewarded", "ssp_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdxRewarded extends BaseVideo {

    public final Network network;

    public final String tag;

    public vca rewarded;

    public static final class a extends n6 {
        public a() {
        }

        @Override
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxRewarded.this.adActivate(adActiveInfo);
        }

        @Override
        public void onAdClicked() {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onAdClicked");
            AdxRewarded.this.adClicked(null);
        }

        @Override
        public void onAdClosed() {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onAdClosed");
            AdxRewarded.this.adClosed();
        }

        @Override
        public void onAdLoaded() {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onAdLoaded");
            vca vcaVar = AdxRewarded.this.rewarded;
            double dE = vcaVar != null ? vcaVar.e() : 0.0d;
            if (dE > 0.0d) {
                AdxRewarded.this.setEcpmPrice(dE);
            }
            AdxRewarded.this.adLoaded();
        }

        @Override
        public void onAdShow() {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onAdShow");
            AdxRewarded.this.adImpression(null);
        }

        @Override
        public void onError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onError : " + taErrorCode);
            if (taErrorCode != null) {
                AdxRewarded.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
            }
        }

        @Override
        public void onRewarded() {
            AdLogUtil.Log().i(AdxRewarded.this.tag, "onRewarded");
            AdxRewarded.this.onReward();
        }
    }

    public AdxRewarded(Context context, Network network) {
        super(context, network);
        this.network = network;
        this.tag = "AdxRewarded";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5 */
    @Override
    public boolean canShow() {
        int iC;
        boolean zCanShow = false;
        try {
            vca vcaVar = this.rewarded;
            if (vcaVar != null) {
                iC = vcaVar.c();
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
        vca vcaVar = this.rewarded;
        if (vcaVar != null) {
            vcaVar.b();
        }
        this.rewarded = null;
        AdLogUtil.Log().d(this.tag, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    public void initVideo() {
        Network network = this.network;
        if (network != null) {
            String codeSeatId = network.getCodeSeatId();
            y45.i(codeSeatId, "getCodeSeatId(...)");
            vca vcaVar = new vca(codeSeatId);
            this.rewarded = vcaVar;
            vcaVar.q(w6.a().a());
            vca vcaVar2 = this.rewarded;
            if (vcaVar2 != null) {
                vcaVar2.t(new a());
            }
        }
    }

    @Override
    public boolean isAdxAd() {
        vca vcaVar = this.rewarded;
        return vcaVar != null && vcaVar.d() == 2;
    }

    @Override
    public boolean isEwAd() {
        vca vcaVar = this.rewarded;
        return vcaVar != null && vcaVar.d() == 1;
    }

    @Override
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        try {
            vca vcaVar = this.rewarded;
            int iC = vcaVar != null ? vcaVar.c() : 1115;
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
        vca vcaVar = this.rewarded;
        return vcaVar != null && vcaVar.h();
    }

    @Override
    public boolean isLoaded() {
        vca vcaVar = this.rewarded;
        if (vcaVar != null) {
            return vcaVar.i();
        }
        return false;
    }

    @Override
    public void onVideoShow(Activity activity) {
        w6 w6VarG;
        zfb zfbVar;
        vca vcaVar = this.rewarded;
        if (vcaVar != null && (w6VarG = vcaVar.g()) != null) {
            double d = this.secondPrice;
            if (d != 0.0d) {
                w6VarG.h(d);
                vca vcaVar2 = this.rewarded;
                if (vcaVar2 != null) {
                    vcaVar2.q(w6VarG);
                }
            }
            vca vcaVar3 = this.rewarded;
            if (vcaVar3 != null) {
                vcaVar3.u();
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
        vca vcaVar = this.rewarded;
        if (vcaVar == null || vcaVar.i() || (w6VarG = vcaVar.g()) == null) {
            return;
        }
        w6VarG.k(this.requestType);
        w6VarG.l("hisa-" + this.mTriggerId);
        w6VarG.j("hisa-" + this.mRequestId);
        w6VarG.i(getSupportHisavanaFlag() >= 2);
        vcaVar.q(w6VarG);
        vcaVar.l(this.isContainVulgarContent);
        vcaVar.k(this.mGameName, this.mGameScene, this.mExtInfo);
        vcaVar.s();
    }
}
