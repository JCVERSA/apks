package com.mgtv.downloader.p2p;

public class ImgoTaskInfo {
    public long cdnDownloadBytes;
    public String cdnIp;
    public long downloadlen;
    public int downloadspeed;
    public long filelen;
    public String filepath;
    public byte[] hash = new byte[41];
    public int numPeers;
    public long p2pDownloadBytes;
    public long p2pUploadBytes;
    public int sdkVersion;
    public byte status;
    public int uploadspeed;
}
