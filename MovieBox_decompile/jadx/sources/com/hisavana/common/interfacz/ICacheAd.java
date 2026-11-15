package com.hisavana.common.interfacz;

import com.hisavana.common.bean.Network;

public interface ICacheAd {
    void destroyAd();

    void detachContext();

    int getAdSource();

    int getAdType();

    double getEcpmPrice();

    String getExt();

    String getFilterSource();

    String getMediatorSourceName();

    String getMediatorSourceUnitId();

    Network getNetwork();

    String getPlacementId();

    long getValidTimeLimit();

    boolean isAdxAd();

    boolean isEwAd();

    boolean isExpired();

    boolean isIconAd();

    boolean isInternalAd();

    boolean isMatchVulgarBrand();

    boolean isOfflineAd();

    void setAdSource(int i10);

    void setEcpmPrice(double d10);

    void setExt(String str);

    void setMaxPrice(double d10);

    void setPreload(boolean z10);

    void setRequestType(int i10);

    void setSecondPrice(double d10);

    void setTimeOut(boolean z10);
}
