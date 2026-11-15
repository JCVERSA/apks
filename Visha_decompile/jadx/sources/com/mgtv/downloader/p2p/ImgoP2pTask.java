package com.mgtv.downloader.p2p;

import com.hunantv.imgo.util.n;
import java.net.URL;

public class ImgoP2pTask {
    private static final String HUNAN_REF = "hunantv.com";
    private static final String NORMAL_REF = "";
    public static final int STATUS_DELETE = -1;
    public static final int STATUS_NONE = -1;
    public static final int STATUS_PAUSE = 1;
    public static final int STATUS_RUNNING = 0;
    public String attachedUrlPara;
    public int dnsPro;
    public byte[] mHash;
    public String mOrgUrl;
    public String mReferer;
    private final int MAX_SIZE = 40;
    public String mHostPath = null;
    public String mKeyUrl = null;
    public String mIsOtherCdn = null;
    public String mVideoId = null;
    public String mDefinition = null;
    private int mStatus = -1;
    private int mSaveStatus = -1;
    private String mStrHash = null;

    public ImgoP2pTask(String str, int i) {
        this.mHash = null;
        this.mReferer = null;
        this.dnsPro = 3;
        this.attachedUrlPara = null;
        this.mOrgUrl = str;
        parseOrgUrl(str);
        this.mReferer = "hunantv.com";
        this.mHash = new byte[40];
        if (i != 0 && i == 1) {
            this.dnsPro = 3;
        } else {
            this.dnsPro = 1;
        }
        this.attachedUrlPara = "";
    }

    private void parseOrgUrl(String str) {
        if (str != null) {
            try {
                URL url = new URL(str);
                n.a("txy", "parseOrgUrl orgUrl:" + str);
                n.a("txy", "parseOrgUrl getPath():" + url.getPath());
                n.a("txy", "parseOrgUrl getFile():" + url.getFile());
                n.a("txy", "parseOrgUrl getQuery():" + url.getQuery());
                String strReplace = str.replace("?" + url.getQuery(), "");
                String[] strArrSplit = url.getPath().split("/");
                this.mHostPath = strReplace.replace(strArrSplit[strArrSplit.length + (-1)], "");
                n.a("txy", "parseOrgUrl mHostPath:" + this.mHostPath);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public String getHostPath() {
        return this.mHostPath;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public String getStrHash() {
        return this.mStrHash;
    }

    public int resumeStatus() {
        int i = this.mSaveStatus;
        this.mSaveStatus = -1;
        return i;
    }

    public void saveStatus() {
        this.mSaveStatus = getStatus();
    }

    public void setHostPath(String str) {
        this.mHostPath = str;
    }

    public ImgoP2pTask setKeyParams(String str, String str2, String str3) {
        this.mIsOtherCdn = str;
        this.mVideoId = str2;
        this.mDefinition = str3;
        return this;
    }

    public void setStatus(int i) {
        this.mStatus = i;
    }

    public void setStrHash(String str) {
        this.mStrHash = str;
    }
}
