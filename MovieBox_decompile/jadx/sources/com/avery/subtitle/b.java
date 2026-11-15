package com.avery.subtitle;

public interface b {

    public interface a {
        void onSubtitleChanged(m5.b bVar);
    }

    public interface InterfaceC0162b {
        void onRefreshSubtitle();

        void onSubtitlePrepared();
    }

    void destroy();

    void initSubtitle(k5.a aVar, boolean z10);

    void pause();

    void refreshImmediately();

    void reset();

    void resume();

    void selectSubtitle(String str, String str2, k5.b bVar);

    void setDefaultSubtitle(String str);

    void setOnSubtitleChangeListener(a aVar);

    void setOnSubtitlePreparedListener(InterfaceC0162b interfaceC0162b);

    void setSubtitlePath(String str, String str2);

    void start();

    void stop();

    void subtitleDelay(long j10);
}
