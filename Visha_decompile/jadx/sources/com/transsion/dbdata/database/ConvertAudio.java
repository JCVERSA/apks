package com.transsion.dbdata.database;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import java.io.Serializable;

@Entity(tableName = "convert_audio")
public class ConvertAudio implements Serializable {
    private static final long serialVersionUID = 4784742283863093381L;

    @ColumnInfo(name = "convert_time", typeAffinity = 3)
    public long convert_time;

    @ColumnInfo(name = "data", typeAffinity = 2)
    public String data;

    @PrimaryKey(autoGenerate = true)
    @ColumnInfo(name = TtmlNode.ATTR_ID, typeAffinity = 3)
    public int id;

    @ColumnInfo(name = "mediaId", typeAffinity = 3)
    public Integer mediaId;

    public ConvertAudio(int i, String str, long j) {
        this.mediaId = Integer.valueOf(i);
        this.data = str;
        this.convert_time = j;
    }

    public String toString() {
        return "ConvertAudio{id=" + this.id + ", mediaId='" + this.mediaId + ", data=" + this.data + ", convert_time=" + this.convert_time + '}';
    }
}
