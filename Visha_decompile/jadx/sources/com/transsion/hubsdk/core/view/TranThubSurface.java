package com.transsion.hubsdk.core.view;

import android.view.Surface;
import com.transsion.hubsdk.interfaces.view.ITranSurfaceAdapter;
import com.transsion.hubsdk.view.TranSurface;

public class TranThubSurface implements ITranSurfaceAdapter {
    private TranSurface mTranSurface;

    private TranSurface getTranSurfaceImpl() {
        if (this.mTranSurface == null) {
            this.mTranSurface = new TranSurface();
        }
        return this.mTranSurface;
    }

    @Override
    public int setBuffersFormatOverride(Surface surface, int i) {
        return getTranSurfaceImpl().setBuffersFormatOverride(surface, i);
    }
}
