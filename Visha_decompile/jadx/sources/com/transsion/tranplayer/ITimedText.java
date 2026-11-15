package com.transsion.tranplayer;

import android.graphics.Rect;

public interface ITimedText {
    Rect getBounds();

    long getDuration();

    long getStartTime();

    String getText();
}
