package com.mgtv.ssp.downloadsdk;

import java.util.List;

public interface IDownloadManager {
    boolean checkFile(String str);

    void createTaskWaitResume(String str, String str2, String str3, String str4, OnCreateTaskCallback onCreateTaskCallback);

    void deleteDownloadTask(List<String> list);

    int getConcurrentTaskCount(String str);

    String getConfig(int i);

    DownloadTaskInfo getDownloadTask(String str);

    List<DownloadTaskInfo> getDownloadTasks(int i);

    String getTaskOption(String str, int i);

    String getVersion();

    String init(DlPluginContext dlPluginContext, DownloadEventListener downloadEventListener);

    boolean isSupportDownload();

    void pauseDownload(List<String> list);

    void release();

    void resumeDownload(List<String> list, String str);

    String setConfig(int i, String str);

    String setTaskOption(String str, int i, String str2);

    void startDownload(String str, String str2, String str3, String str4, OnCreateTaskCallback onCreateTaskCallback);
}
