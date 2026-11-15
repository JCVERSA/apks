package com.transsion.hubsdk.core.text;

import android.view.View;
import android.view.inputmethod.InputConnection;
import com.transsion.hubsdk.interfaces.text.ITranStreamingAnimProcessorAdapter;
import com.transsion.hubsdk.text.TranStreamingAnimProcessor;

public class TranThubStreamingAnimProcessor implements ITranStreamingAnimProcessorAdapter {
    private final TranStreamingAnimProcessor mProcessor = new TranStreamingAnimProcessor();

    @Override
    public void handleStreamingOutput(View view, int i, CharSequence charSequence) {
        this.mProcessor.handleStreamingOutput(view, i, charSequence);
    }

    @Override
    public void setAnimCallback(Runnable runnable, Runnable runnable2, Runnable runnable3) {
        this.mProcessor.setAnimCallback(runnable, runnable2, runnable3);
    }

    @Override
    public void setEndAnimParams(int i) {
        this.mProcessor.setEndAnimParams(i);
    }

    @Override
    public void setInputConnection(InputConnection inputConnection) {
        this.mProcessor.setInputConnection(inputConnection);
    }

    @Override
    public void setStartAnimParams(long j, long j2, int i, int i2) {
        this.mProcessor.setStartAnimParams(j, j2, i, i2);
    }

    @Override
    public void setUpdateAnimParams(int i, int i2, long j, long j2, int i3, float f, float f2, float f3) {
        this.mProcessor.setUpdateAnimParams(i, i2, j, j2, i3, f, f2, f3);
    }
}
