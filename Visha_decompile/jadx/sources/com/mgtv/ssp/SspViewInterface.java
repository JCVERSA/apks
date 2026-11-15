package com.mgtv.ssp;

import android.content.res.Configuration;

public interface SspViewInterface {
    void destroy();

    boolean onBackPress();

    void onPause();

    void onResume();

    void onViewConfigChanged(Configuration configuration);

    void pause();

    void resume();

    void start();

    void visibleChanged(boolean z);
}
