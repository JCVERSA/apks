package com.mgtv.downloader.p2p;

import android.content.Context;

public interface IP2pMgr {

    public static class Config {
        public String mConfigPath = null;
        public String mCachePath = null;
        public int mHttpport = 0;
        public int mMaxusespace = 0;
    }

    public interface OnNotifyMsgListener {
        void onNotify(int i, int i2, String str);
    }

    void CleanCache();

    void SetVideoDuration(ImgoP2pTask imgoP2pTask, int i);

    void addNotifyListener(OnNotifyMsgListener onNotifyMsgListener);

    int createTask(ImgoP2pTask imgoP2pTask);

    void deleteTask(ImgoP2pTask imgoP2pTask);

    void enableP2pDownload(boolean z);

    void enableP2pUpload(boolean z);

    int getHttpport();

    String getProxyUrl(ImgoP2pTask imgoP2pTask);

    ImgoTaskInfo getTaskInfo(ImgoP2pTask imgoP2pTask);

    boolean hasInit();

    int init(Config config, Context context);

    int isTaskExist(ImgoP2pTask imgoP2pTask);

    void pauseTask(ImgoP2pTask imgoP2pTask);

    long readData(ImgoP2pTask imgoP2pTask, String str, byte[] bArr, long j, long j2, long[] jArr, int[] iArr);

    void removeNotifyListener(OnNotifyMsgListener onNotifyMsgListener);

    int runTask(ImgoP2pTask imgoP2pTask);

    int setApkType(int i);

    void setNotifyListener(OnNotifyMsgListener onNotifyMsgListener);

    void setPlaySpeed(int i);

    void setPlayingTimepoint(ImgoP2pTask imgoP2pTask, int i, boolean z);

    void setTaskPlayingStatus(ImgoP2pTask imgoP2pTask, boolean z);

    int startLog();

    int stopLog();

    void unInit();
}
