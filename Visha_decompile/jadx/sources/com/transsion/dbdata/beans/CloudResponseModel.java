package com.transsion.dbdata.beans;

import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J>\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/transsion/dbdata/beans/CloudResponseModel;", "", "maxId", "", "watchRecordList", "", "Lcom/transsion/dbdata/beans/VideoCloudData;", "videoList", MethodDecl.initName, "(Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V", "getMaxId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getWatchRecordList", "()Ljava/util/List;", "getVideoList", "component1", "component2", "component3", "copy", "(Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)Lcom/transsion/dbdata/beans/CloudResponseModel;", "equals", "", "other", "hashCode", "", "toString", "", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudResponseModel {
    private final Long maxId;
    private final List<VideoCloudData> videoList;
    private final List<VideoCloudData> watchRecordList;

    /* JADX WARN: Multi-variable type inference failed */
    public CloudResponseModel(Long l, List<? extends VideoCloudData> list, List<? extends VideoCloudData> list2) {
        this.maxId = l;
        this.watchRecordList = list;
        this.videoList = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CloudResponseModel copy$default(CloudResponseModel cloudResponseModel, Long l, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            l = cloudResponseModel.maxId;
        }
        if ((i & 2) != 0) {
            list = cloudResponseModel.watchRecordList;
        }
        if ((i & 4) != 0) {
            list2 = cloudResponseModel.videoList;
        }
        return cloudResponseModel.copy(l, list, list2);
    }

    public final Long getMaxId() {
        return this.maxId;
    }

    public final List<VideoCloudData> component2() {
        return this.watchRecordList;
    }

    public final List<VideoCloudData> component3() {
        return this.videoList;
    }

    public final CloudResponseModel copy(Long maxId, List<? extends VideoCloudData> watchRecordList, List<? extends VideoCloudData> videoList) {
        return new CloudResponseModel(maxId, watchRecordList, videoList);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudResponseModel)) {
            return false;
        }
        CloudResponseModel cloudResponseModel = (CloudResponseModel) other;
        return y45.e(this.maxId, cloudResponseModel.maxId) && y45.e(this.watchRecordList, cloudResponseModel.watchRecordList) && y45.e(this.videoList, cloudResponseModel.videoList);
    }

    public final Long getMaxId() {
        return this.maxId;
    }

    public final List<VideoCloudData> getVideoList() {
        return this.videoList;
    }

    public final List<VideoCloudData> getWatchRecordList() {
        return this.watchRecordList;
    }

    public int hashCode() {
        Long l = this.maxId;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        List<VideoCloudData> list = this.watchRecordList;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        List<VideoCloudData> list2 = this.videoList;
        return iHashCode2 + (list2 != null ? list2.hashCode() : 0);
    }

    public String toString() {
        return "CloudResponseModel(maxId=" + this.maxId + ", watchRecordList=" + this.watchRecordList + ", videoList=" + this.videoList + ")";
    }

    public CloudResponseModel(Long l, List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : l, list, list2);
    }
}
