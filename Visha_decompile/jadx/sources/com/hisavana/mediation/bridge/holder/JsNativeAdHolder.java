package com.hisavana.mediation.bridge.holder;

import com.hisavana.mediation.bridge.listener.BridgeListener;
import com.hisavana.mediation.bridge.listener.BridgeSspAdListener;
import defpackage.tca;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0011\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/hisavana/mediation/bridge/holder/JsNativeAdHolder;", "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;", "Ltca;", "ad", "", "callbackId", "codeSeatId", "", "adType", "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "bridgeListener", MethodDecl.initName, "(Ltca;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V", "Lzfb;", "loadAd", "()V", "showAd", "release", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsNativeAdHolder extends JsAdHolder<tca> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsNativeAdHolder(tca tcaVar, String str, String str2, int i, BridgeListener bridgeListener) {
        super(tcaVar, str, str2, i, bridgeListener);
        y45.j(tcaVar, "ad");
        y45.j(str, "callbackId");
        y45.j(str2, "codeSeatId");
        y45.j(bridgeListener, "bridgeListener");
        tcaVar.o(new BridgeSspAdListener(this));
    }

    @Override
    public void loadAd() {
        getAd().v();
    }

    @Override
    public void release() {
        super.release();
        getAd().b();
    }

    @Override
    public void showAd() {
    }
}
