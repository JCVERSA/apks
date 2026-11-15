package com.mgtv.downloader.p2p.mg;

public class MGTaskInfo {
    public long cdnDownloadBytes;
    public String cdnIP = "";
    public int checkMD5Success;
    public long downloadSize;
    public long fileSize;
    public int httpSpeed;
    public String keyID;
    public int playableTime;
    public int playableTsNum;
    public int taskID;
    public int taskType;
    public int totalTsNum;
    public int trialTime;
    public int vipSpeed;

    public String toString() {
        return "MGTaskInfo{taskID=" + this.taskID + ", taskType=" + this.taskType + ", keyID='" + this.keyID + ", httpSpeed=" + this.httpSpeed + ", vipSpeed=" + this.vipSpeed + ", cdnDownloadBytes=" + this.cdnDownloadBytes + ", totalTsNum=" + this.totalTsNum + ", playableTsNum=" + this.playableTsNum + ", playableTime=" + this.playableTime + ", fileSize=" + this.fileSize + ", downloadSize=" + this.downloadSize + ", checkMD5Success=" + this.checkMD5Success + ", trialTime=" + this.trialTime + ", cdnIP=" + this.cdnIP + '}';
    }
}
