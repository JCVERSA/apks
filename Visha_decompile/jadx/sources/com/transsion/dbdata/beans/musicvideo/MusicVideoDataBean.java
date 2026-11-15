package com.transsion.dbdata.beans.musicvideo;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;

@Entity(tableName = "music_video")
public class MusicVideoDataBean extends TypeBean {

    @ColumnInfo(name = "albumId")
    public int albumId;

    @ColumnInfo(name = "albumName")
    public String albumName;

    @ColumnInfo(name = "artistId")
    public int artistId;

    @ColumnInfo(name = "artistName")
    public String artistName;

    @ColumnInfo(name = "bucketDisplayName")
    public String bucketDisplayName;

    @ColumnInfo(name = "bucketId")
    public long bucketId;

    @ColumnInfo(name = "data")
    public String data;

    @ColumnInfo(name = "dateAdd")
    public long dateAdd;

    @ColumnInfo(name = "dateModified")
    public long dateModified;

    @ColumnInfo(name = "displayName")
    public String displayName;

    @ColumnInfo(name = "duration")
    public long duration;

    @SerializedName(TtmlNode.ATTR_ID)
    @PrimaryKey(autoGenerate = false)
    public int id;

    @ColumnInfo(name = "mineType")
    public String mineType;

    @ColumnInfo(name = PlayAudioData.TAG_PARENT_PATH)
    public String parentPath;

    @ColumnInfo(name = PlayAudioData.TAG_SIZE)
    public long size;

    @ColumnInfo(name = "title")
    public String title;

    @ColumnInfo(name = "uri")
    public String uri;

    @ColumnInfo(name = "year")
    public int year;

    public MusicVideoDataBean(int i, String str, long j, String str2, String str3, int i2, String str4, long j2, String str5, long j3, long j4, int i3, String str6, int i4, String str7, long j5, String str8, String str9) {
        this.id = i;
        this.parentPath = str;
        this.bucketId = j;
        this.title = str2;
        this.displayName = str3;
        this.year = i2;
        this.mineType = str4;
        this.duration = j2;
        this.data = str5;
        this.dateAdd = j3;
        this.dateModified = j4;
        this.albumId = i3;
        this.albumName = str6;
        this.artistId = i4;
        this.artistName = str7;
        this.size = j5;
        this.uri = str8;
        this.bucketDisplayName = str9;
    }
}
