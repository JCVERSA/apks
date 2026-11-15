package com.avery.subtitle;

import defpackage.m2a;
import java.util.List;

public interface b {

    public interface a {
        void onSubtitleChanged(m2a m2aVar);
    }

    public interface InterfaceC0029b {
        void onSubtitlePrepared(List list);
    }

    void bindToMediaPlayer(com.transsion.playercommon.player.b bVar);

    void destroy();

    void pause();

    void reset();

    void resume();

    void setOnSubtitleChangeListener(a aVar);

    void setOnSubtitlePreparedListener(InterfaceC0029b interfaceC0029b);

    void setSpeed(float f);

    void setSubtitleDelayMs(long j);

    void setSubtitlePath(String str);

    void start();

    void stop();
}
