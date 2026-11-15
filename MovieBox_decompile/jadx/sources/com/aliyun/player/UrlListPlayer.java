package com.aliyun.player;

public interface UrlListPlayer extends IListPlayer, UrlPlayer {
    void addUrl(String str, String str2);

    boolean moveTo(String str);

    boolean moveToNext();

    boolean moveToPrev();
}
