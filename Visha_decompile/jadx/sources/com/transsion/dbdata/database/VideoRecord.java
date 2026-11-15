package com.transsion.dbdata.database;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.transsion.dbdata.beans.media.PlayVideoData;
import java.io.Serializable;

@Entity(tableName = "VideoStates")
public class VideoRecord implements Serializable {
    private static final long serialVersionUID = -3915778905518030353L;

    @ColumnInfo(defaultValue = "0", name = "_id", typeAffinity = 3)
    public int _id;

    @ColumnInfo(defaultValue = "0", name = "bucket_id", typeAffinity = 3)
    public int bucket_id;

    @ColumnInfo(name = "_data", typeAffinity = 2)
    public String data;

    @ColumnInfo(defaultValue = "0", name = "date_modified", typeAffinity = 3)
    public long date_modified;

    @ColumnInfo(defaultValue = "0", name = "duration", typeAffinity = 3)
    public int duration;

    @PrimaryKey(autoGenerate = true)
    @ColumnInfo(name = TtmlNode.ATTR_ID, typeAffinity = 3)
    public int id;

    @ColumnInfo(defaultValue = "0", name = "isPlayCompleted", typeAffinity = 3)
    public int isPlayCompleted;

    @ColumnInfo(defaultValue = "0", name = PlayVideoData.TAG_VIRTUAL_FOLDER, typeAffinity = 3)
    public int isVirtualFolder;

    @ColumnInfo(name = "play_count")
    public int playCount = 0;

    @ColumnInfo(defaultValue = "0", name = "position", typeAffinity = 3)
    public int position;

    @ColumnInfo(defaultValue = "0", name = "record_date_modified", typeAffinity = 3)
    public long record_date_modified;

    @ColumnInfo(defaultValue = "-1", name = PlayVideoData.TAG_SUBTITLE_INDEX, typeAffinity = 3)
    public int subtitle_index;

    @ColumnInfo(name = PlayVideoData.TAG_VIRTUAL_FOLDER_MATCH_NAME, typeAffinity = 2)
    public String virtualFolder_matchName;

    @ColumnInfo(name = "virtualFolder_path", typeAffinity = 2)
    public String virtualFolder_path;

    public String toString() {
        return "VideoRecord{id=" + this.id + "_id=" + this._id + ", data=" + this.data + ", position='" + this.position + "', duration='" + this.duration + "', isPlayCompleted='" + this.isPlayCompleted + "', isVirtualFolder='" + this.isVirtualFolder + "', virtualFolder_path='" + this.virtualFolder_path + "', virtualFolder_matchName=" + this.virtualFolder_matchName + ", bucket_id=" + this.bucket_id + ", mediaId=" + this._id + ", date_modified='" + this.date_modified + "', record_date_modified=" + this.record_date_modified + ", subtitle_index=" + this.subtitle_index + ", play_count=" + this.playCount + '}';
    }
}
