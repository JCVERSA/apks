package com.transsion.dbdata.database;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;

@Entity(tableName = "playlist")
@Keep
public class PlayList implements Parcelable {
    public static final Parcelable.Creator<PlayList> CREATOR = new a();
    public static final int URI_TYPE_IMG = 1;
    public static final int URI_TYPE_MUSIC = 0;

    @Ignore
    public int count;

    @PrimaryKey(autoGenerate = true)
    public int id;

    @Ignore
    public boolean isCustomCover;

    @ColumnInfo(name = "last_play_time", typeAffinity = 3)
    public long last_play_time;

    @Ignore
    public int listFlag;

    @Ignore
    public int mCategory;

    @ColumnInfo(name = "name")
    public String name;

    @ColumnInfo(name = "setup_time", typeAffinity = 3)
    public long setup_time;

    @Ignore
    public int sort;

    @Ignore
    public Uri uri;

    @Ignore
    public int uriType;

    public class a implements Parcelable.Creator {
        @Override
        public PlayList createFromParcel(Parcel parcel) {
            return new PlayList(parcel);
        }

        @Override
        public PlayList[] newArray(int i) {
            return new PlayList[i];
        }
    }

    public PlayList(String str) {
        this.name = str;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlayList{id=" + this.id + ", name='" + this.name + "', count=" + this.count + ", isCustomCover=" + this.isCustomCover + ", uriType=" + this.uriType + ", uri=" + this.uri + ", listFlag=" + this.listFlag + '}';
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeString(this.name);
        parcel.writeInt(this.sort);
        parcel.writeLong(this.setup_time);
        parcel.writeLong(this.last_play_time);
        parcel.writeInt(this.count);
        parcel.writeInt(this.listFlag);
        parcel.writeParcelable(this.uri, i);
        parcel.writeInt(this.uriType);
        parcel.writeInt(this.isCustomCover ? 1 : 0);
    }

    public PlayList(Parcel parcel) {
        this.id = parcel.readInt();
        this.name = parcel.readString();
        this.sort = parcel.readInt();
        this.setup_time = parcel.readLong();
        this.last_play_time = parcel.readLong();
        this.count = parcel.readInt();
        this.listFlag = parcel.readInt();
        this.uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.uriType = parcel.readInt();
        this.isCustomCover = parcel.readInt() == 1;
    }
}
