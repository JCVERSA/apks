package com.transsion.playercommon.data;

import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0010\u001a\u00020\u0003H\u0016J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J3\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/transsion/playercommon/data/CloudHistoryRequestData;", "Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;", "playDuration", "", "fileId", "mediaLibraryId", "dataType", "", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getPlayDuration", "()Ljava/lang/String;", "getFileId", "getMediaLibraryId", "getDataType", "()I", "toString", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudHistoryRequestData extends TypeBean {

    @SerializedName("dataType")
    private final int dataType;

    @SerializedName("fileId")
    private final String fileId;

    @SerializedName("mediaLibraryId")
    private final String mediaLibraryId;

    @SerializedName("playDuration")
    private final String playDuration;

    public CloudHistoryRequestData(String str, String str2, String str3, int i) {
        y45.j(str, "playDuration");
        y45.j(str2, "fileId");
        this.playDuration = str;
        this.fileId = str2;
        this.mediaLibraryId = str3;
        this.dataType = i;
    }

    public static CloudHistoryRequestData copy$default(CloudHistoryRequestData cloudHistoryRequestData, String str, String str2, String str3, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = cloudHistoryRequestData.playDuration;
        }
        if ((i2 & 2) != 0) {
            str2 = cloudHistoryRequestData.fileId;
        }
        if ((i2 & 4) != 0) {
            str3 = cloudHistoryRequestData.mediaLibraryId;
        }
        if ((i2 & 8) != 0) {
            i = cloudHistoryRequestData.dataType;
        }
        return cloudHistoryRequestData.copy(str, str2, str3, i);
    }

    public final String getPlayDuration() {
        return this.playDuration;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }

    public final int getDataType() {
        return this.dataType;
    }

    public final CloudHistoryRequestData copy(String playDuration, String fileId, String mediaLibraryId, int dataType) {
        y45.j(playDuration, "playDuration");
        y45.j(fileId, "fileId");
        return new CloudHistoryRequestData(playDuration, fileId, mediaLibraryId, dataType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudHistoryRequestData)) {
            return false;
        }
        CloudHistoryRequestData cloudHistoryRequestData = (CloudHistoryRequestData) other;
        return y45.e(this.playDuration, cloudHistoryRequestData.playDuration) && y45.e(this.fileId, cloudHistoryRequestData.fileId) && y45.e(this.mediaLibraryId, cloudHistoryRequestData.mediaLibraryId) && this.dataType == cloudHistoryRequestData.dataType;
    }

    public final int getDataType() {
        return this.dataType;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }

    public final String getPlayDuration() {
        return this.playDuration;
    }

    public int hashCode() {
        int iHashCode = ((this.playDuration.hashCode() * 31) + this.fileId.hashCode()) * 31;
        String str = this.mediaLibraryId;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.dataType);
    }

    public String toString() {
        return "CloudHistoryRequestData(playDuration='" + this.playDuration + "', fileId='" + this.fileId + "', mediaLibraryId=" + this.mediaLibraryId + ", dataType=" + this.dataType + ")";
    }
}
