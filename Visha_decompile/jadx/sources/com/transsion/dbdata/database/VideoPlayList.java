package com.transsion.dbdata.database;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;

@Entity(tableName = "video_playlist")
public class VideoPlayList implements Parcelable {
    public static final Parcelable.Creator<VideoPlayList> CREATOR = new a();

    @Ignore
    public int count;

    @PrimaryKey(autoGenerate = true)
    public int id;

    @ColumnInfo(name = "last_play_time", typeAffinity = 3)
    public long last_play_time;

    @Ignore
    public int listFlag;

    @Ignore
    public int mCategory;

    @ColumnInfo(name = "name", typeAffinity = 2)
    public String name;

    @Ignore
    public int playlistFlag;

    @ColumnInfo(name = "setup_time", typeAffinity = 3)
    public long setup_time;

    @Ignore
    public int sort;

    @Ignore
    public Uri uri;

    public class a implements Parcelable.Creator {
        @Override
        public VideoPlayList createFromParcel(Parcel parcel) {
            return new VideoPlayList(parcel);
        }

        @Override
        public VideoPlayList[] newArray(int i) {
            return new VideoPlayList[i];
        }
    }

    public VideoPlayList() {
    }

    public static VideoPlayList createTempFavoriteList() {
        VideoPlayList videoPlayList = new VideoPlayList();
        videoPlayList.playlistFlag = 2;
        videoPlayList.count = 0;
        videoPlayList.name = "favorites";
        return videoPlayList;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.id = parcel.readInt();
        this.name = parcel.readString();
        this.sort = parcel.readInt();
        this.setup_time = parcel.readLong();
        this.last_play_time = parcel.readLong();
        this.count = parcel.readInt();
        this.listFlag = parcel.readInt();
        this.uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.playlistFlag = parcel.readInt();
    }

    public String toString() {
        return "VideoPlayList{id=" + this.id + ", name=" + this.name + ", count='" + this.count + "', uri='" + this.uri + "', listFlag='" + this.listFlag + "'}";
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
        parcel.writeInt(this.playlistFlag);
    }

    public VideoPlayList(Parcel parcel) {
        this.id = parcel.readInt();
        this.name = parcel.readString();
        this.sort = parcel.readInt();
        this.setup_time = parcel.readLong();
        this.last_play_time = parcel.readLong();
        this.count = parcel.readInt();
        this.listFlag = parcel.readInt();
        this.uri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.playlistFlag = parcel.readInt();
    }
}
