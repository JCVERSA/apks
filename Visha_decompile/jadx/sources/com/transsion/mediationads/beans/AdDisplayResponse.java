package com.transsion.mediationads.beans;

import defpackage.i81;
import defpackage.y45;
import java.io.Serializable;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0013\u001a\u00020\u0014H\u0016J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0003JI\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00052\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010¨\u0006 "}, d2 = {"Lcom/transsion/mediationads/beans/AdDisplayResponse;", "Ljava/io/Serializable;", "displayStatus", "", "tabStrategyList", "", "Lcom/transsion/mediationads/beans/TabStrategy;", "splashList", "Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;", "ttStrategyList", "Lcom/transsion/mediationads/beans/TTStrategy;", MethodDecl.initName, "(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V", "getDisplayStatus", "()I", "getTabStrategyList", "()Ljava/util/List;", "getSplashList", "getTtStrategyList", "toString", "", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "Companion", "mediationads-api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdDisplayResponse implements Serializable {
    private static final long serialVersionUID = 1;
    private final int displayStatus;
    private final List<SplashInterstitialStrategy> splashList;
    private final List<TabStrategy> tabStrategyList;
    private final List<TTStrategy> ttStrategyList;

    public AdDisplayResponse(int i, List<TabStrategy> list, List<SplashInterstitialStrategy> list2, List<TTStrategy> list3) {
        this.displayStatus = i;
        this.tabStrategyList = list;
        this.splashList = list2;
        this.ttStrategyList = list3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AdDisplayResponse copy$default(AdDisplayResponse adDisplayResponse, int i, List list, List list2, List list3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = adDisplayResponse.displayStatus;
        }
        if ((i2 & 2) != 0) {
            list = adDisplayResponse.tabStrategyList;
        }
        if ((i2 & 4) != 0) {
            list2 = adDisplayResponse.splashList;
        }
        if ((i2 & 8) != 0) {
            list3 = adDisplayResponse.ttStrategyList;
        }
        return adDisplayResponse.copy(i, list, list2, list3);
    }

    public final int getDisplayStatus() {
        return this.displayStatus;
    }

    public final List<TabStrategy> component2() {
        return this.tabStrategyList;
    }

    public final List<SplashInterstitialStrategy> component3() {
        return this.splashList;
    }

    public final List<TTStrategy> component4() {
        return this.ttStrategyList;
    }

    public final AdDisplayResponse copy(int displayStatus, List<TabStrategy> tabStrategyList, List<SplashInterstitialStrategy> splashList, List<TTStrategy> ttStrategyList) {
        return new AdDisplayResponse(displayStatus, tabStrategyList, splashList, ttStrategyList);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdDisplayResponse)) {
            return false;
        }
        AdDisplayResponse adDisplayResponse = (AdDisplayResponse) other;
        return this.displayStatus == adDisplayResponse.displayStatus && y45.e(this.tabStrategyList, adDisplayResponse.tabStrategyList) && y45.e(this.splashList, adDisplayResponse.splashList) && y45.e(this.ttStrategyList, adDisplayResponse.ttStrategyList);
    }

    public final int getDisplayStatus() {
        return this.displayStatus;
    }

    public final List<SplashInterstitialStrategy> getSplashList() {
        return this.splashList;
    }

    public final List<TabStrategy> getTabStrategyList() {
        return this.tabStrategyList;
    }

    public final List<TTStrategy> getTtStrategyList() {
        return this.ttStrategyList;
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.displayStatus) * 31;
        List<TabStrategy> list = this.tabStrategyList;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<SplashInterstitialStrategy> list2 = this.splashList;
        int iHashCode3 = (iHashCode2 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<TTStrategy> list3 = this.ttStrategyList;
        return iHashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    public String toString() {
        String str;
        List<TabStrategy> list = this.tabStrategyList;
        String str2 = "null";
        if (list == null || list.isEmpty()) {
            str = "null";
        } else {
            str = "[" + i81.y0(this.tabStrategyList, ", ", null, null, 0, null, null, 62, null) + "]";
        }
        List<TTStrategy> list2 = this.ttStrategyList;
        if (list2 != null && !list2.isEmpty()) {
            str2 = "[" + i81.y0(this.ttStrategyList, ", ", null, null, 0, null, null, 62, null) + "]";
        }
        return "AdDisplayResponse(displayStatus=" + this.displayStatus + ", tabStrategyList=" + str + ",splashList=" + this.splashList + ",ttStrategyList=" + str2 + ")";
    }

    public AdDisplayResponse(int i, List list, List list2, List list3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : list, (i2 & 4) != 0 ? null : list2, (i2 & 8) != 0 ? null : list3);
    }
}
