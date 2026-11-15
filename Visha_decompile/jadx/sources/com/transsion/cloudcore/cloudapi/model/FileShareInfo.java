package com.transsion.cloudcore.cloudapi.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0002\b\u001f\b\u0087\b\u0018\u00002\u00020\u0001By\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001cJ\u0010\u0010\u001f\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\u001cJ\u0012\u0010\"\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\"\u0010\u001cJ\u0012\u0010#\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b#\u0010\u001cJ\u0010\u0010$\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b$\u0010\u001cJ\u0010\u0010%\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b%\u0010&J\u0010\u0010'\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b'\u0010\u001cJ\u0010\u0010(\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b(\u0010\u001cJ\u0084\u0001\u0010)\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b)\u0010*J\u0010\u0010+\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b+\u0010\u001cJ\u0010\u0010,\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b,\u0010\u001aJ\u001a\u0010/\u001a\u00020\f2\b\u0010.\u001a\u0004\u0018\u00010-HÖ\u0003¢\u0006\u0004\b/\u00100R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u00101\u001a\u0004\b2\u0010\u001cR$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u00101\u001a\u0004\b3\u0010\u001c\"\u0004\b4\u00105R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u00101\u001a\u0004\b6\u0010\u001c\"\u0004\b7\u00105R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u00108\u001a\u0004\b9\u0010 \"\u0004\b:\u0010;R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u00101\u001a\u0004\b<\u0010\u001c\"\u0004\b=\u00105R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u00101\u001a\u0004\b>\u0010\u001c\"\u0004\b?\u00105R$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u00101\u001a\u0004\b@\u0010\u001c\"\u0004\bA\u00105R\"\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u00101\u001a\u0004\bB\u0010\u001c\"\u0004\bC\u00105R\"\u0010\r\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010D\u001a\u0004\bE\u0010&\"\u0004\bF\u0010GR\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u00101\u001a\u0004\bH\u0010\u001c\"\u0004\bI\u00105R\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u00101\u001a\u0004\bJ\u0010\u001c\"\u0004\bK\u00105¨\u0006L"}, d2 = {"Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;", "Landroid/os/Parcelable;", "", "shareId", Progress.FILE_NAME, "fileId", "", "fileSize", "fileCoverUrl", "shareCreatorName", "shareCreatorId", "shareToken", "", "shareExpired", TtmlNode.TAG_REGION, "pageHost", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "()J", "component5", "component6", "component7", "component8", "component9", "()Z", "component10", "component11", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileShareInfo;", "toString", "hashCode", "", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getShareId", "getFileName", "setFileName", "(Ljava/lang/String;)V", "getFileId", "setFileId", "J", "getFileSize", "setFileSize", "(J)V", "getFileCoverUrl", "setFileCoverUrl", "getShareCreatorName", "setShareCreatorName", "getShareCreatorId", "setShareCreatorId", "getShareToken", "setShareToken", "Z", "getShareExpired", "setShareExpired", "(Z)V", "getRegion", "setRegion", "getPageHost", "setPageHost", "cloudcore_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileShareInfo implements Parcelable {
    public static final Parcelable.Creator<FileShareInfo> CREATOR = new Creator();
    private String fileCoverUrl;
    private String fileId;
    private String fileName;
    private long fileSize;
    private String pageHost;
    private String region;
    private String shareCreatorId;
    private String shareCreatorName;
    private boolean shareExpired;
    private final String shareId;
    private String shareToken;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<FileShareInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final FileShareInfo createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new FileShareInfo(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final FileShareInfo[] newArray(int i) {
            return new FileShareInfo[i];
        }
    }

    public FileShareInfo(String str, String str2, String str3, long j, String str4, String str5, String str6, String str7, boolean z, String str8, String str9) {
        y45.j(str, "shareId");
        y45.j(str3, "fileId");
        y45.j(str4, "fileCoverUrl");
        y45.j(str7, "shareToken");
        y45.j(str8, TtmlNode.TAG_REGION);
        y45.j(str9, "pageHost");
        this.shareId = str;
        this.fileName = str2;
        this.fileId = str3;
        this.fileSize = j;
        this.fileCoverUrl = str4;
        this.shareCreatorName = str5;
        this.shareCreatorId = str6;
        this.shareToken = str7;
        this.shareExpired = z;
        this.region = str8;
        this.pageHost = str9;
    }

    public final String getShareId() {
        return this.shareId;
    }

    public final String getRegion() {
        return this.region;
    }

    public final String getPageHost() {
        return this.pageHost;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final String getFileCoverUrl() {
        return this.fileCoverUrl;
    }

    public final String getShareCreatorName() {
        return this.shareCreatorName;
    }

    public final String getShareCreatorId() {
        return this.shareCreatorId;
    }

    public final String getShareToken() {
        return this.shareToken;
    }

    public final boolean getShareExpired() {
        return this.shareExpired;
    }

    public final FileShareInfo copy(String shareId, String fileName, String fileId, long fileSize, String fileCoverUrl, String shareCreatorName, String shareCreatorId, String shareToken, boolean shareExpired, String region, String pageHost) {
        y45.j(shareId, "shareId");
        y45.j(fileId, "fileId");
        y45.j(fileCoverUrl, "fileCoverUrl");
        y45.j(shareToken, "shareToken");
        y45.j(region, TtmlNode.TAG_REGION);
        y45.j(pageHost, "pageHost");
        return new FileShareInfo(shareId, fileName, fileId, fileSize, fileCoverUrl, shareCreatorName, shareCreatorId, shareToken, shareExpired, region, pageHost);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FileShareInfo)) {
            return false;
        }
        FileShareInfo fileShareInfo = (FileShareInfo) other;
        return y45.e(this.shareId, fileShareInfo.shareId) && y45.e(this.fileName, fileShareInfo.fileName) && y45.e(this.fileId, fileShareInfo.fileId) && this.fileSize == fileShareInfo.fileSize && y45.e(this.fileCoverUrl, fileShareInfo.fileCoverUrl) && y45.e(this.shareCreatorName, fileShareInfo.shareCreatorName) && y45.e(this.shareCreatorId, fileShareInfo.shareCreatorId) && y45.e(this.shareToken, fileShareInfo.shareToken) && this.shareExpired == fileShareInfo.shareExpired && y45.e(this.region, fileShareInfo.region) && y45.e(this.pageHost, fileShareInfo.pageHost);
    }

    public final String getFileCoverUrl() {
        return this.fileCoverUrl;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final String getPageHost() {
        return this.pageHost;
    }

    public final String getRegion() {
        return this.region;
    }

    public final String getShareCreatorId() {
        return this.shareCreatorId;
    }

    public final String getShareCreatorName() {
        return this.shareCreatorName;
    }

    public final boolean getShareExpired() {
        return this.shareExpired;
    }

    public final String getShareId() {
        return this.shareId;
    }

    public final String getShareToken() {
        return this.shareToken;
    }

    public int hashCode() {
        int iHashCode = this.shareId.hashCode() * 31;
        String str = this.fileName;
        int iHashCode2 = (((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.fileId.hashCode()) * 31) + Long.hashCode(this.fileSize)) * 31) + this.fileCoverUrl.hashCode()) * 31;
        String str2 = this.shareCreatorName;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.shareCreatorId;
        return ((((((((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.shareToken.hashCode()) * 31) + Boolean.hashCode(this.shareExpired)) * 31) + this.region.hashCode()) * 31) + this.pageHost.hashCode();
    }

    public final void setFileCoverUrl(String str) {
        y45.j(str, "<set-?>");
        this.fileCoverUrl = str;
    }

    public final void setFileId(String str) {
        y45.j(str, "<set-?>");
        this.fileId = str;
    }

    public final void setFileName(String str) {
        this.fileName = str;
    }

    public final void setFileSize(long j) {
        this.fileSize = j;
    }

    public final void setPageHost(String str) {
        y45.j(str, "<set-?>");
        this.pageHost = str;
    }

    public final void setRegion(String str) {
        y45.j(str, "<set-?>");
        this.region = str;
    }

    public final void setShareCreatorId(String str) {
        this.shareCreatorId = str;
    }

    public final void setShareCreatorName(String str) {
        this.shareCreatorName = str;
    }

    public final void setShareExpired(boolean z) {
        this.shareExpired = z;
    }

    public final void setShareToken(String str) {
        y45.j(str, "<set-?>");
        this.shareToken = str;
    }

    public String toString() {
        return "FileShareInfo(shareId=" + this.shareId + ", fileName=" + this.fileName + ", fileId=" + this.fileId + ", fileSize=" + this.fileSize + ", fileCoverUrl=" + this.fileCoverUrl + ", shareCreatorName=" + this.shareCreatorName + ", shareCreatorId=" + this.shareCreatorId + ", shareToken=" + this.shareToken + ", shareExpired=" + this.shareExpired + ", region=" + this.region + ", pageHost=" + this.pageHost + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeString(this.shareId);
        dest.writeString(this.fileName);
        dest.writeString(this.fileId);
        dest.writeLong(this.fileSize);
        dest.writeString(this.fileCoverUrl);
        dest.writeString(this.shareCreatorName);
        dest.writeString(this.shareCreatorId);
        dest.writeString(this.shareToken);
        dest.writeInt(this.shareExpired ? 1 : 0);
        dest.writeString(this.region);
        dest.writeString(this.pageHost);
    }

    public FileShareInfo(String str, String str2, String str3, long j, String str4, String str5, String str6, String str7, boolean z, String str8, String str9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? "" : str4, (i & 32) != 0 ? null : str5, (i & 64) == 0 ? str6 : null, (i & 128) != 0 ? "" : str7, (i & 256) != 0 ? false : z, (i & 512) != 0 ? "" : str8, (i & 1024) == 0 ? str9 : "");
    }
}
