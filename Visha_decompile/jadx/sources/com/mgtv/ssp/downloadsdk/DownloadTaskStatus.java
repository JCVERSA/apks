package com.mgtv.ssp.downloadsdk;

public interface DownloadTaskStatus {
    public static final int DOWNLOADING = 0;
    public static final int EXCEPTION = 5;
    public static final int FAILED = 4;
    public static final int FAILED_NO_NET = 6;
    public static final int FINISHED = 3;
    public static final int PAUSE = 1;
    public static final int WAITING = 2;
}
