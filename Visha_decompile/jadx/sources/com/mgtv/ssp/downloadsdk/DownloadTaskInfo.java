package com.mgtv.ssp.downloadsdk;

public final class DownloadTaskInfo {
    public long accelerateSpeed;
    public String collectionImage;
    public String collectionName;
    public String contentId;
    public long doneSize;
    public String doneSizeStr;
    public String extra;
    public String image;
    public boolean isSelected;
    public Integer mediaType;
    public String nname;
    public int priority;
    public int resolution;
    public long speed;
    public int status = 1;
    public String title;
    public long totalSize;
    public String totalSizeStr;
    public String videoid;

    public void copyArgs(DownloadTaskInfo downloadTaskInfo) {
        this.videoid = downloadTaskInfo.videoid;
        this.contentId = downloadTaskInfo.contentId;
        this.image = downloadTaskInfo.image;
        this.title = downloadTaskInfo.title;
        this.doneSize = downloadTaskInfo.doneSize;
        this.doneSizeStr = downloadTaskInfo.doneSizeStr;
        this.status = downloadTaskInfo.status;
        this.resolution = downloadTaskInfo.resolution;
        this.totalSize = downloadTaskInfo.totalSize;
        this.totalSizeStr = downloadTaskInfo.totalSizeStr;
        this.speed = downloadTaskInfo.speed;
        this.accelerateSpeed = downloadTaskInfo.accelerateSpeed;
        this.extra = downloadTaskInfo.extra;
        this.priority = downloadTaskInfo.priority;
        this.collectionName = downloadTaskInfo.collectionName;
        this.collectionImage = downloadTaskInfo.collectionName;
        this.mediaType = downloadTaskInfo.mediaType;
    }

    public long getAccelerateSpeed() {
        return this.accelerateSpeed;
    }

    public String getContentId() {
        return this.contentId;
    }

    public long getDoneSize() {
        return this.doneSize;
    }

    public String getDoneSizeStr() {
        return this.doneSizeStr;
    }

    public String getExtra() {
        return this.extra;
    }

    public String getImage() {
        return this.image;
    }

    public int getPriority() {
        return this.priority;
    }

    public int getResolution() {
        return this.resolution;
    }

    public long getSpeed() {
        return this.speed;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTitle() {
        return this.title;
    }

    public long getTotalSize() {
        return this.totalSize;
    }

    public String getTotalSizeStr() {
        return this.totalSizeStr;
    }

    public String getVideoid() {
        return this.videoid;
    }

    public boolean isCompleted() {
        return this.status == 3;
    }

    public boolean isDownloading() {
        return this.status == 0;
    }

    public void setAccelerateSpeed(long j) {
        this.accelerateSpeed = j;
    }

    public void setContentId(String str) {
        this.contentId = str;
    }

    public void setDoneSize(long j) {
        this.doneSize = j;
    }

    public void setDoneSizeStr(String str) {
        this.doneSizeStr = str;
    }

    public void setExtra(String str) {
        this.extra = str;
    }

    public void setImage(String str) {
        this.image = str;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public void setResolution(int i) {
        this.resolution = i;
    }

    public void setSpeed(long j) {
        this.speed = j;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTotalSize(long j) {
        this.totalSize = j;
    }

    public void setTotalSizeStr(String str) {
        this.totalSizeStr = str;
    }

    public void setVideoid(String str) {
        this.videoid = str;
    }
}
