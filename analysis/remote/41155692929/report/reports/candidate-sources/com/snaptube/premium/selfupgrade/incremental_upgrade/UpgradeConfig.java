package com.snaptube.premium.selfupgrade.incremental_upgrade;

import android.text.TextUtils;
import androidx.annotation.Keep;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import java.io.File;
import java.io.Serializable;
import o.de5;
import o.vg4;

@Keep
public class UpgradeConfig implements Serializable {
    public static final UpgradeConfig NEWEST = new UpgradeConfig();
    public static final String STATUS_PENDING = "pending";
    public static final String STATUS_READY = "ready";
    public static final long serialVersionUID = 1;
    private String filePath;
    private UpgradeInfo fullInfo;
    private UpgradeMeta meta;
    private UpgradeInfo patchInfo;
    private boolean stop;
    public boolean update;

    public static class PackageInfo implements Serializable {
        public String md5;
        public long size;
        public String url;
    }

    public enum UpdatePriority {
        NORMAL,
        STRONG,
        MID
    }

    public static class UpgradeInfo implements Serializable {
        public int backoff;
        public PackageInfo packageInfo;
        public String status;
    }

    public static class UpgradeMeta implements Serializable {
        public static final long serialVersionUID = 1;
        public String changeLog;
        public boolean isForceUpdate;
        public int notifyInterval;
        public String popupBannerUrl;
        public int popupInterval;
        public UpdatePriority priority;
        public String subTitle;
        public String title;
        public String version;
    }

    /* JADX WARN: Unreachable blocks removed: 7, instructions: 10 */
    private boolean isFileExist() {
        return false;
    }

    /* JADX WARN: Unreachable blocks removed: 10, instructions: 11 */
    public boolean canFullUpdate() {
        return false;
    }

    /* JADX WARN: Unreachable blocks removed: 12, instructions: 17 */
    public boolean canPatchUpdate() {
        return false;
    }

    public boolean deleteApk() {
        String filePath = getFilePath();
        if (TextUtils.isEmpty(filePath)) {
            return false;
        }
        return new File(filePath).delete();
    }

    public int getBackOffTime() {
        if (usePatchUpdate() && STATUS_PENDING.equals(this.patchInfo.status)) {
            return this.patchInfo.backoff;
        }
        return 0;
    }

    public String getBigVersion() {
        String[] strArrSplit;
        UpgradeMeta upgradeMeta = this.meta;
        if (upgradeMeta == null || TextUtils.isEmpty(upgradeMeta.version) || (strArrSplit = this.meta.version.split("\\.")) == null || strArrSplit.length < 2) {
            return "";
        }
        return strArrSplit[0] + "." + strArrSplit[1];
    }

    public String getChangeLog() {
        UpgradeMeta upgradeMeta = this.meta;
        return (upgradeMeta == null || TextUtils.isEmpty(upgradeMeta.changeLog)) ? "" : this.meta.changeLog;
    }

    public String getFilePath() {
        UpgradeConfig upgradeConfigF;
        if (TextUtils.isEmpty(this.filePath) && (upgradeConfigF = CheckSelfUpgradeManager.F()) != null && getVersionCode() == upgradeConfigF.getVersionCode()) {
            this.filePath = upgradeConfigF.filePath;
        }
        return this.filePath;
    }

    public long getFullFileSize() {
        PackageInfo packageInfo;
        UpgradeInfo upgradeInfo = this.fullInfo;
        if (upgradeInfo == null || (packageInfo = upgradeInfo.packageInfo) == null) {
            return 0L;
        }
        return packageInfo.size;
    }

    public String getFullMd5() {
        PackageInfo packageInfo;
        UpgradeInfo upgradeInfo = this.fullInfo;
        return (upgradeInfo == null || (packageInfo = upgradeInfo.packageInfo) == null || TextUtils.isEmpty(packageInfo.md5)) ? "" : this.fullInfo.packageInfo.md5;
    }

    public String getFullUrl() {
        PackageInfo packageInfo;
        UpgradeInfo upgradeInfo = this.fullInfo;
        return (upgradeInfo == null || (packageInfo = upgradeInfo.packageInfo) == null || TextUtils.isEmpty(packageInfo.url)) ? "" : this.fullInfo.packageInfo.url;
    }

    public long getNotifyInterval() {
        UpgradeMeta upgradeMeta = this.meta;
        if (upgradeMeta == null) {
            return 0L;
        }
        return upgradeMeta.notifyInterval;
    }

    public String getPatchMd5() {
        PackageInfo packageInfo;
        UpgradeInfo upgradeInfo = this.patchInfo;
        return (upgradeInfo == null || (packageInfo = upgradeInfo.packageInfo) == null || TextUtils.isEmpty(packageInfo.md5)) ? "" : this.patchInfo.packageInfo.md5;
    }

    public String getPatchUrl() {
        PackageInfo packageInfo;
        UpgradeInfo upgradeInfo = this.patchInfo;
        return (upgradeInfo == null || (packageInfo = upgradeInfo.packageInfo) == null || TextUtils.isEmpty(packageInfo.url)) ? "" : this.patchInfo.packageInfo.url;
    }

    public String getPopupBanner() {
        UpgradeMeta upgradeMeta = this.meta;
        return upgradeMeta == null ? "" : upgradeMeta.popupBannerUrl;
    }

    public long getPopupInterval() {
        UpgradeMeta upgradeMeta = this.meta;
        if (upgradeMeta == null) {
            return 0L;
        }
        return upgradeMeta.popupInterval;
    }

    public UpdatePriority getPriority() {
        UpgradeMeta upgradeMeta = this.meta;
        if (upgradeMeta == null) {
            return null;
        }
        return upgradeMeta.priority;
    }

    public String getUpdateLog() {
        UpgradeMeta upgradeMeta = this.meta;
        return upgradeMeta == null ? "" : upgradeMeta.changeLog;
    }

    public String getUpdateTitle() {
        UpgradeMeta upgradeMeta = this.meta;
        return upgradeMeta == null ? "" : upgradeMeta.title;
    }

    public String getVersion() {
        UpgradeMeta upgradeMeta = this.meta;
        return upgradeMeta == null ? "" : upgradeMeta.version;
    }

    public int getVersionCode() {
        String version = getVersion();
        if (TextUtils.isEmpty(version)) {
            return -1;
        }
        String[] strArrSplit = version.split("\\.");
        if (strArrSplit.length != 4) {
            return -1;
        }
        return de5.d(strArrSplit[3], -1);
    }

    public boolean isApkExist() {
        return isFileExist();
    }

    public boolean isApkMd5Correct() {
        String fullMd5 = getFullMd5();
        if (fullMd5 == null) {
            return false;
        }
        return fullMd5.equals(vg4.b(getFilePath()));
    }

    public boolean isNormalUpdate() {
        return getPriority() == UpdatePriority.NORMAL;
    }

    public boolean isStop() {
        return this.stop;
    }

    public boolean isStrictForceUpdate() {
        UpgradeMeta upgradeMeta = this.meta;
        return upgradeMeta != null && upgradeMeta.isForceUpdate;
    }

    public boolean isStrongUpdate() {
        return getPriority() == UpdatePriority.STRONG;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public boolean usePatchUpdate() {
        return this.patchInfo != null;
    }
}
