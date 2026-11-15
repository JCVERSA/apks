package com.aliyun.player;

import com.aliyun.player.source.BitStreamSource;
import com.aliyun.player.source.UrlSource;

public interface UrlPlayer extends IPlayer {
    void setDataSource(BitStreamSource bitStreamSource);

    void setDataSource(UrlSource urlSource);
}
