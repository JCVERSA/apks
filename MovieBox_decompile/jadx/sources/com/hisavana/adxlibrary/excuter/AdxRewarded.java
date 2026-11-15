package com.hisavana.adxlibrary.excuter;

import android.app.Activity;
import android.content.Context;
import b7.d;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.hisavana.adxlibrary.excuter.AdxRewarded;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.b;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\nJ\u0019\u0010\u000e\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\nJ\u000f\u0010\u0016\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0012J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0017\u0010\u0012J\u000f\u0010\u0018\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006#"}, d2 = {"Lcom/hisavana/adxlibrary/excuter/AdxRewarded;", "Lcom/hisavana/common/base/BaseVideo;", "Landroid/content/Context;", "context", "Lcom/hisavana/common/bean/Network;", "network", "<init>", "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V", "", "initVideo", "()V", "onVideoStartLoad", "Landroid/app/Activity;", "activity", "onVideoShow", "(Landroid/app/Activity;)V", "", "isLoaded", "()Z", "isExpired", "canShow", "destroyAd", "isAdxAd", "isEwAd", "isInternalAd", "a", "Lcom/hisavana/common/bean/Network;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "tag", "Lb7/d;", "c", "Lb7/d;", b.PLACEMENT_TYPE_REWARDED, "ssp_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdxRewarded extends BaseVideo {

    public final Network network;

    public final String tag;

    public d rewarded;

    public static final class a extends com.cloud.hisavana.sdk.api.listener.d {
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
            d dVar = AdxRewarded.this.rewarded;
            double dE = dVar != null ? dVar.e() : 0.0d;
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

    public static final Unit a(AdxRewarded adxRewarded) {
        adxRewarded.onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
        AdLogUtil.Log().w(adxRewarded.tag, "rewarded ad or listener is null");
        return Unit.f64096a;
    }

    @Override
    public boolean canShow() {
        d dVar = this.rewarded;
        return dVar != null ? dVar.k() : super.canShow();
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        d dVar = this.rewarded;
        if (dVar != null) {
            dVar.c();
        }
        this.rewarded = null;
        AdLogUtil.Log().d(this.tag, PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    public void initVideo() {
        Network network = this.network;
        if (network != null) {
            String codeSeatId = network.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            d dVar = new d(codeSeatId);
            this.rewarded = dVar;
            dVar.r(d7.a.a().a());
            d dVar2 = this.rewarded;
            if (dVar2 != null) {
                dVar2.t(new a());
            }
        }
    }

    @Override
    public boolean isAdxAd() {
        d dVar = this.rewarded;
        return dVar != null && dVar.d() == 2;
    }

    @Override
    public boolean isEwAd() {
        d dVar = this.rewarded;
        return dVar != null && dVar.d() == 1;
    }

    @Override
    public boolean isExpired() {
        d dVar;
        return super.isExpired() || !((dVar = this.rewarded) == null || dVar.k());
    }

    @Override
    public boolean isInternalAd() {
        d dVar = this.rewarded;
        return dVar != null && dVar.h();
    }

    @Override
    public boolean isLoaded() {
        d dVar = this.rewarded;
        if (dVar != null) {
            return dVar.i();
        }
        return false;
    }

    @Override
    public void onVideoShow(Activity activity) {
        d7.a aVarG;
        Unit unit;
        d dVar = this.rewarded;
        if (dVar != null && (aVarG = dVar.g()) != null) {
            double d10 = this.secondPrice;
            if (d10 != 0.0d) {
                aVarG.h(d10);
                d dVar2 = this.rewarded;
                if (dVar2 != null) {
                    dVar2.r(aVarG);
                }
            }
            d dVar3 = this.rewarded;
            if (dVar3 != null) {
                dVar3.u();
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        new Function0() {
            @Override
            public final Object invoke() {
                return AdxRewarded.a(this.f15791a);
            }
        };
    }

    @Override
    public void onVideoStartLoad() {
        d7.a aVarG;
        d dVar = this.rewarded;
        if (dVar == null || dVar.i() || (aVarG = dVar.g()) == null) {
            return;
        }
        aVarG.k(this.requestType);
        aVarG.l("hisa-" + this.mTriggerId);
        aVarG.j("hisa-" + this.mRequestId);
        aVarG.i(getSupportHisavanaFlag() >= 2);
        dVar.r(aVarG);
        dVar.m(this.isContainVulgarContent);
        dVar.l(this.mGameName, this.mGameScene, this.mExtInfo);
        dVar.s();
    }
}
