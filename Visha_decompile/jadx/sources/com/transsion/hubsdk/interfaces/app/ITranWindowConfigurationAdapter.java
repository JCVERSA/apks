package com.transsion.hubsdk.interfaces.app;

import android.content.res.Configuration;
import android.graphics.Rect;

public interface ITranWindowConfigurationAdapter {
    Rect getBounds(Configuration configuration);

    int getMultiWindowingId(Configuration configuration);

    int getMultiWindowingMode(Configuration configuration);

    boolean inMultiWindowMode(int i);

    boolean isThunderbackWindow(Configuration configuration);
}
