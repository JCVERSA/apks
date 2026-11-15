package com.hisavana.common.interfacz;

import android.os.Bundle;
import com.hisavana.common.bean.TInnerAdRequestBody;

public interface Iad extends ICacheAd {
    void addRequestBody(TInnerAdRequestBody tInnerAdRequestBody);

    String getAdUnit();

    int getLoadStatus();

    long getRequestTime();

    WrapTAdAllianceListener getTAdAllianceListener();

    boolean isSupportRtBidding();

    void loadAd();

    void setAdUnit(String str);

    void setLoadStatus(int i10);

    void setOfflineAd(boolean z10);

    void setRequestRound(int i10);

    void setRequestTime(long j10);

    void setSupportFlag(int i10);

    void setTrackingBundle(Bundle bundle);

    void stopLoader();
}
