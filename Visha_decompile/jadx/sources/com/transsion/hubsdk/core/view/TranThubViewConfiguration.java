package com.transsion.hubsdk.core.view;

import com.transsion.hubsdk.interfaces.view.ITranViewConfigurationAdapter;
import com.transsion.hubsdk.view.TranViewConfiguration;

public class TranThubViewConfiguration implements ITranViewConfigurationAdapter {
    private TranViewConfiguration mTranViewConfiguration = new TranViewConfiguration();

    @Override
    public int getHoverTapSlop() {
        TranViewConfiguration tranViewConfiguration = this.mTranViewConfiguration;
        if (tranViewConfiguration != null) {
            return tranViewConfiguration.getHoverTapSlop();
        }
        return 20;
    }

    @Override
    public int getHoverTapTimeout() {
        TranViewConfiguration tranViewConfiguration = this.mTranViewConfiguration;
        if (tranViewConfiguration != null) {
            return tranViewConfiguration.getHoverTapTimeout();
        }
        return 150;
    }
}
