package com.transsion.dbdata.beans.media;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import java.io.Serializable;

@Entity(tableName = "SubtitleRecord")
public class SubtitleRecord implements Serializable {
    private static final long serialVersionUID = 7116216262292000551L;

    @ColumnInfo(defaultValue = "0", name = "_id", typeAffinity = 3)
    public int _id;

    @PrimaryKey(autoGenerate = true)
    @ColumnInfo(name = TtmlNode.ATTR_ID, typeAffinity = 3)
    public int id;

    @ColumnInfo(defaultValue = "1", name = "sub_format", typeAffinity = 3)
    public int sub_format;

    @ColumnInfo(name = "sub_id", typeAffinity = 2)
    public String sub_id;

    @ColumnInfo(defaultValue = "-1", name = "sub_inner_id", typeAffinity = 3)
    public int sub_inner_id;

    @ColumnInfo(name = "sub_inner_name", typeAffinity = 2)
    public String sub_inner_name;

    @ColumnInfo(defaultValue = "none", name = "sub_local_lang_to", typeAffinity = 2)
    public String sub_local_lang_to;

    @ColumnInfo(defaultValue = "0", name = "sub_track", typeAffinity = 3)
    public int sub_track;

    @ColumnInfo(name = "sub_track_delay_time", typeAffinity = 4)
    public float sub_track_delay_time;

    @ColumnInfo(name = "sub_track_time", typeAffinity = 3)
    public long sub_track_time;

    @ColumnInfo(defaultValue = "0", name = "sub_type", typeAffinity = 3)
    public int sub_type;

    @ColumnInfo(name = "subtitle_path", typeAffinity = 2)
    public String subtitle_path;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SubtitleRecord{ id:");
        sb.append(this.id);
        sb.append(", sub_inner_id:");
        sb.append(this.sub_inner_id);
        sb.append(", isInnerSubtitle:");
        sb.append(this.sub_type == 1);
        sb.append(", subType:");
        sb.append(this.sub_type);
        sb.append(", sub_inner_name:");
        sb.append(this.sub_inner_name);
        sb.append(", sub_inner_id:");
        sb.append(this.sub_inner_id);
        sb.append(", sub_inner_id:");
        sb.append(this.sub_inner_id);
        sb.append(", sub_local_lang_to:");
        sb.append(this.sub_local_lang_to);
        sb.append(", path:");
        sb.append(this.subtitle_path);
        sb.append(" }");
        return sb.toString();
    }
}
