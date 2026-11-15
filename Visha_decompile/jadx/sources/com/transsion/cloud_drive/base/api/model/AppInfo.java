package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/AppInfo;", "", "type", "", "usedSize", "", "(Ljava/lang/String;J)V", "getType", "()Ljava/lang/String;", "getUsedSize", "()J", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppInfo {
    private final String type;
    private final long usedSize;

    public AppInfo() {
        this(null, 0L, 3, null);
    }

    public static AppInfo copy$default(AppInfo appInfo, String str, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = appInfo.type;
        }
        if ((i & 2) != 0) {
            j = appInfo.usedSize;
        }
        return appInfo.copy(str, j);
    }

    public final String getType() {
        return this.type;
    }

    public final long getUsedSize() {
        return this.usedSize;
    }

    public final AppInfo copy(@v95(name = "appType") String type, @v95(name = "appUsedSpaceUsed") long usedSize) {
        y45.j(type, "type");
        return new AppInfo(type, usedSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AppInfo)) {
            return false;
        }
        AppInfo appInfo = (AppInfo) other;
        return y45.e(this.type, appInfo.type) && this.usedSize == appInfo.usedSize;
    }

    public final String getType() {
        return this.type;
    }

    public final long getUsedSize() {
        return this.usedSize;
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + Long.hashCode(this.usedSize);
    }

    public String toString() {
        return "AppInfo(type=" + this.type + ", usedSize=" + this.usedSize + ")";
    }

    public AppInfo(@v95(name = "appType") String str, @v95(name = "appUsedSpaceUsed") long j) {
        y45.j(str, "type");
        this.type = str;
        this.usedSize = j;
    }

    public AppInfo(String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j);
    }
}
