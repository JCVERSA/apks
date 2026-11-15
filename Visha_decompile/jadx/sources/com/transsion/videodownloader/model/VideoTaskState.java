package com.transsion.videodownloader.model;

public class VideoTaskState {
    public static final int DEFAULT = 0;
    public static final int DOWNLOADING = 3;
    public static final int ENOSPC = 8;
    public static final int ERROR = 6;
    public static final int HLS_MERGE_FAILED = 10;
    public static final int HLS_MERGE_PROGRESS = 11;
    public static final int HLS_MERGE_SUCCESS = 9;
    public static final int PAUSE = 7;
    public static final int PENDING = -1;
    public static final int PREPARE = 1;
    public static final int PROXYREADY = 4;
    public static final int START = 2;
    public static final int SUCCESS = 5;
}
