package com.transsion.hubsdk.core.app;

import android.app.Application;
import com.transsion.hubsdk.app.TranActivityThreadBridge;
import com.transsion.hubsdk.interfaces.app.ITranActivityThreadAdapter;

public class TranThubActivityThread implements ITranActivityThreadAdapter {
    @Override
    public Application currentApplication() {
        return TranActivityThreadBridge.currentApplication();
    }

    @Override
    public Application getApplication() {
        return TranActivityThreadBridge.getApplication();
    }
}
