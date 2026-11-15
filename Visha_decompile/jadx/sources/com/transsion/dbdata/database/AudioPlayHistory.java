package com.transsion.dbdata.database;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.transsion.push.PushConstants;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Entity(tableName = "audio_play_history")
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0013J\u0010\u0010\u0019\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001aJD\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001e\u0010\u0015J\u0010\u0010\u001f\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u001f\u0010\u0013J\u001a\u0010#\u001a\u00020\"2\b\u0010!\u001a\u0004\u0018\u00010 HÖ\u0003¢\u0006\u0004\b#\u0010$R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010%\u001a\u0004\b&\u0010\u0015\"\u0004\b'\u0010(R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010)\u001a\u0004\b*\u0010\u0017\"\u0004\b+\u0010,R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010-\u001a\u0004\b.\u0010\u0013\"\u0004\b/\u00100R\u001a\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\b\u00101\u001a\u0004\b2\u0010\u001aR\"\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u00101\u001a\u0004\b3\u0010\u001a\"\u0004\b4\u00105¨\u00066"}, d2 = {"Lcom/transsion/dbdata/database/AudioPlayHistory;", "Landroid/os/Parcelable;", "", "_data", "", "mediaId", "", "playCount", "createTime", "updateTime", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/Long;IJJ)V", "Landroid/os/Parcel;", "dest", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "()Ljava/lang/Long;", "component3", "component4", "()J", "component5", "copy", "(Ljava/lang/String;Ljava/lang/Long;IJJ)Lcom/transsion/dbdata/database/AudioPlayHistory;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "get_data", "set_data", "(Ljava/lang/String;)V", "Ljava/lang/Long;", "getMediaId", "setMediaId", "(Ljava/lang/Long;)V", "I", "getPlayCount", "setPlayCount", "(I)V", "J", "getCreateTime", "getUpdateTime", "setUpdateTime", "(J)V", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioPlayHistory implements Parcelable {
    public static final Parcelable.Creator<AudioPlayHistory> CREATOR = new a();

    @PrimaryKey
    @ColumnInfo(name = "_data")
    private String _data;

    @ColumnInfo(name = "create_time")
    private final long createTime;

    @ColumnInfo(name = "media_id")
    private Long mediaId;

    @ColumnInfo(name = "play_count")
    private int playCount;

    @ColumnInfo(name = PushConstants.PROVIDER_FIELD_UPDATE_TIME)
    private long updateTime;

    public static final class a implements Parcelable.Creator {
        @Override
        public final AudioPlayHistory createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new AudioPlayHistory(parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        @Override
        public final AudioPlayHistory[] newArray(int i) {
            return new AudioPlayHistory[i];
        }
    }

    public AudioPlayHistory(String str, Long l, int i, long j, long j2) {
        y45.j(str, "_data");
        this._data = str;
        this.mediaId = l;
        this.playCount = i;
        this.createTime = j;
        this.updateTime = j2;
    }

    public static AudioPlayHistory copy$default(AudioPlayHistory audioPlayHistory, String str, Long l, int i, long j, long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = audioPlayHistory._data;
        }
        if ((i2 & 2) != 0) {
            l = audioPlayHistory.mediaId;
        }
        Long l2 = l;
        if ((i2 & 4) != 0) {
            i = audioPlayHistory.playCount;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            j = audioPlayHistory.createTime;
        }
        long j3 = j;
        if ((i2 & 16) != 0) {
            j2 = audioPlayHistory.updateTime;
        }
        return audioPlayHistory.copy(str, l2, i3, j3, j2);
    }

    public final String get_data() {
        return this._data;
    }

    public final Long getMediaId() {
        return this.mediaId;
    }

    public final int getPlayCount() {
        return this.playCount;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    public final AudioPlayHistory copy(String _data, Long mediaId, int playCount, long createTime, long updateTime) {
        y45.j(_data, "_data");
        return new AudioPlayHistory(_data, mediaId, playCount, createTime, updateTime);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AudioPlayHistory)) {
            return false;
        }
        AudioPlayHistory audioPlayHistory = (AudioPlayHistory) other;
        return y45.e(this._data, audioPlayHistory._data) && y45.e(this.mediaId, audioPlayHistory.mediaId) && this.playCount == audioPlayHistory.playCount && this.createTime == audioPlayHistory.createTime && this.updateTime == audioPlayHistory.updateTime;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final Long getMediaId() {
        return this.mediaId;
    }

    public final int getPlayCount() {
        return this.playCount;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    public final String get_data() {
        return this._data;
    }

    public int hashCode() {
        int iHashCode = this._data.hashCode() * 31;
        Long l = this.mediaId;
        return ((((((iHashCode + (l == null ? 0 : l.hashCode())) * 31) + Integer.hashCode(this.playCount)) * 31) + Long.hashCode(this.createTime)) * 31) + Long.hashCode(this.updateTime);
    }

    public final void setMediaId(Long l) {
        this.mediaId = l;
    }

    public final void setPlayCount(int i) {
        this.playCount = i;
    }

    public final void setUpdateTime(long j) {
        this.updateTime = j;
    }

    public final void set_data(String str) {
        y45.j(str, "<set-?>");
        this._data = str;
    }

    public String toString() {
        return "AudioPlayHistory(_data=" + this._data + ", mediaId=" + this.mediaId + ", playCount=" + this.playCount + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeString(this._data);
        Long l = this.mediaId;
        if (l == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l.longValue());
        }
        dest.writeInt(this.playCount);
        dest.writeLong(this.createTime);
        dest.writeLong(this.updateTime);
    }

    public AudioPlayHistory(String str, Long l, int i, long j, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, l, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? System.currentTimeMillis() : j, (i2 & 16) != 0 ? System.currentTimeMillis() : j2);
    }
}
