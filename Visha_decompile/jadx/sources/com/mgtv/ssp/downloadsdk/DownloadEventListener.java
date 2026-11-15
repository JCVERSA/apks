package com.mgtv.ssp.downloadsdk;

public interface DownloadEventListener {
    void onError(IDownloadManager iDownloadManager, DownloadTaskInfo downloadTaskInfo, String str);

    void onProgressUpdate(IDownloadManager iDownloadManager, DownloadTaskInfo downloadTaskInfo);

    void onStatusChanged(IDownloadManager iDownloadManager, DownloadTaskInfo downloadTaskInfo);
}
