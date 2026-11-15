package com.transsion.hubsdk.core.internal.policy;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;
import com.transsion.hubsdk.interfaces.internal.policy.ITranPhoneWindowAdapter;
import com.transsion.hubsdk.internal.policy.TranPhoneWindow;

public class TranThubPhoneWindow implements ITranPhoneWindowAdapter {
    private TranPhoneWindow mTranPhoneWindow;

    public TranThubPhoneWindow(Context context) {
        this.mTranPhoneWindow = new TranPhoneWindow(context);
    }

    @Override
    public View getDecorView() {
        return this.mTranPhoneWindow.getDecorView();
    }

    @Override
    public boolean requestFeature(int i) {
        return this.mTranPhoneWindow.requestFeature(i);
    }

    @Override
    public void setBackgroundDrawableResource(int i) {
        this.mTranPhoneWindow.setBackgroundDrawableResource(i);
    }

    @Override
    public void setWindowManager(WindowManager windowManager, IBinder iBinder, String str) {
        this.mTranPhoneWindow.setWindowManager(windowManager, iBinder, str);
    }
}
