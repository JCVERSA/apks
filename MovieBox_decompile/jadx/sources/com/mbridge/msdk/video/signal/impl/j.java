package com.mbridge.msdk.video.signal.impl;

import android.app.Activity;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;

public class j extends c {

    private Activity f39003b;

    private MBridgeBTContainer f39004c;

    public j(Activity activity, MBridgeBTContainer mBridgeBTContainer) {
        this.f39003b = activity;
        this.f39004c = mBridgeBTContainer;
    }

    @Override
    public void reactDeveloper(Object obj, String str) {
        super.reactDeveloper(obj, str);
        MBridgeBTContainer mBridgeBTContainer = this.f39004c;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.reactDeveloper(obj, str);
        }
    }

    @Override
    public void reportUrls(Object obj, String str) {
        super.reportUrls(obj, str);
        MBridgeBTContainer mBridgeBTContainer = this.f39004c;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.reportUrls(obj, str);
        } else {
            com.mbridge.msdk.video.bt.component.d.c().c(obj, str);
        }
    }
}
