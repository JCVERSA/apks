package com.transsion.hubsdk.api.view;

import android.content.res.Configuration;
import android.view.SurfaceControl;
import android.view.WindowlessWindowManager;
import android.window.InputTransferToken;

public class TranWindowlessWindowManager extends WindowlessWindowManager {
    public TranWindowlessWindowManager(Configuration configuration, SurfaceControl surfaceControl, InputTransferToken inputTransferToken) {
        super(configuration, surfaceControl, inputTransferToken);
    }
}
