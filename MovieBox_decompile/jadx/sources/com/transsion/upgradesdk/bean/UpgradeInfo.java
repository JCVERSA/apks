package com.transsion.upgradesdk.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0003J3\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/transsion/upgradesdk/bean/UpgradeInfo;", "Ljava/io/Serializable;", "isNewVersion", "", "showUpgradeDialog", "isForceUpgrade", "versionName", "", "(ZZZLjava/lang/String;)V", "()Z", "getShowUpgradeDialog", "getVersionName", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "upgradesdk_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UpgradeInfo implements Serializable {
    private final boolean isForceUpgrade;
    private final boolean isNewVersion;
    private final boolean showUpgradeDialog;
    private final String versionName;

    public UpgradeInfo(boolean z10, boolean z11, boolean z12, String str) {
        this.isNewVersion = z10;
        this.showUpgradeDialog = z11;
        this.isForceUpgrade = z12;
        this.versionName = str;
    }

    public static UpgradeInfo copy$default(UpgradeInfo upgradeInfo, boolean z10, boolean z11, boolean z12, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = upgradeInfo.isNewVersion;
        }
        if ((i10 & 2) != 0) {
            z11 = upgradeInfo.showUpgradeDialog;
        }
        if ((i10 & 4) != 0) {
            z12 = upgradeInfo.isForceUpgrade;
        }
        if ((i10 & 8) != 0) {
            str = upgradeInfo.versionName;
        }
        return upgradeInfo.copy(z10, z11, z12, str);
    }

    public final boolean getIsNewVersion() {
        return this.isNewVersion;
    }

    public final boolean getShowUpgradeDialog() {
        return this.showUpgradeDialog;
    }

    public final boolean getIsForceUpgrade() {
        return this.isForceUpgrade;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public final UpgradeInfo copy(boolean isNewVersion, boolean showUpgradeDialog, boolean isForceUpgrade, String versionName) {
        return new UpgradeInfo(isNewVersion, showUpgradeDialog, isForceUpgrade, versionName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpgradeInfo)) {
            return false;
        }
        UpgradeInfo upgradeInfo = (UpgradeInfo) other;
        return this.isNewVersion == upgradeInfo.isNewVersion && this.showUpgradeDialog == upgradeInfo.showUpgradeDialog && this.isForceUpgrade == upgradeInfo.isForceUpgrade && Intrinsics.c(this.versionName, upgradeInfo.versionName);
    }

    public final boolean getShowUpgradeDialog() {
        return this.showUpgradeDialog;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public int hashCode() {
        boolean z10 = this.isNewVersion;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = r10 * 31;
        boolean z11 = this.showUpgradeDialog;
        ?? r11 = z11;
        if (z11) {
            r11 = 1;
        }
        int i11 = (i10 + r11) * 31;
        boolean z12 = this.isForceUpgrade;
        int i12 = (i11 + (z12 ? 1 : z12)) * 31;
        String str = this.versionName;
        return i12 + (str == null ? 0 : str.hashCode());
    }

    public final boolean isForceUpgrade() {
        return this.isForceUpgrade;
    }

    public final boolean isNewVersion() {
        return this.isNewVersion;
    }

    public String toString() {
        return "UpgradeInfo(isNewVersion=" + this.isNewVersion + ", showUpgradeDialog=" + this.showUpgradeDialog + ", isForceUpgrade=" + this.isForceUpgrade + ", versionName=" + this.versionName + ')';
    }
}
