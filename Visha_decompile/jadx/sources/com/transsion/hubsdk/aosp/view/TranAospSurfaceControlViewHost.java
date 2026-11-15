package com.transsion.hubsdk.aosp.view;

import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.WindowManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.view.ITranSurfaceControlViewHostAdapter;

public class TranAospSurfaceControlViewHost implements ITranSurfaceControlViewHostAdapter {
    private static Class<?> sViewHostClass = TranDoorMan.getClass("android.view.SurfaceControlViewHost");

    @Override
    public void relayout(SurfaceControlViewHost surfaceControlViewHost, WindowManager.LayoutParams layoutParams) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sViewHostClass, "relayout", WindowManager.LayoutParams.class), surfaceControlViewHost, layoutParams);
    }

    @Override
    public void setView(SurfaceControlViewHost surfaceControlViewHost, View view, WindowManager.LayoutParams layoutParams) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(sViewHostClass, "setView", View.class, WindowManager.LayoutParams.class), surfaceControlViewHost, "setView", view, layoutParams);
    }
}
