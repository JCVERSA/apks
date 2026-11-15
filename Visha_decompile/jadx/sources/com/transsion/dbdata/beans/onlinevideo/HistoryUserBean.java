package com.transsion.dbdata.beans.onlinevideo;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import com.google.gson.annotations.Expose;
import java.util.Arrays;

@Entity(tableName = "online_user_history")
public class HistoryUserBean extends HistoryBean {
    public static final int DELETE_NOT_UPLOADED = 17;
    public static final int DELETE_UPLOADED = 16;
    public static final int NOT_DELETE_NOT_UPLOADED = 1;
    public static final int NOT_DELETE_UPLOADED = 0;

    @ColumnInfo(name = "is_uploaded")
    @Expose(serialize = false)
    public int isUploaded;

    public static HistoryUserBean valueOfUserBean(HistoryBean historyBean) {
        HistoryUserBean historyUserBean = new HistoryUserBean();
        if (historyBean != null) {
            historyUserBean.serialId = historyBean.serialId;
            historyUserBean.sourceId = historyBean.sourceId;
            historyUserBean.videoId = historyBean.videoId;
            historyUserBean.videoName = historyBean.videoName;
            historyUserBean.seriesId = historyBean.seriesId;
            historyUserBean.description = historyBean.description;
            historyUserBean.lastPos = historyBean.lastPos;
            historyUserBean.duration = historyBean.duration;
            historyUserBean.videoCover = historyBean.videoCover;
            historyUserBean.lastWatchTime = historyBean.lastWatchTime;
            historyUserBean.videoFrame = historyBean.videoFrame;
            historyUserBean.watchProgress = historyBean.watchProgress;
            historyUserBean.updateProgress = historyBean.updateProgress;
            historyUserBean.recordId = historyBean.recordId;
            historyUserBean.userId = historyBean.userId;
            historyUserBean.videoSerialName = historyBean.videoSerialName;
            historyUserBean.isTimeItem = historyBean.isTimeItem;
            historyUserBean.isIntact = historyBean.isIntact;
            historyUserBean.videoUrl = historyBean.videoUrl;
            historyUserBean.sourceType = historyBean.sourceType;
            historyUserBean.playLet = historyBean.playLet;
            historyUserBean.isUploaded = 1;
        }
        return historyUserBean;
    }

    public boolean isDeleted() {
        return (this.isUploaded & 16) == 1;
    }

    public boolean isDeletedNotUploaded() {
        return this.isUploaded == 17;
    }

    public boolean isUploaded() {
        return (this.isUploaded & 1) == 0;
    }

    public void setIsDeleted() {
        this.isUploaded = 17;
    }

    public void setIsUploaded() {
        this.isUploaded = 0;
    }

    @Override
    public String toString() {
        return "HistoryUserBean{serialId=" + this.serialId + ", sourceId='" + this.sourceId + "', videoId=" + this.videoId + ", videoName='" + this.videoName + "', seriesId=" + this.seriesId + ", description='" + this.description + "', lastPos=" + this.lastPos + ", duration=" + this.duration + ", videoCover='" + this.videoCover + "', lastWatchTime=" + this.lastWatchTime + ", videoFrame=" + Arrays.toString(this.videoFrame) + ", watchProgress=" + this.watchProgress + ", updateProgress='" + this.updateProgress + "', recordId=" + this.recordId + ", userId=" + this.userId + ", videoSerialName='" + this.videoSerialName + "', isTimeItem=" + this.isTimeItem + ", isUploaded=" + this.isUploaded + '}';
    }
}
