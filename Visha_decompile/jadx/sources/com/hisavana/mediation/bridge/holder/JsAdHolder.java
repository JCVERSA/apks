package com.hisavana.mediation.bridge.holder;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.mediation.bridge.listener.BridgeListener;
import com.hisavana.mediation.bridge.listener.BridgeMediationAdListener;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001c\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH&¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u000fJ\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0004¢\u0006\u0004\b\u0016\u0010\u0017J=\u0010 \u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001b2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001d¢\u0006\u0004\b \u0010!R\u0017\u0010\u0003\u001a\u00028\u00008\u0006¢\u0006\f\n\u0004\b\u0016\u0010\"\u001a\u0004\b#\u0010$R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b+\u0010&\u001a\u0004\b,\u0010(R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\"\u00107\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u0010\u0013\"\u0004\b8\u00109¨\u0006:"}, d2 = {"Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "", "T", "ad", "", "callbackId", "codeSeatId", "", "adType", "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "bridgeListener", MethodDecl.initName, "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V", "Lzfb;", "loadAd", "()V", "showAd", "", "hasAd", "()Z", "release", "Lcom/hisavana/common/bean/TAdRequestBody;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lcom/hisavana/common/bean/TAdRequestBody;", "eventType", "errorCode", "rewardStatus", "", "price", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adInfos", "handleAdEvent", "(IIIDLjava/util/List;)V", "Ljava/lang/Object;", "getAd", "()Ljava/lang/Object;", "b", "Ljava/lang/String;", "getCallbackId", "()Ljava/lang/String;", "setCallbackId", "(Ljava/lang/String;)V", "c", "getCodeSeatId", "d", "I", "getAdType", "()I", "e", "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "getBridgeListener", "()Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "f", "Z", "isRelease", "setRelease", "(Z)V", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class JsAdHolder<T> {

    public final T ad;

    public String callbackId;

    public final String codeSeatId;

    public final int adType;

    public final BridgeListener bridgeListener;

    public boolean isRelease;

    public JsAdHolder(T t, String str, String str2, int i, BridgeListener bridgeListener) {
        y45.j(t, "ad");
        y45.j(str, "callbackId");
        y45.j(str2, "codeSeatId");
        y45.j(bridgeListener, "bridgeListener");
        this.ad = t;
        this.callbackId = str;
        this.codeSeatId = str2;
        this.adType = i;
        this.bridgeListener = bridgeListener;
    }

    public final TAdRequestBody a() {
        return new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(new BridgeMediationAdListener(this)).build();
    }

    public final T getAd() {
        return this.ad;
    }

    public final int getAdType() {
        return this.adType;
    }

    public final BridgeListener getBridgeListener() {
        return this.bridgeListener;
    }

    public final String getCallbackId() {
        return this.callbackId;
    }

    public final String getCodeSeatId() {
        return this.codeSeatId;
    }

    public final void handleAdEvent(int eventType, int errorCode, int rewardStatus, double price, List<? extends AdsDTO> adInfos) {
        this.bridgeListener.callBackToJs(this.callbackId, eventType, this.codeSeatId, this.adType, errorCode, rewardStatus, price, adInfos);
    }

    public boolean hasAd() {
        return false;
    }

    public final boolean getIsRelease() {
        return this.isRelease;
    }

    public abstract void loadAd();

    public void release() {
        this.isRelease = true;
    }

    public final void setCallbackId(String str) {
        y45.j(str, "<set-?>");
        this.callbackId = str;
    }

    public final void setRelease(boolean z) {
        this.isRelease = z;
    }

    public abstract void showAd();
}
