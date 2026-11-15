package com.transsion.dbdata.database;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.transsion.push.PushConstants;
import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Entity(tableName = "playlist_item")
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u0014J\u0010\u0010\u001a\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u001a\u0010\u0014J\u0010\u0010\u001b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u0016J\u0010\u0010\u001c\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u001c\u0010\u0016JL\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u001f\u0010\u0018J\u0010\u0010 \u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b \u0010\u0014J\u001a\u0010$\u001a\u00020#2\b\u0010\"\u001a\u0004\u0018\u00010!HÖ\u0003¢\u0006\u0004\b$\u0010%R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010&\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010)R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010*\u001a\u0004\b+\u0010\u0018\"\u0004\b,\u0010-R\u001a\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010.\u001a\u0004\b/\u0010\u0014R\u001a\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010.\u001a\u0004\b0\u0010\u0014R\u001a\u0010\t\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010&\u001a\u0004\b1\u0010\u0016R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010&\u001a\u0004\b2\u0010\u0016\"\u0004\b3\u0010)¨\u00064"}, d2 = {"Lcom/transsion/dbdata/database/PlayListItem;", "Landroid/os/Parcelable;", "", TtmlNode.ATTR_ID, "", "name", "", CloudItem.KEY_CATEGORY, "createType", "createTime", "updateTime", MethodDecl.initName, "(JLjava/lang/String;IIJJ)V", "Landroid/os/Parcel;", "dest", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()J", "component2", "()Ljava/lang/String;", "component3", "component4", "component5", "component6", "copy", "(JLjava/lang/String;IIJJ)Lcom/transsion/dbdata/database/PlayListItem;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getId", "setId", "(J)V", "Ljava/lang/String;", "getName", "setName", "(Ljava/lang/String;)V", "I", "getCategory", "getCreateType", "getCreateTime", "getUpdateTime", "setUpdateTime", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlayListItem implements Parcelable {
    public static final Parcelable.Creator<PlayListItem> CREATOR = new a();

    @ColumnInfo(name = CloudItem.KEY_CATEGORY)
    private final int category;

    @ColumnInfo(name = "create_time")
    private final long createTime;

    @ColumnInfo(name = "create_type")
    private final int createType;

    @PrimaryKey(autoGenerate = true)
    @ColumnInfo(name = TtmlNode.ATTR_ID)
    private long id;

    @ColumnInfo(name = "name")
    private String name;

    @ColumnInfo(name = PushConstants.PROVIDER_FIELD_UPDATE_TIME)
    private long updateTime;

    public static final class a implements Parcelable.Creator {
        @Override
        public final PlayListItem createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new PlayListItem(parcel.readLong(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        @Override
        public final PlayListItem[] newArray(int i) {
            return new PlayListItem[i];
        }
    }

    public PlayListItem(long j, String str, int i, int i2, long j2, long j3) {
        y45.j(str, "name");
        this.id = j;
        this.name = str;
        this.category = i;
        this.createType = i2;
        this.createTime = j2;
        this.updateTime = j3;
    }

    public final long getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final int getCategory() {
        return this.category;
    }

    public final int getCreateType() {
        return this.createType;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    public final PlayListItem copy(long id, String name, int category, int createType, long createTime, long updateTime) {
        y45.j(name, "name");
        return new PlayListItem(id, name, category, createType, createTime, updateTime);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayListItem)) {
            return false;
        }
        PlayListItem playListItem = (PlayListItem) other;
        return this.id == playListItem.id && y45.e(this.name, playListItem.name) && this.category == playListItem.category && this.createType == playListItem.createType && this.createTime == playListItem.createTime && this.updateTime == playListItem.updateTime;
    }

    public final int getCategory() {
        return this.category;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final int getCreateType() {
        return this.createType;
    }

    public final long getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final long getUpdateTime() {
        return this.updateTime;
    }

    public int hashCode() {
        return (((((((((Long.hashCode(this.id) * 31) + this.name.hashCode()) * 31) + Integer.hashCode(this.category)) * 31) + Integer.hashCode(this.createType)) * 31) + Long.hashCode(this.createTime)) * 31) + Long.hashCode(this.updateTime);
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setName(String str) {
        y45.j(str, "<set-?>");
        this.name = str;
    }

    public final void setUpdateTime(long j) {
        this.updateTime = j;
    }

    public String toString() {
        return "PlayListItem(id=" + this.id + ", name=" + this.name + ", category=" + this.category + ", createType=" + this.createType + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        y45.j(dest, "dest");
        dest.writeLong(this.id);
        dest.writeString(this.name);
        dest.writeInt(this.category);
        dest.writeInt(this.createType);
        dest.writeLong(this.createTime);
        dest.writeLong(this.updateTime);
    }

    public PlayListItem(long j, String str, int i, int i2, long j2, long j3, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0L : j, str, i, i2, (i3 & 16) != 0 ? System.currentTimeMillis() : j2, (i3 & 32) != 0 ? System.currentTimeMillis() : j3);
    }
}
