package com.transsion.videodownloader.model;

import androidx.annotation.NonNull;
import defpackage.frb;
import defpackage.i7c;
import defpackage.pv5;

public class VideoTaskItem implements Cloneable {
    private String mCoverPath;
    private String mCoverUrl;
    private int mCurTs;
    private long mDownloadCreateTime;
    private long mDownloadSize;
    private int mErrorCode;
    private String mFileHash;
    private String mFileName;
    private String mFilePath;
    private String mFinalFileName;
    private String mFinalUrl;
    private String mGroupName;
    private boolean mIsCompleted;
    private boolean mIsInDatabase;
    private long mLastUpdateTime;
    private pv5 mM3U8;
    private String mMimeType;
    private volatile boolean mPaused;
    private float mPercent;
    private String mSaveDir;
    private String mSniffId;
    private float mSpeed;
    private int mTaskState;
    private String mTitle;
    private long mTotalSize;
    private int mTotalTs;
    private String mTsSavePath;
    private final String mUrl;
    private int mVideoType;

    public VideoTaskItem(String str) {
        this(str, "", "", "");
    }

    public Object clone() {
        VideoTaskItem videoTaskItem = new VideoTaskItem(this.mUrl);
        videoTaskItem.setDownloadCreateTime(this.mDownloadCreateTime);
        videoTaskItem.setTaskState(this.mTaskState);
        videoTaskItem.setMimeType(this.mMimeType);
        videoTaskItem.setErrorCode(this.mErrorCode);
        videoTaskItem.setVideoType(this.mVideoType);
        videoTaskItem.setPercent(this.mPercent);
        videoTaskItem.setDownloadSize(this.mDownloadSize);
        videoTaskItem.setSpeed(this.mSpeed);
        videoTaskItem.setTotalSize(this.mTotalSize);
        videoTaskItem.setFileHash(this.mFileHash);
        videoTaskItem.setFilePath(this.mFilePath);
        videoTaskItem.setFileName(this.mFileName);
        videoTaskItem.setCoverUrl(this.mCoverUrl);
        videoTaskItem.setCoverPath(this.mCoverPath);
        videoTaskItem.setTitle(this.mTitle);
        videoTaskItem.setGroupName(this.mGroupName);
        videoTaskItem.setFinalFileName(this.mFinalFileName);
        videoTaskItem.setFinalFileName(this.mSniffId);
        return videoTaskItem;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof VideoTaskItem)) {
            return false;
        }
        return this.mUrl.equals(((VideoTaskItem) obj).getUrl());
    }

    public String getCoverPath() {
        return this.mCoverPath;
    }

    public String getCoverUrl() {
        return this.mCoverUrl;
    }

    public int getCurTs() {
        return this.mCurTs;
    }

    public long getDownloadCreateTime() {
        return this.mDownloadCreateTime;
    }

    public long getDownloadSize() {
        return this.mDownloadSize;
    }

    public String getDownloadSizeString() {
        return i7c.e(this.mDownloadSize);
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public String getFileHash() {
        return this.mFileHash;
    }

    public String getFileName() {
        return this.mFileName;
    }

    public String getFilePath() {
        return this.mFilePath;
    }

    public String getFinalFileName() {
        return this.mFinalFileName;
    }

    public String getFinalUrl() {
        return this.mFinalUrl;
    }

    public String getGroupName() {
        return this.mGroupName;
    }

    public long getLastUpdateTime() {
        return this.mLastUpdateTime;
    }

    public pv5 getM3U8() {
        return this.mM3U8;
    }

    public String getMimeType() {
        return this.mMimeType;
    }

    public float getPercent() {
        return this.mPercent;
    }

    public String getPercentString() {
        return frb.e(this.mPercent);
    }

    public String getSaveDir() {
        return this.mSaveDir;
    }

    public String getSniffId() {
        return this.mSniffId;
    }

    public float getSpeed() {
        return this.mSpeed;
    }

    public String getSpeedString() {
        return i7c.e((long) this.mSpeed) + "/s";
    }

    public int getTaskState() {
        return this.mTaskState;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public long getTotalSize() {
        return this.mTotalSize;
    }

    public int getTotalTs() {
        return this.mTotalTs;
    }

    public float getTransPeercent() {
        return this.mPercent / 100.0f;
    }

    public String getTsSavePath() {
        return this.mTsSavePath;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public int getVideoType() {
        return this.mVideoType;
    }

    public boolean isCompleted() {
        return this.mIsCompleted;
    }

    public boolean isErrorState() {
        return this.mTaskState == 6;
    }

    public boolean isHlsType() {
        return this.mVideoType == 1;
    }

    public boolean isInDatabase() {
        return this.mIsInDatabase;
    }

    public boolean isInitialTask() {
        return this.mTaskState == 0;
    }

    public boolean isInterruptTask() {
        int i = this.mTaskState;
        return i == 7 || i == 6;
    }

    public boolean isPaused() {
        return this.mPaused;
    }

    public boolean isPendingTask() {
        int i = this.mTaskState;
        return i == -1 || i == 1;
    }

    public boolean isRunningTask() {
        return this.mTaskState == 3;
    }

    public boolean isSuccessState() {
        return this.mTaskState == 5;
    }

    public void reset() {
        this.mDownloadCreateTime = 0L;
        this.mMimeType = null;
        this.mErrorCode = 0;
        this.mVideoType = 0;
        this.mTaskState = 0;
        this.mM3U8 = null;
        this.mSpeed = 0.0f;
        this.mPercent = 0.0f;
        this.mDownloadSize = 0L;
        this.mTotalSize = 0L;
        this.mFileName = "";
        this.mFilePath = "";
        this.mCoverUrl = "";
        this.mCoverPath = "";
        this.mTitle = "";
        this.mGroupName = "";
        this.mFinalFileName = "";
        this.mSniffId = "";
    }

    public void setCoverPath(String str) {
        this.mCoverPath = str;
    }

    public void setCoverUrl(String str) {
        this.mCoverUrl = str;
    }

    public void setCurTs(int i) {
        this.mCurTs = i;
    }

    public void setDownloadCreateTime(long j) {
        this.mDownloadCreateTime = j;
    }

    public void setDownloadSize(long j) {
        this.mDownloadSize = j;
    }

    public void setErrorCode(int i) {
        this.mErrorCode = i;
    }

    public void setFileHash(String str) {
        this.mFileHash = str;
    }

    public void setFileName(String str) {
        this.mFileName = str;
    }

    public void setFilePath(String str) {
        this.mFilePath = str;
    }

    public void setFinalFileName(String str) {
        this.mFinalFileName = str;
    }

    public void setFinalUrl(String str) {
        this.mFinalUrl = str;
    }

    public void setGroupName(String str) {
        this.mGroupName = str;
    }

    public void setIsCompleted(boolean z) {
        this.mIsCompleted = z;
    }

    public void setIsInDatabase(boolean z) {
        this.mIsInDatabase = z;
    }

    public void setLastUpdateTime(long j) {
        this.mLastUpdateTime = j;
    }

    public void setM3U8(pv5 pv5Var) {
        this.mM3U8 = pv5Var;
    }

    public void setMimeType(String str) {
        this.mMimeType = str;
    }

    public void setPaused(boolean z) {
        this.mPaused = z;
    }

    public void setPercent(float f) {
        this.mPercent = f;
    }

    public void setSaveDir(String str) {
        this.mSaveDir = str;
    }

    public void setSniffId(String str) {
        this.mSniffId = str;
    }

    public void setSpeed(float f) {
        this.mSpeed = f;
    }

    public void setTaskState(int i) {
        this.mTaskState = i;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public void setTotalSize(long j) {
        this.mTotalSize = j;
    }

    public void setTotalTs(int i) {
        this.mTotalTs = i;
    }

    public void setTsSavePath(String str) {
        this.mTsSavePath = str;
    }

    public void setVideoType(int i) {
        this.mVideoType = i;
    }

    @NonNull
    public String toString() {
        return "VideoTaskItem{mUrl='" + this.mUrl + "', mCoverUrl='" + this.mCoverUrl + "', mCoverPath='" + this.mCoverPath + "', mTitle='" + this.mTitle + "', mGroupName='" + this.mGroupName + "', mDownloadCreateTime=" + this.mDownloadCreateTime + ", mTaskState=" + this.mTaskState + ", mMimeType='" + this.mMimeType + "', mFinalUrl='" + this.mFinalUrl + "', mErrorCode=" + this.mErrorCode + ", mVideoType=" + this.mVideoType + ", mM3U8=" + this.mM3U8 + ", mTotalTs=" + this.mTotalTs + ", mCurTs=" + this.mCurTs + ", mSpeed=" + this.mSpeed + ", mPercent=" + this.mPercent + ", mDownloadSize=" + this.mDownloadSize + ", mTotalSize=" + this.mTotalSize + ", mFileHash='" + this.mFileHash + "', mSaveDir='" + this.mSaveDir + "', mIsCompleted=" + this.mIsCompleted + ", mIsInDatabase=" + this.mIsInDatabase + ", mLastUpdateTime=" + this.mLastUpdateTime + ", mFileName='" + this.mFileName + "', mFilePath='" + this.mFilePath + "', mPaused=" + this.mPaused + ", mFinalFileName='" + this.mFinalFileName + "', mSniffId='" + this.mSniffId + "', mTsSavePath='" + this.mTsSavePath + "'}";
    }

    public VideoTaskItem(String str, String str2, String str3, String str4) {
        this.mUrl = str;
        this.mCoverUrl = str2;
        this.mTitle = str3;
        this.mGroupName = str4;
    }
}
