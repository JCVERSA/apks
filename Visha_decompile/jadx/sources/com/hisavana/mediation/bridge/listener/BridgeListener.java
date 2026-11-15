package com.hisavana.mediation.bridge.listener;

import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.hisavana.mediation.bridge.holder.JsBannerAdHolder;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001JW\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH&¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H&¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "", "", "callbackId", "", "eventType", "codeSeatId", "adType", "errorCode", "rewardStatus", "", "price", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adInfo", "Lzfb;", "callBackToJs", "(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;)V", "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;", "jsBannerAdHolder", "showBanner", "(Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface BridgeListener {
    void callBackToJs(String callbackId, int eventType, String codeSeatId, int adType, int errorCode, int rewardStatus, double price, List<? extends AdsDTO> adInfo);

    void showBanner(JsBannerAdHolder jsBannerAdHolder);
}
