package com.transsion.hubsdk.core.view;

import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.WindowManager;
import com.transsion.hubsdk.interfaces.view.ITranSurfaceControlViewHostAdapter;
import com.transsion.hubsdk.view.TranSurfaceControlViewHost;

public class TranThubSurfaceControlViewHost implements ITranSurfaceControlViewHostAdapter {
    private TranSurfaceControlViewHost mSurfaceControlViewHost;

    private TranSurfaceControlViewHost getTranSurfaceControlViewHost() {
        if (this.mSurfaceControlViewHost == null) {
            this.mSurfaceControlViewHost = new TranSurfaceControlViewHost();
        }
        return this.mSurfaceControlViewHost;
    }

    @Override
    public void relayout(SurfaceControlViewHost surfaceControlViewHost, WindowManager.LayoutParams layoutParams) {
        getTranSurfaceControlViewHost().relayout(surfaceControlViewHost, layoutParams);
    }

    @Override
    public void setView(SurfaceControlViewHost surfaceControlViewHost, View view, WindowManager.LayoutParams layoutParams) {
        getTranSurfaceControlViewHost().setView(surfaceControlViewHost, view, layoutParams);
    }
}
