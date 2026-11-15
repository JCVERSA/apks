package com.transsion.dbdata.database;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Entity(indices = {@Index(name = "idx_user_behavior_media_id", unique = true, value = {"media_id"})}, tableName = "user_behavior")
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0002\b\u001c\b\u0087\b\u0018\u00002\u00020\u0001Bo\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\r\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u001dJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001dJ\u0010\u0010\u001f\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\u001bJ\u0010\u0010\"\u001a\u00020\nHÆ\u0003¢\u0006\u0004\b\"\u0010#J\u0012\u0010$\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b$\u0010#J\u0010\u0010%\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b%\u0010 J\u0010\u0010&\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b&\u0010 J\u0010\u0010'\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b'\u0010 Jz\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\r\u001a\u00020\u00072\b\b\u0002\u0010\u000e\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u0007HÆ\u0001¢\u0006\u0004\b(\u0010)J\u0010\u0010*\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b*\u0010#J\u0010\u0010+\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b+\u0010\u0019J\u001a\u0010.\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,HÖ\u0003¢\u0006\u0004\b.\u0010/R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u00100\u001a\u0004\b1\u0010\u001b\"\u0004\b2\u00103R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u00104\u001a\u0004\b5\u0010\u001d\"\u0004\b6\u00107R$\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u00104\u001a\u0004\b8\u0010\u001d\"\u0004\b9\u00107R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u0010:\u001a\u0004\b\b\u0010 \"\u0004\b;\u0010<R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\t\u00100\u001a\u0004\b=\u0010\u001b\"\u0004\b>\u00103R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010?\u001a\u0004\b@\u0010#\"\u0004\bA\u0010BR$\u0010\f\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\f\u0010?\u001a\u0004\bC\u0010#\"\u0004\bD\u0010BR\"\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\r\u0010:\u001a\u0004\b\r\u0010 \"\u0004\bE\u0010<R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010:\u001a\u0004\b\u000e\u0010 \"\u0004\bF\u0010<R\"\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010:\u001a\u0004\b\u000f\u0010 \"\u0004\bG\u0010<¨\u0006H"}, d2 = {"Lcom/transsion/dbdata/database/UserBehaviorItem;", "Landroid/os/Parcelable;", "", TtmlNode.ATTR_ID, "", "mediaId", "mediaType", "", "isVideoToAudio", "vToAConvertTime", "", "_data", "customCover", "isCollected", "isHide", "isFilter", MethodDecl.initName, "(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZ)V", "Landroid/os/Parcel;", "dest", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()J", "component2", "()Ljava/lang/Integer;", "component3", "component4", "()Z", "component5", "component6", "()Ljava/lang/String;", "component7", "component8", "component9", "component10", "copy", "(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZ)Lcom/transsion/dbdata/database/UserBehaviorItem;", "toString", "hashCode", "", "other", "equals", "(Ljava/lang/Object;)Z", "J", "getId", "setId", "(J)V", "Ljava/lang/Integer;", "getMediaId", "setMediaId", "(Ljava/lang/Integer;)V", "getMediaType", "setMediaType", "Z", "setVideoToAudio", "(Z)V", "getVToAConvertTime", "setVToAConvertTime", "Ljava/lang/String;", "get_data", "set_data", "(Ljava/lang/String;)V", "getCustomCover", "setCustomCover", "setCollected", "setHide", "setFilter", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UserBehaviorItem implements Parcelable {
    public static final Parcelable.Creator<UserBehaviorItem> CREATOR = new a();

    @ColumnInfo(name = "_data")
    private String _data;

    @ColumnInfo(name = "custom_cover")
    private String customCover;

    @PrimaryKey(autoGenerate = true)
    @ColumnInfo(name = TtmlNode.ATTR_ID)
    private long id;

    @ColumnInfo(name = "is_collected")
    private boolean isCollected;

    @ColumnInfo(name = "is_filter")
    private boolean isFilter;

    @ColumnInfo(name = "is_hide")
    private boolean isHide;

    @ColumnInfo(name = "is_video_to_audio")
    private boolean isVideoToAudio;

    @ColumnInfo(name = "media_id")
    private Integer mediaId;

    @ColumnInfo(name = SheetDialogParamsConstant.MEDIA_TYPE)
    private Integer mediaType;

    @ColumnInfo(name = "video_to_audio_convert_time")
    private long vToAConvertTime;

    public static final class a implements Parcelable.Creator {
        @Override
        public final UserBehaviorItem createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new UserBehaviorItem(parcel.readLong(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0, parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override
        public final UserBehaviorItem[] newArray(int i) {
            return new UserBehaviorItem[i];
        }
    }

    public UserBehaviorItem(long j, Integer num, Integer num2, boolean z, long j2, String str, String str2, boolean z2, boolean z3, boolean z4) {
        y45.j(str, "_data");
        this.id = j;
        this.mediaId = num;
        this.mediaType = num2;
        this.isVideoToAudio = z;
        this.vToAConvertTime = j2;
        this._data = str;
        this.customCover = str2;
        this.isCollected = z2;
        this.isHide = z3;
        this.isFilter = z4;
    }

    public final long getId() {
        return this.id;
    }

    public final boolean getIsFilter() {
        return this.isFilter;
    }

    public final Integer getMediaId() {
        return this.mediaId;
    }

    public final Integer getMediaType() {
        return this.mediaType;
    }

    public final boolean getIsVideoToAudio() {
        return this.isVideoToAudio;
    }

    public final long getVToAConvertTime() {
        return this.vToAConvertTime;
    }

    public final String get_data() {
        return this._data;
    }

    public final String getCustomCover() {
        return this.customCover;
    }

    public final boolean getIsCollected() {
        return this.isCollected;
    }

    public final boolean getIsHide() {
        return this.isHide;
    }

    public final UserBehaviorItem copy(long id, Integer mediaId, Integer mediaType, boolean isVideoToAudio, long vToAConvertTime, String _data, String customCover, boolean isCollected, boolean isHide, boolean isFilter) {
        y45.j(_data, "_data");
        return new UserBehaviorItem(id, mediaId, mediaType, isVideoToAudio, vToAConvertTime, _data, customCover, isCollected, isHide, isFilter);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserBehaviorItem)) {
            return false;
        }
        UserBehaviorItem userBehaviorItem = (UserBehaviorItem) other;
        return this.id == userBehaviorItem.id && y45.e(this.mediaId, userBehaviorItem.mediaId) && y45.e(this.mediaType, userBehaviorItem.mediaType) && this.isVideoToAudio == userBehaviorItem.isVideoToAudio && this.vToAConvertTime == userBehaviorItem.vToAConvertTime && y45.e(this._data, userBehaviorItem._data) && y45.e(this.customCover, userBehaviorItem.customCover) && this.isCollected == userBehaviorItem.isCollected && this.isHide == userBehaviorItem.isHide && this.isFilter == userBehaviorItem.isFilter;
    }

    public final String getCustomCover() {
        return this.customCover;
    }

    public final long getId() {
        return this.id;
    }

    public final Integer getMediaId() {
        return this.mediaId;
    }

    public final Integer getMediaType() {
        return this.mediaType;
    }

    public final long getVToAConvertTime() {
        return this.vToAConvertTime;
    }

    public final String get_data() {
        return this._data;
    }

    public int hashCode() {
        int iHashCode = Long.hashCode(this.id) * 31;
        Integer num = this.mediaId;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.mediaType;
        int iHashCode3 = (((((((iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31) + Boolean.hashCode(this.isVideoToAudio)) * 31) + Long.hashCode(this.vToAConvertTime)) * 31) + this._data.hashCode()) * 31;
        String str = this.customCover;
        return ((((((iHashCode3 + (str != null ? str.hashCode() : 0)) * 31) + Boolean.hashCode(this.isCollected)) * 31) + Boolean.hashCode(this.isHide)) * 31) + Boolean.hashCode(this.isFilter);
    }

    public final boolean isCollected() {
        return this.isCollected;
    }

    public final boolean isFilter() {
        return this.isFilter;
    }

    public final boolean isHide() {
        return this.isHide;
    }

    public final boolean isVideoToAudio() {
        return this.isVideoToAudio;
    }

    public final void setCollected(boolean z) {
        this.isCollected = z;
    }

    public final void setCustomCover(String str) {
        this.customCover = str;
    }

    public final void setFilter(boolean z) {
        this.isFilter = z;
    }

    public final void setHide(boolean z) {
        this.isHide = z;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setMediaId(Integer num) {
        this.mediaId = num;
    }

    public final void setMediaType(Integer num) {
        this.mediaType = num;
    }

    public final void setVToAConvertTime(long j) {
        this.vToAConvertTime = j;
    }

    public final void setVideoToAudio(boolean z) {
        this.isVideoToAudio = z;
    }

    public final void set_data(String str) {
        y45.j(str, "<set-?>");
        this._data = str;
    }

    public String toString() {
        return "UserBehaviorItem(id=" + this.id + ", mediaId=" + this.mediaId + ", mediaType=" + this.mediaType + ", isVideoToAudio=" + this.isVideoToAudio + ", vToAConvertTime=" + this.vToAConvertTime + ", _data=" + this._data + ", customCover=" + this.customCover + ", isCollected=" + this.isCollected + ", isHide=" + this.isHide + ", isFilter=" + this.isFilter + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeLong(this.id);
        Integer num = this.mediaId;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        Integer num2 = this.mediaType;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        dest.writeInt(this.isVideoToAudio ? 1 : 0);
        dest.writeLong(this.vToAConvertTime);
        dest.writeString(this._data);
        dest.writeString(this.customCover);
        dest.writeInt(this.isCollected ? 1 : 0);
        dest.writeInt(this.isHide ? 1 : 0);
        dest.writeInt(this.isFilter ? 1 : 0);
    }

    public UserBehaviorItem(long j, Integer num, Integer num2, boolean z, long j2, String str, String str2, boolean z2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : num2, (i & 8) != 0 ? false : z, (i & 16) != 0 ? 0L : j2, str, (i & 64) != 0 ? null : str2, (i & 128) != 0 ? false : z2, (i & 256) != 0 ? false : z3, (i & 512) != 0 ? false : z4);
    }
}
