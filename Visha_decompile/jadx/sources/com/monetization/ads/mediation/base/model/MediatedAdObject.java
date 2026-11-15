package com.monetization.ads.mediation.base.model;

import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/monetization/ads/mediation/base/model/MediatedAdObject;", "", "ad", "info", "Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;", "(Ljava/lang/Object;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;)V", "getAd", "()Ljava/lang/Object;", "getInfo", "()Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MediatedAdObject {
    private final Object ad;
    private final MediatedAdObjectInfo info;

    public MediatedAdObject(Object obj, MediatedAdObjectInfo mediatedAdObjectInfo) {
        y45.j(obj, "ad");
        y45.j(mediatedAdObjectInfo, "info");
        this.ad = obj;
        this.info = mediatedAdObjectInfo;
    }

    public final Object getAd() {
        return this.ad;
    }

    public final MediatedAdObjectInfo getInfo() {
        return this.info;
    }
}
