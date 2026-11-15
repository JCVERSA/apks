package com.transsion.dbdata.beans.mimedia;

import defpackage.y45;
import java.io.Serializable;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010&\u001a\u00020\u0003H\u0016J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0006HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\nHÆ\u0003J\u0011\u0010-\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0003JW\u0010.\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0001J\u0013\u0010/\u001a\u00020\u00062\b\u00100\u001a\u0004\u0018\u000101HÖ\u0003J\t\u00102\u001a\u00020\nHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b\u001b\u0010\u0013R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0011\"\u0004\b\u001d\u0010\u0013R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u00063"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;", "Ljava/io/Serializable;", "mediaLibraryId", "", "mediaLibraryName", "mediaLibraryCollectFlag", "", "virtualPersonName", "virtualPersonPhoto", "mediaLibraryStatus", "", "videoList", "", "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;)V", "getMediaLibraryId", "()Ljava/lang/String;", "setMediaLibraryId", "(Ljava/lang/String;)V", "getMediaLibraryName", "setMediaLibraryName", "getMediaLibraryCollectFlag", "()Z", "setMediaLibraryCollectFlag", "(Z)V", "getVirtualPersonName", "setVirtualPersonName", "getVirtualPersonPhoto", "setVirtualPersonPhoto", "getMediaLibraryStatus", "()I", "setMediaLibraryStatus", "(I)V", "getVideoList", "()Ljava/util/List;", "setVideoList", "(Ljava/util/List;)V", "toString", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "", "hashCode", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MIMediaLibraryData implements Serializable {
    private boolean mediaLibraryCollectFlag;
    private String mediaLibraryId;
    private String mediaLibraryName;
    private int mediaLibraryStatus;
    private List<MIMediaVideoData> videoList;
    private String virtualPersonName;
    private String virtualPersonPhoto;

    public MIMediaLibraryData() {
        this(null, null, false, null, null, 0, null, 127, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static MIMediaLibraryData copy$default(MIMediaLibraryData mIMediaLibraryData, String str, String str2, boolean z, String str3, String str4, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = mIMediaLibraryData.mediaLibraryId;
        }
        if ((i2 & 2) != 0) {
            str2 = mIMediaLibraryData.mediaLibraryName;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            z = mIMediaLibraryData.mediaLibraryCollectFlag;
        }
        boolean z2 = z;
        if ((i2 & 8) != 0) {
            str3 = mIMediaLibraryData.virtualPersonName;
        }
        String str6 = str3;
        if ((i2 & 16) != 0) {
            str4 = mIMediaLibraryData.virtualPersonPhoto;
        }
        String str7 = str4;
        if ((i2 & 32) != 0) {
            i = mIMediaLibraryData.mediaLibraryStatus;
        }
        int i3 = i;
        if ((i2 & 64) != 0) {
            list = mIMediaLibraryData.videoList;
        }
        return mIMediaLibraryData.copy(str, str5, z2, str6, str7, i3, list);
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }

    public final String getMediaLibraryName() {
        return this.mediaLibraryName;
    }

    public final boolean getMediaLibraryCollectFlag() {
        return this.mediaLibraryCollectFlag;
    }

    public final String getVirtualPersonName() {
        return this.virtualPersonName;
    }

    public final String getVirtualPersonPhoto() {
        return this.virtualPersonPhoto;
    }

    public final int getMediaLibraryStatus() {
        return this.mediaLibraryStatus;
    }

    public final List<MIMediaVideoData> component7() {
        return this.videoList;
    }

    public final MIMediaLibraryData copy(String mediaLibraryId, String mediaLibraryName, boolean mediaLibraryCollectFlag, String virtualPersonName, String virtualPersonPhoto, int mediaLibraryStatus, List<MIMediaVideoData> videoList) {
        y45.j(mediaLibraryId, "mediaLibraryId");
        y45.j(mediaLibraryName, "mediaLibraryName");
        y45.j(virtualPersonName, "virtualPersonName");
        y45.j(virtualPersonPhoto, "virtualPersonPhoto");
        return new MIMediaLibraryData(mediaLibraryId, mediaLibraryName, mediaLibraryCollectFlag, virtualPersonName, virtualPersonPhoto, mediaLibraryStatus, videoList);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MIMediaLibraryData)) {
            return false;
        }
        MIMediaLibraryData mIMediaLibraryData = (MIMediaLibraryData) other;
        return y45.e(this.mediaLibraryId, mIMediaLibraryData.mediaLibraryId) && y45.e(this.mediaLibraryName, mIMediaLibraryData.mediaLibraryName) && this.mediaLibraryCollectFlag == mIMediaLibraryData.mediaLibraryCollectFlag && y45.e(this.virtualPersonName, mIMediaLibraryData.virtualPersonName) && y45.e(this.virtualPersonPhoto, mIMediaLibraryData.virtualPersonPhoto) && this.mediaLibraryStatus == mIMediaLibraryData.mediaLibraryStatus && y45.e(this.videoList, mIMediaLibraryData.videoList);
    }

    public final boolean getMediaLibraryCollectFlag() {
        return this.mediaLibraryCollectFlag;
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }

    public final String getMediaLibraryName() {
        return this.mediaLibraryName;
    }

    public final int getMediaLibraryStatus() {
        return this.mediaLibraryStatus;
    }

    public final List<MIMediaVideoData> getVideoList() {
        return this.videoList;
    }

    public final String getVirtualPersonName() {
        return this.virtualPersonName;
    }

    public final String getVirtualPersonPhoto() {
        return this.virtualPersonPhoto;
    }

    public int hashCode() {
        int iHashCode = ((((((((((this.mediaLibraryId.hashCode() * 31) + this.mediaLibraryName.hashCode()) * 31) + Boolean.hashCode(this.mediaLibraryCollectFlag)) * 31) + this.virtualPersonName.hashCode()) * 31) + this.virtualPersonPhoto.hashCode()) * 31) + Integer.hashCode(this.mediaLibraryStatus)) * 31;
        List<MIMediaVideoData> list = this.videoList;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final void setMediaLibraryCollectFlag(boolean z) {
        this.mediaLibraryCollectFlag = z;
    }

    public final void setMediaLibraryId(String str) {
        y45.j(str, "<set-?>");
        this.mediaLibraryId = str;
    }

    public final void setMediaLibraryName(String str) {
        y45.j(str, "<set-?>");
        this.mediaLibraryName = str;
    }

    public final void setMediaLibraryStatus(int i) {
        this.mediaLibraryStatus = i;
    }

    public final void setVideoList(List<MIMediaVideoData> list) {
        this.videoList = list;
    }

    public final void setVirtualPersonName(String str) {
        y45.j(str, "<set-?>");
        this.virtualPersonName = str;
    }

    public final void setVirtualPersonPhoto(String str) {
        y45.j(str, "<set-?>");
        this.virtualPersonPhoto = str;
    }

    public String toString() {
        return "MIMediaLibraryData(mediaLibraryId='" + this.mediaLibraryId + "', mediaLibraryName='" + this.mediaLibraryName + "', mediaLibraryCollectFlag=" + this.mediaLibraryCollectFlag + ", virtualPersonName='" + this.virtualPersonName + "', virtualPersonPhoto='" + this.virtualPersonPhoto + "', mediaLibraryStatus=" + this.mediaLibraryStatus + ", videoList=" + this.videoList + ")";
    }

    public MIMediaLibraryData(String str, String str2, boolean z, String str3, String str4, int i, List<MIMediaVideoData> list) {
        y45.j(str, "mediaLibraryId");
        y45.j(str2, "mediaLibraryName");
        y45.j(str3, "virtualPersonName");
        y45.j(str4, "virtualPersonPhoto");
        this.mediaLibraryId = str;
        this.mediaLibraryName = str2;
        this.mediaLibraryCollectFlag = z;
        this.virtualPersonName = str3;
        this.virtualPersonPhoto = str4;
        this.mediaLibraryStatus = i;
        this.videoList = list;
    }

    public MIMediaLibraryData(String str, String str2, boolean z, String str3, String str4, int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? "" : str4, (i2 & 32) != 0 ? 0 : i, (i2 & 64) != 0 ? null : list);
    }
}
