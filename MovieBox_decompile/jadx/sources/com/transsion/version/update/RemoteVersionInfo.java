package com.transsion.version.update;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B}\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\t\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0006HÆ\u0003J\t\u0010)\u001a\u00020\u0006HÆ\u0003J\t\u0010*\u001a\u00020\tHÆ\u0003J\t\u0010+\u001a\u00020\u0006HÆ\u0003J\t\u0010,\u001a\u00020\tHÆ\u0003J\t\u0010-\u001a\u00020\u0006HÆ\u0003J\t\u0010.\u001a\u00020\tHÆ\u0003J\t\u0010/\u001a\u00020\u0006HÆ\u0003J\t\u00100\u001a\u00020\u0006HÆ\u0003J\t\u00101\u001a\u00020\u0006HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u008d\u0001\u00103\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00062\b\b\u0002\u0010\u0010\u001a\u00020\u00062\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÆ\u0001J\u0006\u00104\u001a\u000205J\u0013\u00106\u001a\u00020\u00032\b\u00107\u001a\u0004\u0018\u000108HÖ\u0003J\t\u00109\u001a\u000205HÖ\u0001J\t\u0010:\u001a\u00020\u0006HÖ\u0001J\u0016\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u000205R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\n\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001cR\u0011\u0010\f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u0011\u0010\r\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001cR\u0011\u0010\u000e\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0019R\u0011\u0010\u0010\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0019R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%¨\u0006@"}, d2 = {"Lcom/transsion/version/update/RemoteVersionInfo;", "Landroid/os/Parcelable;", "hasUpdate", "", "forceUpdate", "patchUrl", "", "patchMd5", "patchSize", "", "installPkgUrl", "installPkgVersionCode", "installPkgMd5", "installPkgSize", "updateType", "appStoreUrl", "webDownloadUrl", "noticeConfig", "Lcom/transsion/version/update/NoticeConfig;", "<init>", "(ZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/version/update/NoticeConfig;)V", "getHasUpdate", "()Z", "getForceUpdate", "getPatchUrl", "()Ljava/lang/String;", "getPatchMd5", "getPatchSize", "()J", "getInstallPkgUrl", "getInstallPkgVersionCode", "getInstallPkgMd5", "getInstallPkgSize", "getUpdateType", "getAppStoreUrl", "getWebDownloadUrl", "getNoticeConfig", "()Lcom/transsion/version/update/NoticeConfig;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Update_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RemoteVersionInfo implements Parcelable {
    public static final Parcelable.Creator<RemoteVersionInfo> CREATOR = new a();
    private final String appStoreUrl;
    private final boolean forceUpdate;
    private final boolean hasUpdate;
    private final String installPkgMd5;
    private final long installPkgSize;
    private final String installPkgUrl;
    private final long installPkgVersionCode;
    private final NoticeConfig noticeConfig;
    private final String patchMd5;
    private final long patchSize;
    private final String patchUrl;
    private final String updateType;
    private final String webDownloadUrl;

    public static final class a implements Parcelable.Creator {
        @Override
        public final RemoteVersionInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new RemoteVersionInfo(parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : NoticeConfig.CREATOR.createFromParcel(parcel));
        }

        @Override
        public final RemoteVersionInfo[] newArray(int i10) {
            return new RemoteVersionInfo[i10];
        }
    }

    public RemoteVersionInfo(boolean z10, boolean z11, String patchUrl, String patchMd5, long j10, String installPkgUrl, long j11, String installPkgMd5, long j12, String updateType, String appStoreUrl, String webDownloadUrl, NoticeConfig noticeConfig) {
        Intrinsics.h(patchUrl, "patchUrl");
        Intrinsics.h(patchMd5, "patchMd5");
        Intrinsics.h(installPkgUrl, "installPkgUrl");
        Intrinsics.h(installPkgMd5, "installPkgMd5");
        Intrinsics.h(updateType, "updateType");
        Intrinsics.h(appStoreUrl, "appStoreUrl");
        Intrinsics.h(webDownloadUrl, "webDownloadUrl");
        this.hasUpdate = z10;
        this.forceUpdate = z11;
        this.patchUrl = patchUrl;
        this.patchMd5 = patchMd5;
        this.patchSize = j10;
        this.installPkgUrl = installPkgUrl;
        this.installPkgVersionCode = j11;
        this.installPkgMd5 = installPkgMd5;
        this.installPkgSize = j12;
        this.updateType = updateType;
        this.appStoreUrl = appStoreUrl;
        this.webDownloadUrl = webDownloadUrl;
        this.noticeConfig = noticeConfig;
    }

    public final boolean getHasUpdate() {
        return this.hasUpdate;
    }

    public final String getUpdateType() {
        return this.updateType;
    }

    public final String getAppStoreUrl() {
        return this.appStoreUrl;
    }

    public final String getWebDownloadUrl() {
        return this.webDownloadUrl;
    }

    public final NoticeConfig getNoticeConfig() {
        return this.noticeConfig;
    }

    public final boolean getForceUpdate() {
        return this.forceUpdate;
    }

    public final String getPatchUrl() {
        return this.patchUrl;
    }

    public final String getPatchMd5() {
        return this.patchMd5;
    }

    public final long getPatchSize() {
        return this.patchSize;
    }

    public final String getInstallPkgUrl() {
        return this.installPkgUrl;
    }

    public final long getInstallPkgVersionCode() {
        return this.installPkgVersionCode;
    }

    public final String getInstallPkgMd5() {
        return this.installPkgMd5;
    }

    public final long getInstallPkgSize() {
        return this.installPkgSize;
    }

    public final RemoteVersionInfo copy(boolean hasUpdate, boolean forceUpdate, String patchUrl, String patchMd5, long patchSize, String installPkgUrl, long installPkgVersionCode, String installPkgMd5, long installPkgSize, String updateType, String appStoreUrl, String webDownloadUrl, NoticeConfig noticeConfig) {
        Intrinsics.h(patchUrl, "patchUrl");
        Intrinsics.h(patchMd5, "patchMd5");
        Intrinsics.h(installPkgUrl, "installPkgUrl");
        Intrinsics.h(installPkgMd5, "installPkgMd5");
        Intrinsics.h(updateType, "updateType");
        Intrinsics.h(appStoreUrl, "appStoreUrl");
        Intrinsics.h(webDownloadUrl, "webDownloadUrl");
        return new RemoteVersionInfo(hasUpdate, forceUpdate, patchUrl, patchMd5, patchSize, installPkgUrl, installPkgVersionCode, installPkgMd5, installPkgSize, updateType, appStoreUrl, webDownloadUrl, noticeConfig);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RemoteVersionInfo)) {
            return false;
        }
        RemoteVersionInfo remoteVersionInfo = (RemoteVersionInfo) other;
        return this.hasUpdate == remoteVersionInfo.hasUpdate && this.forceUpdate == remoteVersionInfo.forceUpdate && Intrinsics.c(this.patchUrl, remoteVersionInfo.patchUrl) && Intrinsics.c(this.patchMd5, remoteVersionInfo.patchMd5) && this.patchSize == remoteVersionInfo.patchSize && Intrinsics.c(this.installPkgUrl, remoteVersionInfo.installPkgUrl) && this.installPkgVersionCode == remoteVersionInfo.installPkgVersionCode && Intrinsics.c(this.installPkgMd5, remoteVersionInfo.installPkgMd5) && this.installPkgSize == remoteVersionInfo.installPkgSize && Intrinsics.c(this.updateType, remoteVersionInfo.updateType) && Intrinsics.c(this.appStoreUrl, remoteVersionInfo.appStoreUrl) && Intrinsics.c(this.webDownloadUrl, remoteVersionInfo.webDownloadUrl) && Intrinsics.c(this.noticeConfig, remoteVersionInfo.noticeConfig);
    }

    public final String getAppStoreUrl() {
        return this.appStoreUrl;
    }

    public final boolean getForceUpdate() {
        return this.forceUpdate;
    }

    public final boolean getHasUpdate() {
        return this.hasUpdate;
    }

    public final String getInstallPkgMd5() {
        return this.installPkgMd5;
    }

    public final long getInstallPkgSize() {
        return this.installPkgSize;
    }

    public final String getInstallPkgUrl() {
        return this.installPkgUrl;
    }

    public final long getInstallPkgVersionCode() {
        return this.installPkgVersionCode;
    }

    public final NoticeConfig getNoticeConfig() {
        return this.noticeConfig;
    }

    public final String getPatchMd5() {
        return this.patchMd5;
    }

    public final long getPatchSize() {
        return this.patchSize;
    }

    public final String getPatchUrl() {
        return this.patchUrl;
    }

    public final String getUpdateType() {
        return this.updateType;
    }

    public final String getWebDownloadUrl() {
        return this.webDownloadUrl;
    }

    public int hashCode() {
        int iA = ((((((((((((((((((((((androidx.compose.foundation.e.a(this.hasUpdate) * 31) + androidx.compose.foundation.e.a(this.forceUpdate)) * 31) + this.patchUrl.hashCode()) * 31) + this.patchMd5.hashCode()) * 31) + s.a(this.patchSize)) * 31) + this.installPkgUrl.hashCode()) * 31) + s.a(this.installPkgVersionCode)) * 31) + this.installPkgMd5.hashCode()) * 31) + s.a(this.installPkgSize)) * 31) + this.updateType.hashCode()) * 31) + this.appStoreUrl.hashCode()) * 31) + this.webDownloadUrl.hashCode()) * 31;
        NoticeConfig noticeConfig = this.noticeConfig;
        return iA + (noticeConfig == null ? 0 : noticeConfig.hashCode());
    }

    public String toString() {
        return "RemoteVersionInfo(hasUpdate=" + this.hasUpdate + ", forceUpdate=" + this.forceUpdate + ", patchUrl=" + this.patchUrl + ", patchMd5=" + this.patchMd5 + ", patchSize=" + this.patchSize + ", installPkgUrl=" + this.installPkgUrl + ", installPkgVersionCode=" + this.installPkgVersionCode + ", installPkgMd5=" + this.installPkgMd5 + ", installPkgSize=" + this.installPkgSize + ", updateType=" + this.updateType + ", appStoreUrl=" + this.appStoreUrl + ", webDownloadUrl=" + this.webDownloadUrl + ", noticeConfig=" + this.noticeConfig + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.hasUpdate ? 1 : 0);
        dest.writeInt(this.forceUpdate ? 1 : 0);
        dest.writeString(this.patchUrl);
        dest.writeString(this.patchMd5);
        dest.writeLong(this.patchSize);
        dest.writeString(this.installPkgUrl);
        dest.writeLong(this.installPkgVersionCode);
        dest.writeString(this.installPkgMd5);
        dest.writeLong(this.installPkgSize);
        dest.writeString(this.updateType);
        dest.writeString(this.appStoreUrl);
        dest.writeString(this.webDownloadUrl);
        NoticeConfig noticeConfig = this.noticeConfig;
        if (noticeConfig == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            noticeConfig.writeToParcel(dest, flags);
        }
    }

    public RemoteVersionInfo(boolean z10, boolean z11, String str, String str2, long j10, String str3, long j11, String str4, long j12, String str5, String str6, String str7, NoticeConfig noticeConfig, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, str, str2, j10, str3, j11, str4, j12, (i10 & 512) != 0 ? b.a() : str5, (i10 & 1024) != 0 ? "" : str6, (i10 & 2048) != 0 ? "" : str7, (i10 & 4096) != 0 ? null : noticeConfig);
    }
}
