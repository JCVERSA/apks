package com.transsion.dbdata.database;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import java.io.Serializable;

@Entity(tableName = "converting_video")
public class ConvertingVideo implements Serializable {
    private static final long serialVersionUID = 2873051347048137756L;

    @ColumnInfo(name = "add_time", typeAffinity = 3)
    public long add_time;

    @ColumnInfo(defaultValue = "0", name = "converted_status", typeAffinity = 3)
    public int converted_status;

    @ColumnInfo(name = "data", typeAffinity = 2)
    public String data;

    @PrimaryKey(autoGenerate = true)
    @ColumnInfo(name = TtmlNode.ATTR_ID, typeAffinity = 3)
    public int id;

    @ColumnInfo(name = "mediaId", typeAffinity = 3)
    public Integer mediaId;

    public ConvertingVideo(int i, String str, long j) {
        this.mediaId = Integer.valueOf(i);
        this.data = str;
        this.add_time = j;
    }

    public String toString() {
        return "ConvertingVideo{id=" + this.id + ", mediaId='" + this.mediaId + ", data=" + this.data + ", add_time=" + this.add_time + '}';
    }
}
