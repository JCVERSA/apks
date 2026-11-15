package com.aliyun.player;

public interface IListPlayer extends IPlayer {
    void clear();

    String getCurrentUid();

    int getMaxPreloadMemorySizeMB();

    void removeSource(String str);

    void setMaxPreloadMemorySizeMB(int i10);

    void setPreloadCount(int i10);
}
