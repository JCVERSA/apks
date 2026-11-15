package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J3\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u00052\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\t\u0010!\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\""}, d2 = {"Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "index", "", "showRedDot", "", "unreadIcon", "", "showUnreadIcon", "(IZLjava/lang/String;Z)V", "getIndex", "()I", "setIndex", "(I)V", "getShowRedDot", "()Z", "setShowRedDot", "(Z)V", "getShowUnreadIcon", "setShowUnreadIcon", "getUnreadIcon", "()Ljava/lang/String;", "setUnreadIcon", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TabBarRedDotMessage extends BaseBean {
    private int index;
    private boolean showRedDot;
    private boolean showUnreadIcon;
    private String unreadIcon;

    public TabBarRedDotMessage() {
        this(0, false, null, false, 15, null);
    }

    public static TabBarRedDotMessage copy$default(TabBarRedDotMessage tabBarRedDotMessage, int i10, boolean z10, String str, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = tabBarRedDotMessage.index;
        }
        if ((i11 & 2) != 0) {
            z10 = tabBarRedDotMessage.showRedDot;
        }
        if ((i11 & 4) != 0) {
            str = tabBarRedDotMessage.unreadIcon;
        }
        if ((i11 & 8) != 0) {
            z11 = tabBarRedDotMessage.showUnreadIcon;
        }
        return tabBarRedDotMessage.copy(i10, z10, str, z11);
    }

    public final int getIndex() {
        return this.index;
    }

    public final boolean getShowRedDot() {
        return this.showRedDot;
    }

    public final String getUnreadIcon() {
        return this.unreadIcon;
    }

    public final boolean getShowUnreadIcon() {
        return this.showUnreadIcon;
    }

    public final TabBarRedDotMessage copy(int index, boolean showRedDot, String unreadIcon, boolean showUnreadIcon) {
        return new TabBarRedDotMessage(index, showRedDot, unreadIcon, showUnreadIcon);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TabBarRedDotMessage)) {
            return false;
        }
        TabBarRedDotMessage tabBarRedDotMessage = (TabBarRedDotMessage) other;
        return this.index == tabBarRedDotMessage.index && this.showRedDot == tabBarRedDotMessage.showRedDot && Intrinsics.c(this.unreadIcon, tabBarRedDotMessage.unreadIcon) && this.showUnreadIcon == tabBarRedDotMessage.showUnreadIcon;
    }

    public final int getIndex() {
        return this.index;
    }

    public final boolean getShowRedDot() {
        return this.showRedDot;
    }

    public final boolean getShowUnreadIcon() {
        return this.showUnreadIcon;
    }

    public final String getUnreadIcon() {
        return this.unreadIcon;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int i10 = this.index * 31;
        boolean z10 = this.showRedDot;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i11 = (i10 + r10) * 31;
        String str = this.unreadIcon;
        int iHashCode = (i11 + (str == null ? 0 : str.hashCode())) * 31;
        boolean z11 = this.showUnreadIcon;
        return iHashCode + (z11 ? 1 : z11);
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }

    public final void setShowRedDot(boolean z10) {
        this.showRedDot = z10;
    }

    public final void setShowUnreadIcon(boolean z10) {
        this.showUnreadIcon = z10;
    }

    public final void setUnreadIcon(String str) {
        this.unreadIcon = str;
    }

    public String toString() {
        return "TabBarRedDotMessage(index=" + this.index + ", showRedDot=" + this.showRedDot + ", unreadIcon=" + this.unreadIcon + ", showUnreadIcon=" + this.showUnreadIcon + ")";
    }

    public TabBarRedDotMessage(int i10, boolean z10, String str, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? -1 : i10, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? false : z11);
    }

    public TabBarRedDotMessage(int i10, boolean z10, String str, boolean z11) {
        this.index = i10;
        this.showRedDot = z10;
        this.unreadIcon = str;
        this.showUnreadIcon = z11;
    }
}
