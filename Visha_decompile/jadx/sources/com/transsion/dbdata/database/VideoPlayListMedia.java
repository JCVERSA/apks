package com.transsion.dbdata.database;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import java.io.Serializable;

@Entity(tableName = "video_media_playList")
public class VideoPlayListMedia implements Serializable {
    private static final long serialVersionUID = 4598485636072327015L;

    @ColumnInfo(name = "_data", typeAffinity = 2)
    public String _data;

    @PrimaryKey(autoGenerate = true)
    @ColumnInfo(name = TtmlNode.ATTR_ID, typeAffinity = 3)
    public int id;

    @ColumnInfo(name = "media_id", typeAffinity = 3)
    public int media_id;

    @ColumnInfo(name = "name", typeAffinity = 2)
    public String name;

    @ColumnInfo(name = "play_count", typeAffinity = 3)
    public int play_count;

    @ColumnInfo(name = "playlistFlag", typeAffinity = 3)
    public int playlistFlag;

    @ColumnInfo(name = "playlist_id", typeAffinity = 3)
    public int playlist_id;

    @ColumnInfo(name = "record_time", typeAffinity = 3)
    public long record_time;

    @Ignore
    public int sort;
}
