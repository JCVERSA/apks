package com.transsion.mediationads.beans;

import defpackage.y45;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u0000 &2\u00020\u0001:\u0001&BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0018\u001a\u00020\nH\u0016J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\nHÆ\u0003JQ\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006'"}, d2 = {"Lcom/transsion/mediationads/beans/TabStrategy;", "Ljava/io/Serializable;", "tabType", "", "protectDays", "protectVideoCount", "startPosition", "videoIntervals", "maxAdvertisingCount", "advertisingId", "", MethodDecl.initName, "(IIIIIILjava/lang/String;)V", "getTabType", "()I", "getProtectDays", "getProtectVideoCount", "getStartPosition", "setStartPosition", "(I)V", "getVideoIntervals", "getMaxAdvertisingCount", "getAdvertisingId", "()Ljava/lang/String;", "toString", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "Companion", "mediationads-api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TabStrategy implements Serializable {
    public static final int TAB_TYPE_GRID = 2;
    public static final int TAB_TYPE_LIST = 1;
    public static final int TAB_TYPE_SECTION = 3;
    private final String advertisingId;
    private final int maxAdvertisingCount;
    private final int protectDays;
    private final int protectVideoCount;
    private int startPosition;
    private final int tabType;
    private final int videoIntervals;

    public TabStrategy(int i, int i2, int i3, int i4, int i5, int i6, String str) {
        this.tabType = i;
        this.protectDays = i2;
        this.protectVideoCount = i3;
        this.startPosition = i4;
        this.videoIntervals = i5;
        this.maxAdvertisingCount = i6;
        this.advertisingId = str;
    }

    public static TabStrategy copy$default(TabStrategy tabStrategy, int i, int i2, int i3, int i4, int i5, int i6, String str, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            i = tabStrategy.tabType;
        }
        if ((i7 & 2) != 0) {
            i2 = tabStrategy.protectDays;
        }
        int i8 = i2;
        if ((i7 & 4) != 0) {
            i3 = tabStrategy.protectVideoCount;
        }
        int i9 = i3;
        if ((i7 & 8) != 0) {
            i4 = tabStrategy.startPosition;
        }
        int i10 = i4;
        if ((i7 & 16) != 0) {
            i5 = tabStrategy.videoIntervals;
        }
        int i11 = i5;
        if ((i7 & 32) != 0) {
            i6 = tabStrategy.maxAdvertisingCount;
        }
        int i12 = i6;
        if ((i7 & 64) != 0) {
            str = tabStrategy.advertisingId;
        }
        return tabStrategy.copy(i, i8, i9, i10, i11, i12, str);
    }

    public final int getTabType() {
        return this.tabType;
    }

    public final int getProtectDays() {
        return this.protectDays;
    }

    public final int getProtectVideoCount() {
        return this.protectVideoCount;
    }

    public final int getStartPosition() {
        return this.startPosition;
    }

    public final int getVideoIntervals() {
        return this.videoIntervals;
    }

    public final int getMaxAdvertisingCount() {
        return this.maxAdvertisingCount;
    }

    public final String getAdvertisingId() {
        return this.advertisingId;
    }

    public final TabStrategy copy(int tabType, int protectDays, int protectVideoCount, int startPosition, int videoIntervals, int maxAdvertisingCount, String advertisingId) {
        return new TabStrategy(tabType, protectDays, protectVideoCount, startPosition, videoIntervals, maxAdvertisingCount, advertisingId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TabStrategy)) {
            return false;
        }
        TabStrategy tabStrategy = (TabStrategy) other;
        return this.tabType == tabStrategy.tabType && this.protectDays == tabStrategy.protectDays && this.protectVideoCount == tabStrategy.protectVideoCount && this.startPosition == tabStrategy.startPosition && this.videoIntervals == tabStrategy.videoIntervals && this.maxAdvertisingCount == tabStrategy.maxAdvertisingCount && y45.e(this.advertisingId, tabStrategy.advertisingId);
    }

    public final String getAdvertisingId() {
        return this.advertisingId;
    }

    public final int getMaxAdvertisingCount() {
        return this.maxAdvertisingCount;
    }

    public final int getProtectDays() {
        return this.protectDays;
    }

    public final int getProtectVideoCount() {
        return this.protectVideoCount;
    }

    public final int getStartPosition() {
        return this.startPosition;
    }

    public final int getTabType() {
        return this.tabType;
    }

    public final int getVideoIntervals() {
        return this.videoIntervals;
    }

    public int hashCode() {
        int iHashCode = ((((((((((Integer.hashCode(this.tabType) * 31) + Integer.hashCode(this.protectDays)) * 31) + Integer.hashCode(this.protectVideoCount)) * 31) + Integer.hashCode(this.startPosition)) * 31) + Integer.hashCode(this.videoIntervals)) * 31) + Integer.hashCode(this.maxAdvertisingCount)) * 31;
        String str = this.advertisingId;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setStartPosition(int i) {
        this.startPosition = i;
    }

    public String toString() {
        return "TabStrategy(tabType=" + this.tabType + ", protectDays=" + this.protectDays + ", protectVideoCount=" + this.protectVideoCount + ", startPosition=" + this.startPosition + ", videoIntervals=" + this.videoIntervals + ", maxAdvertisingCount=" + this.maxAdvertisingCount + ", advertisingId=" + this.advertisingId + ")";
    }
}
