package com.transsion.hubsdk.core.gamemode;

import android.content.Context;
import android.os.Bundle;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.gamemode.TranTouchInjection;
import com.transsion.hubsdk.interfaces.gamemode.ITranTouchInjectionAdapter;

public class TranThubTouchInjection implements ITranTouchInjectionAdapter {
    private static final String TAG = "TranThubTouchInjection";
    private final TranTouchInjection mTouchInjection;

    public TranThubTouchInjection(Context context) {
        this.mTouchInjection = TranTouchInjection.get(context);
    }

    @Override
    public void closeChannel() {
        TranSdkLog.d(TAG, "closeChannel");
        TranTouchInjection tranTouchInjection = this.mTouchInjection;
        if (tranTouchInjection != null) {
            tranTouchInjection.closeChannel();
        }
    }

    @Override
    public boolean inject(int i, int i2, int i3) {
        TranSdkLog.d(TAG, "inject x=" + i + " y=" + i2 + " duration=" + i3);
        TranTouchInjection tranTouchInjection = this.mTouchInjection;
        return tranTouchInjection != null && tranTouchInjection.inject(i, i2, i3);
    }

    @Override
    public boolean injectViaChannel(int i, int i2, int i3, int i4) {
        TranSdkLog.d(TAG, "injectViaChannel index=" + i);
        TranTouchInjection tranTouchInjection = this.mTouchInjection;
        return tranTouchInjection != null && tranTouchInjection.injectViaChannel(i, i2, i3, i4);
    }

    @Override
    @Deprecated
    public boolean injectVieChanel(int i, int i2, int i3, int i4) {
        TranSdkLog.d(TAG, "injectVieChanel index=" + i);
        TranTouchInjection tranTouchInjection = this.mTouchInjection;
        return tranTouchInjection != null && tranTouchInjection.injectVieChanel(i, i2, i3, i4);
    }

    @Override
    public void openChannel() {
        TranSdkLog.d(TAG, "openChannel");
        TranTouchInjection tranTouchInjection = this.mTouchInjection;
        if (tranTouchInjection != null) {
            tranTouchInjection.openChannel();
        }
    }

    @Override
    public boolean inject(int i, int i2) {
        TranSdkLog.d(TAG, "inject x=" + i + " y=" + i2);
        TranTouchInjection tranTouchInjection = this.mTouchInjection;
        return tranTouchInjection != null && tranTouchInjection.inject(i, i2);
    }

    @Override
    public boolean inject(int i, int i2, int i3, Bundle bundle) {
        TranSdkLog.d(TAG, "inject x=" + i + " y=" + i2 + " duration=" + i3);
        TranTouchInjection tranTouchInjection = this.mTouchInjection;
        return tranTouchInjection != null && tranTouchInjection.inject(i, i2, i3, bundle);
    }

    @Override
    public boolean inject(int i, int i2, int i3, int i4) {
        TranSdkLog.d(TAG, "inject index=" + i + " x=" + i2 + " y=" + i3);
        TranTouchInjection tranTouchInjection = this.mTouchInjection;
        return tranTouchInjection != null && tranTouchInjection.inject(i, i2, i3, i4);
    }

    @Override
    public boolean inject(int i, int i2, int i3, int i4, Bundle bundle) {
        TranSdkLog.d(TAG, "inject index=" + i + " x=" + i2 + " y=" + i3);
        TranTouchInjection tranTouchInjection = this.mTouchInjection;
        return tranTouchInjection != null && tranTouchInjection.inject(i, i2, i3, i4, bundle);
    }
}
