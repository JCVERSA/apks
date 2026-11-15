package com.hisavana.mediation.bridge.holder;

import com.hisavana.mediation.ad.TRewardedAd;
import com.hisavana.mediation.bridge.listener.BridgeListener;
import defpackage.y45;
import defpackage.zk5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/hisavana/mediation/bridge/holder/JsRewardAdHolder;", "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "Lcom/hisavana/mediation/ad/TRewardedAd;", "ad", "", "callbackId", "codeSeatId", "", "adType", "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "bridgeListener", MethodDecl.initName, "(Lcom/hisavana/mediation/ad/TRewardedAd;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V", "Lzfb;", "loadAd", "()V", "showAd", "", "hasAd", "()Z", "release", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsRewardAdHolder extends JsAdHolder<TRewardedAd> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsRewardAdHolder(TRewardedAd tRewardedAd, String str, String str2, int i, BridgeListener bridgeListener) {
        super(tRewardedAd, str, str2, i, bridgeListener);
        y45.j(tRewardedAd, "ad");
        y45.j(str, "callbackId");
        y45.j(str2, "codeSeatId");
        y45.j(bridgeListener, "bridgeListener");
        tRewardedAd.setRequestBody(a());
    }

    @Override
    public boolean hasAd() {
        return getAd().hasAd();
    }

    @Override
    public void loadAd() {
        getAd().loadAd();
    }

    @Override
    public void release() {
        super.release();
        getAd().destroy();
    }

    @Override
    public void showAd() {
        getAd().show(zk5.h());
    }
}
