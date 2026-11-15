package com.hisavana.mediation.bridge.holder;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.google.gson.reflect.TypeToken;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.ad.TBannerView;
import com.hisavana.mediation.ad.TInterstitialAd;
import com.hisavana.mediation.ad.TRewardedAd;
import com.hisavana.mediation.bridge.listener.BridgeListener;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.tca;
import defpackage.ul4;
import defpackage.y45;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005JO\u0010\u000f\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0001\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\f\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u001b\u001a\n \u0018*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;", "", "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "bridgeListener", MethodDecl.initName, "(Lcom/hisavana/mediation/bridge/listener/BridgeListener;)V", "", "callbackId", "codeSeatId", "", "adType", "extInfo", "adCount", "bannerWidth", "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "createAdHolder", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "Lzfb;", "release", "()V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "getBridgeListener", "()Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "kotlin.jvm.PlatformType", "b", "Ljava/lang/String;", AbstractID3v1Tag.TAG, "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;", "c", "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;", "jsBannerAdHolder", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsAdHolderHandler {

    public final BridgeListener bridgeListener;

    public final String TAG;

    public JsBannerAdHolder jsBannerAdHolder;

    public JsAdHolderHandler(BridgeListener bridgeListener) {
        y45.j(bridgeListener, "bridgeListener");
        this.bridgeListener = bridgeListener;
        this.TAG = JsAdHolderHandler.class.getSimpleName();
    }

    public static JsAdHolder createAdHolder$default(JsAdHolderHandler jsAdHolderHandler, String str, String str2, int i, String str3, int i2, int i3, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            str3 = null;
        }
        String str4 = str3;
        if ((i4 & 16) != 0) {
            i2 = 1;
        }
        int i5 = i2;
        if ((i4 & 32) != 0) {
            i3 = 0;
        }
        return jsAdHolderHandler.createAdHolder(str, str2, i, str4, i5, i3);
    }

    public final JsAdHolder<? extends Object> createAdHolder(String callbackId, String codeSeatId, int adType, String extInfo, int adCount, int bannerWidth) {
        String string;
        String str;
        String string2;
        TBannerView ad;
        TBannerView ad2;
        y45.j(callbackId, "callbackId");
        y45.j(codeSeatId, "codeSeatId");
        String str2 = "";
        if (extInfo != null) {
            try {
                Object objB = GsonUtil.b(extInfo, new TypeToken<Map<String, ? extends Object>>() {
                }.getType());
                y45.i(objB, "fromJson(...)");
                Map map = (Map) objB;
                Object obj = map.get(JsAdHolderHandlerKt.GAME_NAME);
                if (obj == null || (string = obj.toString()) == null) {
                    string = "";
                }
                try {
                    Object obj2 = map.get(JsAdHolderHandlerKt.GAME_SCENE);
                    if (obj2 != null && (string2 = obj2.toString()) != null) {
                        str2 = string2;
                    }
                } catch (Throwable th) {
                    th = th;
                    AdLogUtil.Log().e(this.TAG, "createAdHolder error: " + th);
                }
            } catch (Throwable th2) {
                th = th2;
                string = "";
            }
            str = str2;
            str2 = string;
        } else {
            str = "";
        }
        if (adType != 1) {
            if (adType == 2) {
                JsBannerAdHolder jsBannerAdHolder = this.jsBannerAdHolder;
                if (jsBannerAdHolder != null && jsBannerAdHolder.getIsRelease()) {
                    this.jsBannerAdHolder = null;
                }
                JsBannerAdHolder jsBannerAdHolder2 = this.jsBannerAdHolder;
                if (jsBannerAdHolder2 == null) {
                    TBannerView tBannerView = new TBannerView(ul4.a());
                    tBannerView.setAdUnitId(codeSeatId);
                    tBannerView.setAdSize(0);
                    tBannerView.setCustomSizeForYandexAndLiftoff(bannerWidth, 50);
                    tBannerView.setAdLoadScenes(str2, str, null);
                    this.jsBannerAdHolder = new JsBannerAdHolder(tBannerView, callbackId, codeSeatId, adType, this.bridgeListener);
                } else {
                    jsBannerAdHolder2.setCallbackId(callbackId);
                    JsBannerAdHolder jsBannerAdHolder3 = this.jsBannerAdHolder;
                    if (jsBannerAdHolder3 != null && (ad2 = jsBannerAdHolder3.getAd()) != null) {
                        ad2.setAdUnitId(codeSeatId);
                    }
                    JsBannerAdHolder jsBannerAdHolder4 = this.jsBannerAdHolder;
                    if (jsBannerAdHolder4 != null && (ad = jsBannerAdHolder4.getAd()) != null) {
                        ad.setAdLoadScenes(str2, str, null);
                    }
                }
                return this.jsBannerAdHolder;
            }
            if (adType == 3) {
                TInterstitialAd tInterstitialAd = new TInterstitialAd(ul4.a(), codeSeatId);
                tInterstitialAd.setAdLoadScenes(str2, str, null);
                return new JsInterstitialAdHolder(tInterstitialAd, callbackId, codeSeatId, adType, this.bridgeListener);
            }
            if (adType == 5) {
                TRewardedAd tRewardedAd = new TRewardedAd(ul4.a(), codeSeatId);
                tRewardedAd.setAdLoadScenes(str2, str, null);
                return new JsRewardAdHolder(tRewardedAd, callbackId, codeSeatId, adType, this.bridgeListener);
            }
            if (adType != 6) {
                AdLogUtil.Log().w(this.TAG, "Splash Ad is not supported in Mediation SDK");
                return null;
            }
        }
        tca tcaVar = new tca(codeSeatId);
        tcaVar.A(adType == 6);
        tcaVar.z(adCount);
        tcaVar.k(str2, str, null);
        return new JsNativeAdHolder(tcaVar, callbackId, codeSeatId, adType, this.bridgeListener);
    }

    public final BridgeListener getBridgeListener() {
        return this.bridgeListener;
    }

    public final void release() {
        JsBannerAdHolder jsBannerAdHolder = this.jsBannerAdHolder;
        if (jsBannerAdHolder != null) {
            jsBannerAdHolder.release();
        }
    }
}
