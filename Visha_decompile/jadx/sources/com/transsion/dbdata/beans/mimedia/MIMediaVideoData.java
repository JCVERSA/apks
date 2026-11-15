package com.transsion.dbdata.beans.mimedia;

import com.transsion.dbdata.beans.VideoCloudData;
import defpackage.y45;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u0006\u0010\"\u001a\u00020#J\b\u0010$\u001a\u00020\u0003H\u0016J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u000bHÆ\u0003J]\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u000101HÖ\u0003J\t\u00102\u001a\u00020\u000bHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u000f\"\u0004\b\u001b\u0010\u0011R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0011R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u00063"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;", "Ljava/io/Serializable;", "sourceId", "", "title", "description", "cover", "url", "virtualPersonName", "createAt", "status", "", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getSourceId", "()Ljava/lang/String;", "setSourceId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "getDescription", "setDescription", "getCover", "setCover", "getUrl", "setUrl", "getVirtualPersonName", "setVirtualPersonName", "getCreateAt", "setCreateAt", "getStatus", "()I", "setStatus", "(I)V", "toVideoCloudData", "Lcom/transsion/dbdata/beans/VideoCloudData;", "toString", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MIMediaVideoData implements Serializable {
    private String cover;
    private String createAt;
    private String description;
    private String sourceId;
    private int status;
    private String title;
    private String url;
    private String virtualPersonName;

    public MIMediaVideoData() {
        this(null, null, null, null, null, null, null, 0, 255, null);
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getCover() {
        return this.cover;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getVirtualPersonName() {
        return this.virtualPersonName;
    }

    public final String getCreateAt() {
        return this.createAt;
    }

    public final int getStatus() {
        return this.status;
    }

    public final MIMediaVideoData copy(String sourceId, String title, String description, String cover, String url, String virtualPersonName, String createAt, int status) {
        y45.j(sourceId, "sourceId");
        y45.j(title, "title");
        y45.j(description, "description");
        y45.j(cover, "cover");
        y45.j(url, "url");
        return new MIMediaVideoData(sourceId, title, description, cover, url, virtualPersonName, createAt, status);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MIMediaVideoData)) {
            return false;
        }
        MIMediaVideoData mIMediaVideoData = (MIMediaVideoData) other;
        return y45.e(this.sourceId, mIMediaVideoData.sourceId) && y45.e(this.title, mIMediaVideoData.title) && y45.e(this.description, mIMediaVideoData.description) && y45.e(this.cover, mIMediaVideoData.cover) && y45.e(this.url, mIMediaVideoData.url) && y45.e(this.virtualPersonName, mIMediaVideoData.virtualPersonName) && y45.e(this.createAt, mIMediaVideoData.createAt) && this.status == mIMediaVideoData.status;
    }

    public final String getCover() {
        return this.cover;
    }

    public final String getCreateAt() {
        return this.createAt;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final int getStatus() {
        return this.status;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getVirtualPersonName() {
        return this.virtualPersonName;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.sourceId.hashCode() * 31) + this.title.hashCode()) * 31) + this.description.hashCode()) * 31) + this.cover.hashCode()) * 31) + this.url.hashCode()) * 31;
        String str = this.virtualPersonName;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.createAt;
        return ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + Integer.hashCode(this.status);
    }

    public final void setCover(String str) {
        y45.j(str, "<set-?>");
        this.cover = str;
    }

    public final void setCreateAt(String str) {
        this.createAt = str;
    }

    public final void setDescription(String str) {
        y45.j(str, "<set-?>");
        this.description = str;
    }

    public final void setSourceId(String str) {
        y45.j(str, "<set-?>");
        this.sourceId = str;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTitle(String str) {
        y45.j(str, "<set-?>");
        this.title = str;
    }

    public final void setUrl(String str) {
        y45.j(str, "<set-?>");
        this.url = str;
    }

    public final void setVirtualPersonName(String str) {
        this.virtualPersonName = str;
    }

    public String toString() {
        return "MIMediaVideoData(sourceId='" + this.sourceId + "', title='" + this.title + "', description='" + this.description + "', cover='" + this.cover + "', url='" + this.url + "', virtualPersonName=" + this.virtualPersonName + ", createAt=" + this.createAt + ", status=" + this.status + ")";
    }

    public final VideoCloudData toVideoCloudData() {
        long j = 0L;
        return new VideoCloudData(j, this.sourceId, this.title, j, j, null, null, null, this.createAt, this.virtualPersonName, 0L, null, null, null, null, null, 1, null, this.cover, null, 524288, null);
    }

    public MIMediaVideoData(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i) {
        y45.j(str, "sourceId");
        y45.j(str2, "title");
        y45.j(str3, "description");
        y45.j(str4, "cover");
        y45.j(str5, "url");
        this.sourceId = str;
        this.title = str2;
        this.description = str3;
        this.cover = str4;
        this.url = str5;
        this.virtualPersonName = str6;
        this.createAt = str7;
        this.status = i;
    }

    public MIMediaVideoData(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? "" : str4, (i2 & 16) != 0 ? "" : str5, (i2 & 32) != 0 ? "" : str6, (i2 & 64) != 0 ? "" : str7, (i2 & 128) != 0 ? 0 : i);
    }
}
