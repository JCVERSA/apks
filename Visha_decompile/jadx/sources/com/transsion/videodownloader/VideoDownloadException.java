package com.transsion.videodownloader;

public class VideoDownloadException extends Exception {
    private String mMsg;

    public VideoDownloadException(String str) {
        super(str);
        this.mMsg = str;
    }

    public String getMsg() {
        return this.mMsg;
    }

    public VideoDownloadException(String str, Throwable th) {
        super(str, th);
        this.mMsg = str;
    }

    public VideoDownloadException(Throwable th) {
        super(th);
    }
}
