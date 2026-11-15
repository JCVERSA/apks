package com.transsion.dbdata.beans;

import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0012\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tHÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/transsion/dbdata/beans/FileHandlerData;", "", "isSuccess", "", "handleType", "", "data", "Lcom/transsion/dbdata/beans/VideoCloudData;", "list", "", MethodDecl.initName, "(ZILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V", "()Z", "getHandleType", "()I", "getData", "()Lcom/transsion/dbdata/beans/VideoCloudData;", "getList", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileHandlerData {
    private final VideoCloudData data;
    private final int handleType;
    private final boolean isSuccess;
    private final List<VideoCloudData> list;

    /* JADX WARN: Multi-variable type inference failed */
    public FileHandlerData(boolean z, int i, VideoCloudData videoCloudData, List<? extends VideoCloudData> list) {
        this.isSuccess = z;
        this.handleType = i;
        this.data = videoCloudData;
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static FileHandlerData copy$default(FileHandlerData fileHandlerData, boolean z, int i, VideoCloudData videoCloudData, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = fileHandlerData.isSuccess;
        }
        if ((i2 & 2) != 0) {
            i = fileHandlerData.handleType;
        }
        if ((i2 & 4) != 0) {
            videoCloudData = fileHandlerData.data;
        }
        if ((i2 & 8) != 0) {
            list = fileHandlerData.list;
        }
        return fileHandlerData.copy(z, i, videoCloudData, list);
    }

    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final int getHandleType() {
        return this.handleType;
    }

    public final VideoCloudData getData() {
        return this.data;
    }

    public final List<VideoCloudData> component4() {
        return this.list;
    }

    public final FileHandlerData copy(boolean isSuccess, int handleType, VideoCloudData data, List<? extends VideoCloudData> list) {
        return new FileHandlerData(isSuccess, handleType, data, list);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FileHandlerData)) {
            return false;
        }
        FileHandlerData fileHandlerData = (FileHandlerData) other;
        return this.isSuccess == fileHandlerData.isSuccess && this.handleType == fileHandlerData.handleType && y45.e(this.data, fileHandlerData.data) && y45.e(this.list, fileHandlerData.list);
    }

    public final VideoCloudData getData() {
        return this.data;
    }

    public final int getHandleType() {
        return this.handleType;
    }

    public final List<VideoCloudData> getList() {
        return this.list;
    }

    public int hashCode() {
        int iHashCode = ((Boolean.hashCode(this.isSuccess) * 31) + Integer.hashCode(this.handleType)) * 31;
        VideoCloudData videoCloudData = this.data;
        int iHashCode2 = (iHashCode + (videoCloudData == null ? 0 : videoCloudData.hashCode())) * 31;
        List<VideoCloudData> list = this.list;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public String toString() {
        return "FileHandlerData(isSuccess=" + this.isSuccess + ", handleType=" + this.handleType + ", data=" + this.data + ", list=" + this.list + ")";
    }
}
