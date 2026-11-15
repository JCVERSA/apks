package com.hunantv.media.p2p;

import com.mgtv.a.c;

public interface IP2pTask {
    public static final int STATUS_NONE = -1;
    public static final int STATUS_PAUSE = 1;
    public static final int STATUS_RUNNING = 0;

    c getImgoTask();

    int getStatus();

    String getStrHash();
}
