package com.mgtv.downloader.p2p.mg;

public interface IP2PListener {
    void onOfflineDownloadError(int i, int i2);

    void onOfflineDownloadFinish(int i);

    void onOfflineDownloadProgress(int i, long j, int i2, long j2, String str);

    void onOfflineDownloadRemoved(int i);

    void onOfflinePlayError(int i);

    void onOnlinePlayError(int i, int i2);
}
