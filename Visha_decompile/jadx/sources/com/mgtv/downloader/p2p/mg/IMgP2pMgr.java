package com.mgtv.downloader.p2p.mg;

import android.content.Context;
import java.util.Map;

public interface IMgP2pMgr {
    String buildURL(int i);

    int createTask(int i, int i2, String str, String str2, String str3, String str4, String str5, int i3, int i4);

    void deinitHLS();

    int deleteOfflineCache(String str, String str2);

    int deleteOfflineCacheAll();

    int getErrorCode(int i);

    String getOfflineM3U8Path(int i);

    MGTaskInfo getTaskInfo(int i);

    String getVersion();

    int initHLS(Context context, String str, String str2, String str3, Map<String, Object> map);

    int pauseTask(int i);

    void pushEvent(int i);

    int runTask(int i);

    void setDownloadListener(IP2PListener iP2PListener);

    void setPlayTime(int i, int i2, int i3);

    void setPlayingPos(int i, int i2);

    void setReportThreeListener(IReportThreeListener iReportThreeListener);

    void setServerConfig(String str);

    void setUserData(Map<String, Object> map);

    int stopTask(int i);
}
