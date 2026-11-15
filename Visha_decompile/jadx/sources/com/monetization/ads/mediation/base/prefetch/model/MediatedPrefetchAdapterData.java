package com.monetization.ads.mediation.base.prefetch.model;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ.\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0010\u0010\nJ\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u0004R\u0017\u0010\f\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0007R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010\n¨\u0006#"}, d2 = {"Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchAdapterData;", "", "Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;", "component1", "()Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;", "Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchRevenue;", "component2", "()Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchRevenue;", "", "component3", "()Ljava/lang/String;", "networkWinner", "revenue", "networkAdInfo", "copy", "(Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchRevenue;Ljava/lang/String;)Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchAdapterData;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;", "getNetworkWinner", "b", "Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchRevenue;", "getRevenue", "c", "Ljava/lang/String;", "getNetworkAdInfo", MethodDecl.initName, "(Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchRevenue;Ljava/lang/String;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class MediatedPrefetchAdapterData {

    private final MediatedPrefetchNetworkWinner networkWinner;

    private final MediatedPrefetchRevenue revenue;

    private final String networkAdInfo;

    public MediatedPrefetchAdapterData(MediatedPrefetchNetworkWinner mediatedPrefetchNetworkWinner, MediatedPrefetchRevenue mediatedPrefetchRevenue, String str) {
        y45.j(mediatedPrefetchNetworkWinner, "networkWinner");
        y45.j(mediatedPrefetchRevenue, "revenue");
        y45.j(str, "networkAdInfo");
        this.networkWinner = mediatedPrefetchNetworkWinner;
        this.revenue = mediatedPrefetchRevenue;
        this.networkAdInfo = str;
    }

    public static MediatedPrefetchAdapterData copy$default(MediatedPrefetchAdapterData mediatedPrefetchAdapterData, MediatedPrefetchNetworkWinner mediatedPrefetchNetworkWinner, MediatedPrefetchRevenue mediatedPrefetchRevenue, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            mediatedPrefetchNetworkWinner = mediatedPrefetchAdapterData.networkWinner;
        }
        if ((i & 2) != 0) {
            mediatedPrefetchRevenue = mediatedPrefetchAdapterData.revenue;
        }
        if ((i & 4) != 0) {
            str = mediatedPrefetchAdapterData.networkAdInfo;
        }
        return mediatedPrefetchAdapterData.copy(mediatedPrefetchNetworkWinner, mediatedPrefetchRevenue, str);
    }

    public final MediatedPrefetchNetworkWinner getNetworkWinner() {
        return this.networkWinner;
    }

    public final MediatedPrefetchRevenue getRevenue() {
        return this.revenue;
    }

    public final String getNetworkAdInfo() {
        return this.networkAdInfo;
    }

    public final MediatedPrefetchAdapterData copy(MediatedPrefetchNetworkWinner networkWinner, MediatedPrefetchRevenue revenue, String networkAdInfo) {
        y45.j(networkWinner, "networkWinner");
        y45.j(revenue, "revenue");
        y45.j(networkAdInfo, "networkAdInfo");
        return new MediatedPrefetchAdapterData(networkWinner, revenue, networkAdInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MediatedPrefetchAdapterData)) {
            return false;
        }
        MediatedPrefetchAdapterData mediatedPrefetchAdapterData = (MediatedPrefetchAdapterData) other;
        return y45.e(this.networkWinner, mediatedPrefetchAdapterData.networkWinner) && y45.e(this.revenue, mediatedPrefetchAdapterData.revenue) && y45.e(this.networkAdInfo, mediatedPrefetchAdapterData.networkAdInfo);
    }

    public final String getNetworkAdInfo() {
        return this.networkAdInfo;
    }

    public final MediatedPrefetchNetworkWinner getNetworkWinner() {
        return this.networkWinner;
    }

    public final MediatedPrefetchRevenue getRevenue() {
        return this.revenue;
    }

    public int hashCode() {
        return this.networkAdInfo.hashCode() + ((this.revenue.hashCode() + (this.networkWinner.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "MediatedPrefetchAdapterData(networkWinner=" + this.networkWinner + ", revenue=" + this.revenue + ", networkAdInfo=" + this.networkAdInfo + ")";
    }
}
