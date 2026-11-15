package com.transsion.sniffer_load.data;

import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;

@Entity(tableName = "DownloadHistory")
public class DownloadHistory {

    @NonNull
    @PrimaryKey
    @ColumnInfo(name = "mediaId", typeAffinity = 2)
    public String mediaId;

    @ColumnInfo(name = "originSite", typeAffinity = 2)
    public String originSite;

    @ColumnInfo(name = "timeStamp", typeAffinity = 3)
    public long timeStamp;

    @ColumnInfo(name = "videoSite", typeAffinity = 2)
    public String videoSite;

    public String getMediaId() {
        return this.mediaId;
    }

    public String getOriginSite() {
        return this.originSite;
    }

    public long getTimeStamp() {
        return this.timeStamp;
    }

    public String getVideoSite() {
        return this.videoSite;
    }

    public void setMediaId(String str) {
        this.mediaId = str;
    }

    public void setOriginSite(String str) {
        this.originSite = str;
    }

    public void setTimeStamp(long j) {
        this.timeStamp = j;
    }

    public void setVideoSite(String str) {
        this.videoSite = str;
    }
}
