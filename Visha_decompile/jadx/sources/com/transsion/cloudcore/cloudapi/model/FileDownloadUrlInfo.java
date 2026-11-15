package com.transsion.cloudcore.cloudapi.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.y45;
import java.time.LocalDateTime;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u0017J\u0010\u0010\u001d\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u0017J\u0010\u0010\u001e\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u0017JN\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b!\u0010\u0017J\u0010\u0010\"\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\"\u0010\u0015J\u001a\u0010&\u001a\u00020%2\b\u0010$\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b&\u0010'R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010(\u001a\u0004\b)\u0010\u0017R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010*\u001a\u0004\b+\u0010\u0019\"\u0004\b,\u0010-R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010.\u001a\u0004\b/\u0010\u001b\"\u0004\b0\u00101R\"\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010(\u001a\u0004\b2\u0010\u0017\"\u0004\b3\u00104R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010(\u001a\u0004\b5\u0010\u0017\"\u0004\b6\u00104R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010(\u001a\u0004\b7\u0010\u0017\"\u0004\b8\u00104¨\u00069"}, d2 = {"Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;", "Landroid/os/Parcelable;", "", "url", "", PlayAudioData.TAG_SIZE, "Ljava/time/LocalDateTime;", "expiration", "contentHashName", "contentHash", "crc64Hash", MethodDecl.initName, "(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "()J", "component3", "()Ljava/time/LocalDateTime;", "component4", "component5", "component6", "copy", "(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getUrl", "J", "getSize", "setSize", "(J)V", "Ljava/time/LocalDateTime;", "getExpiration", "setExpiration", "(Ljava/time/LocalDateTime;)V", "getContentHashName", "setContentHashName", "(Ljava/lang/String;)V", "getContentHash", "setContentHash", "getCrc64Hash", "setCrc64Hash", "cloudcore_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileDownloadUrlInfo implements Parcelable {
    public static final Parcelable.Creator<FileDownloadUrlInfo> CREATOR = new Creator();
    private String contentHash;
    private String contentHashName;
    private String crc64Hash;
    private LocalDateTime expiration;
    private long size;
    private final String url;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<FileDownloadUrlInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final FileDownloadUrlInfo createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new FileDownloadUrlInfo(parcel.readString(), parcel.readLong(), (LocalDateTime) parcel.readSerializable(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final FileDownloadUrlInfo[] newArray(int i) {
            return new FileDownloadUrlInfo[i];
        }
    }

    public FileDownloadUrlInfo(String str, long j, LocalDateTime localDateTime, String str2, String str3, String str4) {
        y45.j(str, "url");
        y45.j(str2, "contentHashName");
        y45.j(str3, "contentHash");
        y45.j(str4, "crc64Hash");
        this.url = str;
        this.size = j;
        this.expiration = localDateTime;
        this.contentHashName = str2;
        this.contentHash = str3;
        this.crc64Hash = str4;
    }

    public static FileDownloadUrlInfo copy$default(FileDownloadUrlInfo fileDownloadUrlInfo, String str, long j, LocalDateTime localDateTime, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = fileDownloadUrlInfo.url;
        }
        if ((i & 2) != 0) {
            j = fileDownloadUrlInfo.size;
        }
        long j2 = j;
        if ((i & 4) != 0) {
            localDateTime = fileDownloadUrlInfo.expiration;
        }
        LocalDateTime localDateTime2 = localDateTime;
        if ((i & 8) != 0) {
            str2 = fileDownloadUrlInfo.contentHashName;
        }
        String str5 = str2;
        if ((i & 16) != 0) {
            str3 = fileDownloadUrlInfo.contentHash;
        }
        String str6 = str3;
        if ((i & 32) != 0) {
            str4 = fileDownloadUrlInfo.crc64Hash;
        }
        return fileDownloadUrlInfo.copy(str, j2, localDateTime2, str5, str6, str4);
    }

    public final String getUrl() {
        return this.url;
    }

    public final long getSize() {
        return this.size;
    }

    public final LocalDateTime getExpiration() {
        return this.expiration;
    }

    public final String getContentHashName() {
        return this.contentHashName;
    }

    public final String getContentHash() {
        return this.contentHash;
    }

    public final String getCrc64Hash() {
        return this.crc64Hash;
    }

    public final FileDownloadUrlInfo copy(String url, long size, LocalDateTime expiration, String contentHashName, String contentHash, String crc64Hash) {
        y45.j(url, "url");
        y45.j(contentHashName, "contentHashName");
        y45.j(contentHash, "contentHash");
        y45.j(crc64Hash, "crc64Hash");
        return new FileDownloadUrlInfo(url, size, expiration, contentHashName, contentHash, crc64Hash);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FileDownloadUrlInfo)) {
            return false;
        }
        FileDownloadUrlInfo fileDownloadUrlInfo = (FileDownloadUrlInfo) other;
        return y45.e(this.url, fileDownloadUrlInfo.url) && this.size == fileDownloadUrlInfo.size && y45.e(this.expiration, fileDownloadUrlInfo.expiration) && y45.e(this.contentHashName, fileDownloadUrlInfo.contentHashName) && y45.e(this.contentHash, fileDownloadUrlInfo.contentHash) && y45.e(this.crc64Hash, fileDownloadUrlInfo.crc64Hash);
    }

    public final String getContentHash() {
        return this.contentHash;
    }

    public final String getContentHashName() {
        return this.contentHashName;
    }

    public final String getCrc64Hash() {
        return this.crc64Hash;
    }

    public final LocalDateTime getExpiration() {
        return this.expiration;
    }

    public final long getSize() {
        return this.size;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        int iHashCode = ((this.url.hashCode() * 31) + Long.hashCode(this.size)) * 31;
        LocalDateTime localDateTime = this.expiration;
        return ((((((iHashCode + (localDateTime == null ? 0 : localDateTime.hashCode())) * 31) + this.contentHashName.hashCode()) * 31) + this.contentHash.hashCode()) * 31) + this.crc64Hash.hashCode();
    }

    public final void setContentHash(String str) {
        y45.j(str, "<set-?>");
        this.contentHash = str;
    }

    public final void setContentHashName(String str) {
        y45.j(str, "<set-?>");
        this.contentHashName = str;
    }

    public final void setCrc64Hash(String str) {
        y45.j(str, "<set-?>");
        this.crc64Hash = str;
    }

    public final void setExpiration(LocalDateTime localDateTime) {
        this.expiration = localDateTime;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public String toString() {
        return "FileDownloadUrlInfo(url=" + this.url + ", size=" + this.size + ", expiration=" + this.expiration + ", contentHashName=" + this.contentHashName + ", contentHash=" + this.contentHash + ", crc64Hash=" + this.crc64Hash + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeString(this.url);
        dest.writeLong(this.size);
        dest.writeSerializable(this.expiration);
        dest.writeString(this.contentHashName);
        dest.writeString(this.contentHash);
        dest.writeString(this.crc64Hash);
    }

    public FileDownloadUrlInfo(String str, long j, LocalDateTime localDateTime, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? null : localDateTime, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? "" : str3, (i & 32) == 0 ? str4 : "");
    }
}
