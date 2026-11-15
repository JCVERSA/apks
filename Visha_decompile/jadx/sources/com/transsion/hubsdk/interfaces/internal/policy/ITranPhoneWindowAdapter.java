package com.transsion.hubsdk.interfaces.internal.policy;

import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;

public interface ITranPhoneWindowAdapter {
    View getDecorView();

    boolean requestFeature(int i);

    void setBackgroundDrawableResource(int i);

    void setWindowManager(WindowManager windowManager, IBinder iBinder, String str);
}
