package com.monetization.ads.mediation.base.prefetch.model;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J$\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0004J\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0004R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0013\u001a\u0004\b\u0016\u0010\u0004¨\u0006\u0019"}, d2 = {"Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;", "", "", "component1", "()Ljava/lang/String;", "component2", "networkName", "networkAdUnit", "copy", "(Ljava/lang/String;Ljava/lang/String;)Lcom/monetization/ads/mediation/base/prefetch/model/MediatedPrefetchNetworkWinner;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "getNetworkName", "b", "getNetworkAdUnit", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class MediatedPrefetchNetworkWinner {

    private final String networkName;

    private final String networkAdUnit;

    public MediatedPrefetchNetworkWinner(String str, String str2) {
        y45.j(str, "networkName");
        y45.j(str2, "networkAdUnit");
        this.networkName = str;
        this.networkAdUnit = str2;
    }

    public static MediatedPrefetchNetworkWinner copy$default(MediatedPrefetchNetworkWinner mediatedPrefetchNetworkWinner, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = mediatedPrefetchNetworkWinner.networkName;
        }
        if ((i & 2) != 0) {
            str2 = mediatedPrefetchNetworkWinner.networkAdUnit;
        }
        return mediatedPrefetchNetworkWinner.copy(str, str2);
    }

    public final String getNetworkName() {
        return this.networkName;
    }

    public final String getNetworkAdUnit() {
        return this.networkAdUnit;
    }

    public final MediatedPrefetchNetworkWinner copy(String networkName, String networkAdUnit) {
        y45.j(networkName, "networkName");
        y45.j(networkAdUnit, "networkAdUnit");
        return new MediatedPrefetchNetworkWinner(networkName, networkAdUnit);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MediatedPrefetchNetworkWinner)) {
            return false;
        }
        MediatedPrefetchNetworkWinner mediatedPrefetchNetworkWinner = (MediatedPrefetchNetworkWinner) other;
        return y45.e(this.networkName, mediatedPrefetchNetworkWinner.networkName) && y45.e(this.networkAdUnit, mediatedPrefetchNetworkWinner.networkAdUnit);
    }

    public final String getNetworkAdUnit() {
        return this.networkAdUnit;
    }

    public final String getNetworkName() {
        return this.networkName;
    }

    public int hashCode() {
        return this.networkAdUnit.hashCode() + (this.networkName.hashCode() * 31);
    }

    public String toString() {
        return "MediatedPrefetchNetworkWinner(networkName=" + this.networkName + ", networkAdUnit=" + this.networkAdUnit + ")";
    }
}
