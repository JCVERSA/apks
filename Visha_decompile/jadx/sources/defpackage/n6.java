package defpackage;

import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import java.util.List;

public abstract class n6 {
    public void onAdActivate(AdActiveInfo adActiveInfo) {
    }

    public void onAdClicked() {
    }

    public void onAdClosed() {
    }

    public void onAdLoaded() {
    }

    public void onAdShow() {
    }

    public void onAdShowError(TaErrorCode taErrorCode) {
    }

    public void onBiddingFailed(TaErrorCode taErrorCode) {
    }

    public void onBiddingSuccess(BidInfo bidInfo) {
    }

    public void onError(TaErrorCode taErrorCode) {
    }

    public void onNativeAdClick(TaNativeInfo taNativeInfo) {
    }

    public void onNativeAdShow(TaNativeInfo taNativeInfo) {
    }

    public void onRewarded() {
    }

    public void onTimeOut() {
    }

    public void onAdClosed(TBannerView tBannerView) {
    }

    public void onAdLoaded(List list) {
    }

    public void onAdClosed(TaNativeInfo taNativeInfo) {
    }
}
