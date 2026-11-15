package com.transsion.hubsdk.core.app;

import android.content.res.Configuration;
import android.graphics.Rect;
import com.transsion.hubsdk.app.TranWindowConfiguration;
import com.transsion.hubsdk.interfaces.app.ITranWindowConfigurationAdapter;

public class TranThubWindowConfiguration implements ITranWindowConfigurationAdapter {
    private TranWindowConfiguration mWindowConfiguration = new TranWindowConfiguration();

    @Override
    public Rect getBounds(Configuration configuration) {
        return this.mWindowConfiguration.getBounds(configuration);
    }

    @Override
    public int getMultiWindowingId(Configuration configuration) {
        return TranWindowConfiguration.getMultiWindowingId(configuration);
    }

    @Override
    public int getMultiWindowingMode(Configuration configuration) {
        return TranWindowConfiguration.getMultiWindowingMode(configuration);
    }

    @Override
    public boolean inMultiWindowMode(int i) {
        return TranWindowConfiguration.inMultiWindowMode(i);
    }

    @Override
    public boolean isThunderbackWindow(Configuration configuration) {
        return this.mWindowConfiguration.isThunderbackWindow(configuration);
    }
}
