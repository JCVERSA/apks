package com.transsion.dbdata.database;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Entity(foreignKeys = {@ForeignKey(childColumns = {"playlist_id"}, entity = PlayListItem.class, onDelete = 5, onUpdate = 5, parentColumns = {TtmlNode.ATTR_ID})}, indices = {@Index(name = "idx_media_playlist_link", orders = {Index.Order.ASC, Index.Order.ASC}, value = {"playlist_id", "media_id"})}, tableName = "media_playlist_item")
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0013J\u0010\u0010\u0018\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0015J\u0010\u0010\u0019\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJB\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u001d\u0010\u001aJ\u0010\u0010\u001e\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u001e\u0010\u0013J\u001a\u0010\"\u001a\u00020!2\b\u0010 \u001a\u0004\u0018\u00010\u001fHÖ\u0003¢\u0006\u0004\b\"\u0010#R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010$\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010'R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0004\u0010$\u001a\u0004\b(\u0010\u0015R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010)\u001a\u0004\b*\u0010\u0013\"\u0004\b+\u0010,R\u001a\u0010\u0007\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010$\u001a\u0004\b-\u0010\u0015R\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u0010.\u001a\u0004\b/\u0010\u001a\"\u0004\b0\u00101¨\u00062"}, d2 = {"Lcom/transsion/dbdata/database/PlayListMediaItem;", "Landroid/os/Parcelable;", "", TtmlNode.ATTR_ID, "playlistId", "", "mediaId", "recordTime", "", "_data", MethodDecl.initName, "(JJIJLjava/lang/String;)V", "Landroid/os/Parcel;", "dest", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()J", "component2", "component3", "component4", "component5", "()Ljava/lang/String;", "copy", "(JJIJLjava/lang/String;)Lcom/transsion/dbdata/database/PlayListMediaItem;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getId", "setId", "(J)V", "getPlaylistId", "I", "getMediaId", "setMediaId", "(I)V", "getRecordTime", "Ljava/lang/String;", "get_data", "set_data", "(Ljava/lang/String;)V", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlayListMediaItem implements Parcelable {
    public static final Parcelable.Creator<PlayListMediaItem> CREATOR = new a();

    @ColumnInfo(name = "_data")
    private String _data;

    @PrimaryKey(autoGenerate = true)
    @ColumnInfo(name = TtmlNode.ATTR_ID)
    private long id;

    @ColumnInfo(name = "media_id")
    private int mediaId;

    @ColumnInfo(name = "playlist_id")
    private final long playlistId;

    @ColumnInfo(name = "record_time")
    private final long recordTime;

    public static final class a implements Parcelable.Creator {
        @Override
        public final PlayListMediaItem createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new PlayListMediaItem(parcel.readLong(), parcel.readLong(), parcel.readInt(), parcel.readLong(), parcel.readString());
        }

        @Override
        public final PlayListMediaItem[] newArray(int i) {
            return new PlayListMediaItem[i];
        }
    }

    public PlayListMediaItem(long j, long j2, int i, long j3, String str) {
        y45.j(str, "_data");
        this.id = j;
        this.playlistId = j2;
        this.mediaId = i;
        this.recordTime = j3;
        this._data = str;
    }

    public final long getId() {
        return this.id;
    }

    public final long getPlaylistId() {
        return this.playlistId;
    }

    public final int getMediaId() {
        return this.mediaId;
    }

    public final long getRecordTime() {
        return this.recordTime;
    }

    public final String get_data() {
        return this._data;
    }

    public final PlayListMediaItem copy(long id, long playlistId, int mediaId, long recordTime, String _data) {
        y45.j(_data, "_data");
        return new PlayListMediaItem(id, playlistId, mediaId, recordTime, _data);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayListMediaItem)) {
            return false;
        }
        PlayListMediaItem playListMediaItem = (PlayListMediaItem) other;
        return this.id == playListMediaItem.id && this.playlistId == playListMediaItem.playlistId && this.mediaId == playListMediaItem.mediaId && this.recordTime == playListMediaItem.recordTime && y45.e(this._data, playListMediaItem._data);
    }

    public final long getId() {
        return this.id;
    }

    public final int getMediaId() {
        return this.mediaId;
    }

    public final long getPlaylistId() {
        return this.playlistId;
    }

    public final long getRecordTime() {
        return this.recordTime;
    }

    public final String get_data() {
        return this._data;
    }

    public int hashCode() {
        return (((((((Long.hashCode(this.id) * 31) + Long.hashCode(this.playlistId)) * 31) + Integer.hashCode(this.mediaId)) * 31) + Long.hashCode(this.recordTime)) * 31) + this._data.hashCode();
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setMediaId(int i) {
        this.mediaId = i;
    }

    public final void set_data(String str) {
        y45.j(str, "<set-?>");
        this._data = str;
    }

    public String toString() {
        return "PlayListMediaItem(id=" + this.id + ", playlistId=" + this.playlistId + ", mediaId=" + this.mediaId + ", recordTime=" + this.recordTime + ", _data=" + this._data + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeLong(this.id);
        dest.writeLong(this.playlistId);
        dest.writeInt(this.mediaId);
        dest.writeLong(this.recordTime);
        dest.writeString(this._data);
    }

    public PlayListMediaItem(long j, long j2, int i, long j3, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j, j2, i, (i2 & 8) != 0 ? System.currentTimeMillis() : j3, str);
    }
}
