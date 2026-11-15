package com.transsion.hubsdk.interfaces.view;

import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.WindowManager;

public interface ITranSurfaceControlViewHostAdapter {
    void relayout(SurfaceControlViewHost surfaceControlViewHost, WindowManager.LayoutParams layoutParams);

    void setView(SurfaceControlViewHost surfaceControlViewHost, View view, WindowManager.LayoutParams layoutParams);
}
