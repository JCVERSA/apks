package com.transsion.cloud_drive.base.api.model;

import com.lzy.okgo.model.Progress;
import defpackage.ba5;
import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@ba5(generateAdapter = true)
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001BM\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0003\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0003\u0010\b\u001a\u00020\u0003\u0012\b\b\u0003\u0010\t\u001a\u00020\u0003\u0012\u000e\b\u0003\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006¢\u0006\u0002\u0010\fR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;", "", Progress.TOTAL_SIZE, "", "usedSize", "appInfoList", "", "Lcom/transsion/cloud_drive/base/api/model/AppInfo;", "tempSpaceTotalSize", "tempSpaceUsedSize", "spaceTypeList", "Lcom/transsion/cloud_drive/base/api/model/SpaceType;", "(JJLjava/util/List;JJLjava/util/List;)V", "getAppInfoList", "()Ljava/util/List;", "getSpaceTypeList", "getTempSpaceTotalSize", "()J", "getTempSpaceUsedSize", "getTotalSize", "getUsedSize", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SpaceStatistics {
    private final List<AppInfo> appInfoList;
    private final List<SpaceType> spaceTypeList;
    private final long tempSpaceTotalSize;
    private final long tempSpaceUsedSize;
    private final long totalSize;
    private final long usedSize;

    public SpaceStatistics() {
        this(0L, 0L, null, 0L, 0L, null, 63, null);
    }

    public final List<AppInfo> getAppInfoList() {
        return this.appInfoList;
    }

    public final List<SpaceType> getSpaceTypeList() {
        return this.spaceTypeList;
    }

    public final long getTempSpaceTotalSize() {
        return this.tempSpaceTotalSize;
    }

    public final long getTempSpaceUsedSize() {
        return this.tempSpaceUsedSize;
    }

    public final long getTotalSize() {
        return this.totalSize;
    }

    public final long getUsedSize() {
        return this.usedSize;
    }

    public SpaceStatistics(@v95(name = "cloudSpaceTotalSize") long j, @v95(name = "cloudSpaceUsedSize") long j2, @v95(name = "appInfoList") List<AppInfo> list, @v95(name = "tempSpaceTotalSize") long j3, @v95(name = "tempSpaceUsedSize") long j4, @v95(name = "spaceTypeList") List<SpaceType> list2) {
        y45.j(list, "appInfoList");
        y45.j(list2, "spaceTypeList");
        this.totalSize = j;
        this.usedSize = j2;
        this.appInfoList = list;
        this.tempSpaceTotalSize = j3;
        this.tempSpaceUsedSize = j4;
        this.spaceTypeList = list2;
    }

    public SpaceStatistics(long j, long j2, List list, long j3, long j4, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? 0L : j2, (i & 4) != 0 ? y71.k() : list, (i & 8) != 0 ? 0L : j3, (i & 16) != 0 ? 0L : j4, (i & 32) != 0 ? y71.k() : list2);
    }
}
