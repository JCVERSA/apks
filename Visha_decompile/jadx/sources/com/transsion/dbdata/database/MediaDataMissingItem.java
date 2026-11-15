package com.transsion.dbdata.database;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Entity(tableName = "media_data_missing")
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\"\b\u0087\b\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001aJ\u0010\u0010\u001e\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001aJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\u001f\u0010 J\u0012\u0010!\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\u001cJ\u0012\u0010\"\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\"\u0010\u001cJ\u0012\u0010#\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b#\u0010\u001cJ\u0012\u0010$\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b$\u0010%J\u0012\u0010&\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b&\u0010%J\u0012\u0010'\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b'\u0010%J\u0012\u0010(\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b(\u0010\u001cJ\u0012\u0010)\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b)\u0010\u001cJ\u009a\u0001\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b*\u0010+J\u0010\u0010,\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b,\u0010\u001cJ\u0010\u0010-\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b-\u0010\u001aJ\u001a\u00101\u001a\u0002002\b\u0010/\u001a\u0004\u0018\u00010.HÖ\u0003¢\u0006\u0004\b1\u00102R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u00103\u001a\u0004\b4\u0010\u001cR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u00105\u001a\u0004\b6\u0010\u001a\"\u0004\b7\u00108R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u00105\u001a\u0004\b9\u0010\u001a\"\u0004\b:\u00108R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u0010;\u001a\u0004\b<\u0010 \"\u0004\b=\u0010>R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u00103\u001a\u0004\b?\u0010\u001c\"\u0004\b@\u0010AR$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u00103\u001a\u0004\bB\u0010\u001c\"\u0004\bC\u0010AR$\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u00103\u001a\u0004\bD\u0010\u001c\"\u0004\bE\u0010AR$\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010F\u001a\u0004\bG\u0010%\"\u0004\bH\u0010IR$\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010F\u001a\u0004\bJ\u0010%\"\u0004\bK\u0010IR$\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010F\u001a\u0004\bL\u0010%\"\u0004\bM\u0010IR$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u00103\u001a\u0004\bN\u0010\u001c\"\u0004\bO\u0010AR$\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0010\u00103\u001a\u0004\bP\u0010\u001c\"\u0004\bQ\u0010A¨\u0006R"}, d2 = {"Lcom/transsion/dbdata/database/MediaDataMissingItem;", "Landroid/os/Parcelable;", "", "_data", "", "mediaId", "mediaType", "", "duration", "artist", "album", "albumYear", "width", "height", "mediaSize", "mediaAlias", "customCoverPath", MethodDecl.initName, "(Ljava/lang/String;IILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "()Ljava/lang/Long;", "component5", "component6", "component7", "component8", "()Ljava/lang/Integer;", "component9", "component10", "component11", "component12", "copy", "(Ljava/lang/String;IILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/dbdata/database/MediaDataMissingItem;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "get_data", "I", "getMediaId", "setMediaId", "(I)V", "getMediaType", "setMediaType", "Ljava/lang/Long;", "getDuration", "setDuration", "(Ljava/lang/Long;)V", "getArtist", "setArtist", "(Ljava/lang/String;)V", "getAlbum", "setAlbum", "getAlbumYear", "setAlbumYear", "Ljava/lang/Integer;", "getWidth", "setWidth", "(Ljava/lang/Integer;)V", "getHeight", "setHeight", "getMediaSize", "setMediaSize", "getMediaAlias", "setMediaAlias", "getCustomCoverPath", "setCustomCoverPath", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaDataMissingItem implements Parcelable {
    public static final Parcelable.Creator<MediaDataMissingItem> CREATOR = new a();

    @PrimaryKey
    @ColumnInfo(name = "_data")
    private final String _data;

    @ColumnInfo(name = "album")
    private String album;

    @ColumnInfo(name = "album_year")
    private String albumYear;

    @ColumnInfo(name = "artist")
    private String artist;

    @ColumnInfo(name = "custom_cover_path")
    private String customCoverPath;

    @ColumnInfo(name = "duration")
    private Long duration;

    @ColumnInfo(name = "height")
    private Integer height;

    @ColumnInfo(name = "media_alias")
    private String mediaAlias;

    @ColumnInfo(name = "media_id")
    private int mediaId;

    @ColumnInfo(name = "media_size")
    private Integer mediaSize;

    @ColumnInfo(name = SheetDialogParamsConstant.MEDIA_TYPE)
    private int mediaType;

    @ColumnInfo(name = "width")
    private Integer width;

    public static final class a implements Parcelable.Creator {
        @Override
        public final MediaDataMissingItem createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new MediaDataMissingItem(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString());
        }

        @Override
        public final MediaDataMissingItem[] newArray(int i) {
            return new MediaDataMissingItem[i];
        }
    }

    public MediaDataMissingItem(String str, int i, int i2, Long l, String str2, String str3, String str4, Integer num, Integer num2, Integer num3, String str5, String str6) {
        y45.j(str, "_data");
        this._data = str;
        this.mediaId = i;
        this.mediaType = i2;
        this.duration = l;
        this.artist = str2;
        this.album = str3;
        this.albumYear = str4;
        this.width = num;
        this.height = num2;
        this.mediaSize = num3;
        this.mediaAlias = str5;
        this.customCoverPath = str6;
    }

    public final String get_data() {
        return this._data;
    }

    public final Integer getMediaSize() {
        return this.mediaSize;
    }

    public final String getMediaAlias() {
        return this.mediaAlias;
    }

    public final String getCustomCoverPath() {
        return this.customCoverPath;
    }

    public final int getMediaId() {
        return this.mediaId;
    }

    public final int getMediaType() {
        return this.mediaType;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final String getArtist() {
        return this.artist;
    }

    public final String getAlbum() {
        return this.album;
    }

    public final String getAlbumYear() {
        return this.albumYear;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public final Integer getHeight() {
        return this.height;
    }

    public final MediaDataMissingItem copy(String _data, int mediaId, int mediaType, Long duration, String artist, String album, String albumYear, Integer width, Integer height, Integer mediaSize, String mediaAlias, String customCoverPath) {
        y45.j(_data, "_data");
        return new MediaDataMissingItem(_data, mediaId, mediaType, duration, artist, album, albumYear, width, height, mediaSize, mediaAlias, customCoverPath);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MediaDataMissingItem)) {
            return false;
        }
        MediaDataMissingItem mediaDataMissingItem = (MediaDataMissingItem) other;
        return y45.e(this._data, mediaDataMissingItem._data) && this.mediaId == mediaDataMissingItem.mediaId && this.mediaType == mediaDataMissingItem.mediaType && y45.e(this.duration, mediaDataMissingItem.duration) && y45.e(this.artist, mediaDataMissingItem.artist) && y45.e(this.album, mediaDataMissingItem.album) && y45.e(this.albumYear, mediaDataMissingItem.albumYear) && y45.e(this.width, mediaDataMissingItem.width) && y45.e(this.height, mediaDataMissingItem.height) && y45.e(this.mediaSize, mediaDataMissingItem.mediaSize) && y45.e(this.mediaAlias, mediaDataMissingItem.mediaAlias) && y45.e(this.customCoverPath, mediaDataMissingItem.customCoverPath);
    }

    public final String getAlbum() {
        return this.album;
    }

    public final String getAlbumYear() {
        return this.albumYear;
    }

    public final String getArtist() {
        return this.artist;
    }

    public final String getCustomCoverPath() {
        return this.customCoverPath;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final Integer getHeight() {
        return this.height;
    }

    public final String getMediaAlias() {
        return this.mediaAlias;
    }

    public final int getMediaId() {
        return this.mediaId;
    }

    public final Integer getMediaSize() {
        return this.mediaSize;
    }

    public final int getMediaType() {
        return this.mediaType;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public final String get_data() {
        return this._data;
    }

    public int hashCode() {
        int iHashCode = ((((this._data.hashCode() * 31) + Integer.hashCode(this.mediaId)) * 31) + Integer.hashCode(this.mediaType)) * 31;
        Long l = this.duration;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.artist;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.album;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.albumYear;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.width;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.height;
        int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.mediaSize;
        int iHashCode8 = (iHashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str4 = this.mediaAlias;
        int iHashCode9 = (iHashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.customCoverPath;
        return iHashCode9 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setAlbum(String str) {
        this.album = str;
    }

    public final void setAlbumYear(String str) {
        this.albumYear = str;
    }

    public final void setArtist(String str) {
        this.artist = str;
    }

    public final void setCustomCoverPath(String str) {
        this.customCoverPath = str;
    }

    public final void setDuration(Long l) {
        this.duration = l;
    }

    public final void setHeight(Integer num) {
        this.height = num;
    }

    public final void setMediaAlias(String str) {
        this.mediaAlias = str;
    }

    public final void setMediaId(int i) {
        this.mediaId = i;
    }

    public final void setMediaSize(Integer num) {
        this.mediaSize = num;
    }

    public final void setMediaType(int i) {
        this.mediaType = i;
    }

    public final void setWidth(Integer num) {
        this.width = num;
    }

    public String toString() {
        return "MediaDataMissingItem(_data=" + this._data + ", mediaId=" + this.mediaId + ", mediaType=" + this.mediaType + ", duration=" + this.duration + ", artist=" + this.artist + ", album=" + this.album + ", albumYear=" + this.albumYear + ", width=" + this.width + ", height=" + this.height + ", mediaSize=" + this.mediaSize + ", mediaAlias=" + this.mediaAlias + ", customCoverPath=" + this.customCoverPath + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeString(this._data);
        dest.writeInt(this.mediaId);
        dest.writeInt(this.mediaType);
        Long l = this.duration;
        if (l == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l.longValue());
        }
        dest.writeString(this.artist);
        dest.writeString(this.album);
        dest.writeString(this.albumYear);
        Integer num = this.width;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.height;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        Integer num3 = this.mediaSize;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        dest.writeString(this.mediaAlias);
        dest.writeString(this.customCoverPath);
    }

    public MediaDataMissingItem(String str, int i, int i2, Long l, String str2, String str3, String str4, Integer num, Integer num2, Integer num3, String str5, String str6, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, i2, (i3 & 8) != 0 ? null : l, (i3 & 16) != 0 ? null : str2, (i3 & 32) != 0 ? null : str3, (i3 & 64) != 0 ? null : str4, (i3 & 128) != 0 ? null : num, (i3 & 256) != 0 ? null : num2, (i3 & 512) != 0 ? null : num3, (i3 & 1024) != 0 ? null : str5, (i3 & 2048) != 0 ? null : str6);
    }
}
