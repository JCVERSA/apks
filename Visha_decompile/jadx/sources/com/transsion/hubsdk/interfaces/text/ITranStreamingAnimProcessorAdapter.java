package com.transsion.hubsdk.interfaces.text;

import android.view.View;
import android.view.inputmethod.InputConnection;

public interface ITranStreamingAnimProcessorAdapter {
    void handleStreamingOutput(View view, int i, CharSequence charSequence);

    void setAnimCallback(Runnable runnable, Runnable runnable2, Runnable runnable3);

    void setEndAnimParams(int i);

    void setInputConnection(InputConnection inputConnection);

    void setStartAnimParams(long j, long j2, int i, int i2);

    void setUpdateAnimParams(int i, int i2, long j, long j2, int i3, float f, float f2, float f3);
}
