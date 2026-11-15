package com.transsion.playercommon.data;

import com.google.gson.annotations.SerializedName;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\nHÆ\u0003JE\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006#"}, d2 = {"Lcom/transsion/playercommon/data/CloudRequestData;", "Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;", "pageNo", "", Progress.FILE_NAME, "", "sortField", "sortBy", "dataType", "maxId", "", MethodDecl.initName, "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V", "getPageNo", "()I", "getFileName", "()Ljava/lang/String;", "getSortField", "getSortBy", "getDataType", "getMaxId", "()J", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "toString", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudRequestData extends TypeBean {

    @SerializedName("dataType")
    private final int dataType;

    @SerializedName(Progress.FILE_NAME)
    private final String fileName;

    @SerializedName("maxId")
    private final long maxId;

    @SerializedName("pageNo")
    private final int pageNo;

    @SerializedName("sortBy")
    private final String sortBy;

    @SerializedName("sortField")
    private final String sortField;

    public CloudRequestData(int i, String str, String str2, String str3, int i2, long j) {
        y45.j(str, Progress.FILE_NAME);
        y45.j(str2, "sortField");
        y45.j(str3, "sortBy");
        this.pageNo = i;
        this.fileName = str;
        this.sortField = str2;
        this.sortBy = str3;
        this.dataType = i2;
        this.maxId = j;
    }

    public static CloudRequestData copy$default(CloudRequestData cloudRequestData, int i, String str, String str2, String str3, int i2, long j, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = cloudRequestData.pageNo;
        }
        if ((i3 & 2) != 0) {
            str = cloudRequestData.fileName;
        }
        String str4 = str;
        if ((i3 & 4) != 0) {
            str2 = cloudRequestData.sortField;
        }
        String str5 = str2;
        if ((i3 & 8) != 0) {
            str3 = cloudRequestData.sortBy;
        }
        String str6 = str3;
        if ((i3 & 16) != 0) {
            i2 = cloudRequestData.dataType;
        }
        int i4 = i2;
        if ((i3 & 32) != 0) {
            j = cloudRequestData.maxId;
        }
        return cloudRequestData.copy(i, str4, str5, str6, i4, j);
    }

    public final int getPageNo() {
        return this.pageNo;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final String getSortField() {
        return this.sortField;
    }

    public final String getSortBy() {
        return this.sortBy;
    }

    public final int getDataType() {
        return this.dataType;
    }

    public final long getMaxId() {
        return this.maxId;
    }

    public final CloudRequestData copy(int pageNo, String fileName, String sortField, String sortBy, int dataType, long maxId) {
        y45.j(fileName, Progress.FILE_NAME);
        y45.j(sortField, "sortField");
        y45.j(sortBy, "sortBy");
        return new CloudRequestData(pageNo, fileName, sortField, sortBy, dataType, maxId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudRequestData)) {
            return false;
        }
        CloudRequestData cloudRequestData = (CloudRequestData) other;
        return this.pageNo == cloudRequestData.pageNo && y45.e(this.fileName, cloudRequestData.fileName) && y45.e(this.sortField, cloudRequestData.sortField) && y45.e(this.sortBy, cloudRequestData.sortBy) && this.dataType == cloudRequestData.dataType && this.maxId == cloudRequestData.maxId;
    }

    public final int getDataType() {
        return this.dataType;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final long getMaxId() {
        return this.maxId;
    }

    public final int getPageNo() {
        return this.pageNo;
    }

    public final String getSortBy() {
        return this.sortBy;
    }

    public final String getSortField() {
        return this.sortField;
    }

    public int hashCode() {
        return (((((((((Integer.hashCode(this.pageNo) * 31) + this.fileName.hashCode()) * 31) + this.sortField.hashCode()) * 31) + this.sortBy.hashCode()) * 31) + Integer.hashCode(this.dataType)) * 31) + Long.hashCode(this.maxId);
    }

    public String toString() {
        return "CloudRequestData(pageNo=" + this.pageNo + ", fileName=" + this.fileName + ", sortField=" + this.sortField + ", sortBy=" + this.sortBy + ", dataType=" + this.dataType + ", maxId=" + this.maxId + ")";
    }
}
